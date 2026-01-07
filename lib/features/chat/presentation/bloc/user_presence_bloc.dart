import 'dart:async';
import 'package:velora/core/utils/log_alias.dart';
import 'dart:math';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_event.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_state.dart';

class UserPresenceBloc extends Bloc<UserPresenceEvent, UserPresenceState>
    with WidgetsBindingObserver {
  UserPresenceBloc({
    required this.chatRepository,
    required this.supabaseClient,
    Connectivity? connectivity,
    this.baseInterval = const Duration(seconds: 60),
    this.maxBackoff = const Duration(minutes: 2),
    this.jitterSeconds = 8,
  }) : _connectivity = connectivity ?? Connectivity(),
       super(const UserPresenceState()) {
    on<UserPresenceEvent>((event, emit) async {
      await event.map(
        started: (e) => _onStarted(e, emit),
        heartbeatTick: (e) => _onHeartbeatTick(e, emit),
        connectivityChanged: (e) => _onConnectivityChanged(e, emit),
        appLifecycleChanged: (e) => _onAppLifecycleChanged(e, emit),
        presenceUpdated: (e) => _onPresenceUpdated(e, emit),
        fetchLastSeen: (e) => _onFetchLastSeen(e, emit),
      );
    });

    WidgetsBinding.instance.addObserver(this);
    add(const UserPresenceEvent.started());
  }

  final ChatRepository chatRepository;
  final SupabaseClient supabaseClient;
  final Connectivity _connectivity;

  final Duration baseInterval;
  final Duration maxBackoff;
  final int jitterSeconds;

  Timer? _heartbeatTimer;
  StreamSubscription? _connSub;
  StreamSubscription? _presenceSub;

  bool _isForeground = true;
  bool _isOnline = true;
  int _failCount = 0;

  // ---------------------------------------------------------------------------
  // Lifecycle
  // ---------------------------------------------------------------------------

  @override
  Future<void> close() {
    WidgetsBinding.instance.removeObserver(this);
    _heartbeatTimer?.cancel();
    _connSub?.cancel();
    _presenceSub?.cancel();
    return super.close();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    add(UserPresenceEvent.appLifecycleChanged(state));
  }

  // ---------------------------------------------------------------------------
  // Event Handlers
  // ---------------------------------------------------------------------------

  Future<void> _onStarted(
    Started event,
    Emitter<UserPresenceState> emit,
  ) async {
    try {
      logi('UserPresence started', tag: 'UserPresenceBloc');

      // ---- Connectivity ----
      _connSub = _connectivity.onConnectivityChanged.listen(
        (results) {
          final isOnline =
              results.isNotEmpty && !results.contains(ConnectivityResult.none);
          add(UserPresenceEvent.connectivityChanged(isOnline));
        },
        onError: (e, s) {
          loge(
            'Connectivity stream error',
            tag: 'UserPresenceBloc',
            error: e,
            stackTrace: s,
          );
        },
      );

      // ---- Presence Watch ----
      final myUserId = supabaseClient.auth.currentUser?.id;
      if (myUserId == null) {
        logi(
          'User not logged in, skip presence watch',
          tag: 'UserPresenceBloc',
        );
        return;
      }

      _presenceSub = chatRepository
          .watchUserPresence(myUserId: myUserId)
          .listen(
            (result) {
              result.fold(
                (l) => loge(
                  'watchUserPresence failed',
                  tag: 'UserPresenceBloc',
                  error: l,
                ),
                (users) => add(UserPresenceEvent.presenceUpdated(users)),
              );
            },
            onError: (e, s) {
              loge(
                'Presence stream crashed',
                tag: 'UserPresenceBloc',
                error: e,
                stackTrace: s,
              );
            },
          );

      // ---- Start heartbeat ----
      add(const UserPresenceEvent.heartbeatTick());
    } catch (e, s) {
      loge(
        'onStarted crashed',
        tag: 'UserPresenceBloc',
        error: e,
        stackTrace: s,
      );
    }
  }

  Future<void> _onHeartbeatTick(
    HeartbeatTick event,
    Emitter<UserPresenceState> emit,
  ) async {
    if (!_isForeground) return;

    if (!_isOnline) {
      _scheduleNextHeartbeat();
      return;
    }

    try {
      final result = await chatRepository.sendHeartbeat();
      result.fold(
        (l) {
          loge('sendHeartbeat failed', tag: 'UserPresenceBloc', error: l);
          _failCount = min(_failCount + 1, 10);
        },
        (_) {
          _failCount = 0;
        },
      );
    } catch (e, s) {
      loge(
        'sendHeartbeat crashed',
        tag: 'UserPresenceBloc',
        error: e,
        stackTrace: s,
      );
      _failCount = min(_failCount + 1, 10);
    }

    _scheduleNextHeartbeat();
  }

  void _scheduleNextHeartbeat() {
    _heartbeatTimer?.cancel();

    final jitter = Duration(seconds: Random().nextInt(jitterSeconds + 1));
    final seconds = _failCount == 0
        ? baseInterval.inSeconds
        : min(pow(2, _failCount).toInt() * 2, maxBackoff.inSeconds);

    _heartbeatTimer = Timer(Duration(seconds: seconds) + jitter, () {
      add(const UserPresenceEvent.heartbeatTick());
    });
  }

  Future<void> _onConnectivityChanged(
    ConnectivityChanged event,
    Emitter<UserPresenceState> emit,
  ) async {
    _isOnline = event.isOnline;
    logi('Connectivity changed: $_isOnline', tag: 'UserPresenceBloc');

    if (_isOnline && _isForeground) {
      add(const UserPresenceEvent.heartbeatTick());
    }
  }

  Future<void> _onAppLifecycleChanged(
    AppLifecycleChanged event,
    Emitter<UserPresenceState> emit,
  ) async {
    _isForeground = event.state == AppLifecycleState.resumed;

    logi('App lifecycle: ${event.state}', tag: 'UserPresenceBloc');

    if (_isForeground) {
      add(const UserPresenceEvent.heartbeatTick());
    } else {
      _heartbeatTimer?.cancel();
    }
  }

  Future<void> _onPresenceUpdated(
    PresenceUpdated event,
    Emitter<UserPresenceState> emit,
  ) async {
    try {
      final newOnlineMap = Map<String, bool>.from(state.onlineUsers);
      final newLastSeen = Map<String, DateTime>.from(state.lastSeen);

      for (final user in event.onlineUsers) {
        newOnlineMap[user.userId] = user.isOnline;
        if (user.lastSeenAt != null) {
          newLastSeen[user.userId] = user.lastSeenAt!;
        }
      }

      emit(state.copyWith(onlineUsers: newOnlineMap, lastSeen: newLastSeen));
    } catch (e, s) {
      loge(
        'presenceUpdated crashed',
        tag: 'UserPresenceBloc',
        error: e,
        stackTrace: s,
      );
    }
  }

  Future<void> _onFetchLastSeen(
    FetchLastSeen event,
    Emitter<UserPresenceState> emit,
  ) async {
    try {
      final result = await chatRepository.fetchLastSeenStatus(
        userIds: event.userIds,
      );

      result.fold(
        (l) => loge('fetchLastSeen failed', tag: 'UserPresenceBloc', error: l),
        (users) {
          final newLastSeen = Map<String, DateTime>.from(state.lastSeen);

          for (final user in users) {
            if (user.lastSeenAt != null) {
              newLastSeen[user.userId] = user.lastSeenAt!;
            }
          }

          emit(state.copyWith(lastSeen: newLastSeen));
        },
      );
    } catch (e, s) {
      loge(
        'fetchLastSeen crashed',
        tag: 'UserPresenceBloc',
        error: e,
        stackTrace: s,
      );
    }
  }
}
