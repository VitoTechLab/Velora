import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_message_entrance.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_message_status_icon.dart';

/// Widget for displaying and playing audio messages (voice messages or audio files)
class ChatAudioWidget extends StatefulWidget {
  final String audioUrl;
  final String? caption;
  final String time;
  final bool isSender;
  final bool isRead;
  final double? durationSeconds;
  final bool isVoiceMessage;

  const ChatAudioWidget({
    super.key,
    required this.audioUrl,
    this.caption,
    required this.time,
    required this.isSender,
    this.isRead = false,
    this.durationSeconds,
    this.isVoiceMessage = true,
  });

  @override
  State<ChatAudioWidget> createState() => _ChatAudioWidgetState();
}

class _ChatAudioWidgetState extends State<ChatAudioWidget>
    with SingleTickerProviderStateMixin {
  late AudioPlayer _audioPlayer;
  late AnimationController _waveformController;
  PlayerState _playerState = PlayerState.stopped;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  StreamSubscription<Duration>? _durationSubscription;
  StreamSubscription<Duration>? _positionSubscription;
  StreamSubscription<PlayerState>? _playerStateSubscription;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _waveformController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _initAudioPlayer();
  }

  void _initAudioPlayer() {
    // Set initial duration if provided
    if (widget.durationSeconds != null) {
      _duration = Duration(
        milliseconds: (widget.durationSeconds! * 1000).toInt(),
      );
    }

    _durationSubscription = _audioPlayer.onDurationChanged.listen((duration) {
      if (mounted) {
        setState(() {
          _duration = duration;
        });
      }
    });

    _positionSubscription = _audioPlayer.onPositionChanged.listen((position) {
      if (mounted) {
        setState(() {
          _position = position;
        });
      }
    });

    _playerStateSubscription = _audioPlayer.onPlayerStateChanged.listen((
      state,
    ) {
      if (mounted) {
        setState(() {
          _playerState = state;
          if (state == PlayerState.completed) {
            _position = Duration.zero;
          }
        });
        if (state == PlayerState.playing) {
          _waveformController.repeat();
        } else {
          _waveformController.stop();
        }
      }
    });
  }

  @override
  void dispose() {
    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playerStateSubscription?.cancel();
    _waveformController.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _playPause() async {
    if (_playerState == PlayerState.playing) {
      await _audioPlayer.pause();
    } else {
      setState(() {
        _isLoading = true;
      });
      try {
        await _audioPlayer.play(UrlSource(widget.audioUrl));
      } catch (e) {
        debugPrint('Error playing audio: $e');
      } finally {
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
        }
      }
    }
  }

  Future<void> _seek(double value) async {
    final position = Duration(
      milliseconds: (value * _duration.inMilliseconds).toInt(),
    );
    await _audioPlayer.seek(position);
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final bubbleColor = widget.isSender
        ? colorScheme.primary
        : colorScheme.surfaceContainerHighest;
    final contentColor = widget.isSender
        ? colorScheme.onPrimary
        : colorScheme.onSurface;
    final secondaryContentColor = widget.isSender
        ? colorScheme.onPrimary.withValues(alpha: 0.7)
        : colorScheme.onSurfaceVariant;

    final isPlaying = _playerState == PlayerState.playing;
    final progress = _duration.inMilliseconds > 0
        ? _position.inMilliseconds / _duration.inMilliseconds
        : 0.0;

    return ChatMessageEntrance(
      isSender: widget.isSender,
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 300),
        tween: Tween(begin: 0.0, end: 1.0),
        curve: Curves.easeOutCubic,
        builder: (context, value, child) {
          return Opacity(
            opacity: value,
            child: Transform.scale(
              scale: 0.95 + (0.05 * value),
              alignment: widget.isSender
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: child,
            ),
          );
        },
        child: Container(
          constraints: const BoxConstraints(maxWidth: 280, minWidth: 220),
          margin: EdgeInsets.only(
            left: widget.isSender ? 40 : 8,
            right: widget.isSender ? 8 : 40,
            top: 3,
            bottom: 3,
          ),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: widget.isSender ? colorScheme.primaryContainer : bubbleColor,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(18),
              topRight: const Radius.circular(18),
              bottomLeft: Radius.circular(widget.isSender ? 18 : 4),
              bottomRight: Radius.circular(widget.isSender ? 4 : 18),
            ),
            border: Border.all(
              color: widget.isSender
                  ? colorScheme.primary.withValues(alpha: 0.15)
                  : colorScheme.outline.withValues(alpha: 0.1),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Audio player row
              Row(
                children: [
                  // Play/Pause button
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: widget.isSender
                          ? colorScheme.onPrimaryContainer.withValues(
                              alpha: 0.2,
                            )
                          : colorScheme.primary.withValues(alpha: 0.12),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: widget.isSender
                            ? colorScheme.onPrimaryContainer.withValues(
                                alpha: 0.2,
                              )
                            : colorScheme.primary.withValues(alpha: 0.2),
                        width: 1.5,
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: _isLoading ? null : _playPause,
                        customBorder: const CircleBorder(),
                        child: Center(
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 180),
                            transitionBuilder: (child, animation) {
                              return FadeTransition(
                                opacity: animation,
                                child: ScaleTransition(
                                  scale: animation,
                                  child: child,
                                ),
                              );
                            },
                            child: _isLoading
                                ? SizedBox(
                                    key: const ValueKey('audio_loading'),
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.5,
                                      color: widget.isSender
                                          ? colorScheme.onPrimaryContainer
                                          : colorScheme.primary,
                                    ),
                                  )
                                : Icon(
                                    isPlaying
                                        ? Icons.pause_rounded
                                        : Icons.play_arrow_rounded,
                                    key: ValueKey(isPlaying),
                                    color: widget.isSender
                                        ? colorScheme.onPrimaryContainer
                                        : colorScheme.primary,
                                    size: 26,
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),

                  // Waveform / Progress
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Custom waveform-like progress bar
                        if (widget.isVoiceMessage)
                          _buildWaveformProgress(
                            progress,
                            contentColor,
                            secondaryContentColor,
                          )
                        else
                          _buildLinearProgress(
                            progress,
                            contentColor,
                            secondaryContentColor,
                          ),
                        const SizedBox(height: 4),
                        // Duration
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _formatDuration(_position),
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: secondaryContentColor,
                                fontFeatures: const [
                                  FontFeature.tabularFigures(),
                                ],
                              ),
                            ),
                            Text(
                              _formatDuration(_duration),
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: secondaryContentColor,
                                fontFeatures: const [
                                  FontFeature.tabularFigures(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Caption if exists
              if (widget.caption != null && widget.caption!.isNotEmpty) ...[
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: contentColor.withValues(alpha: 0.15),
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: Text(
                    widget.caption!,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: contentColor,
                      height: 1.4,
                      letterSpacing: 0.15,
                    ),
                  ),
                ),
              ],

              // Time and read status
              const SizedBox(height: 6),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Spacer(),
                  Text(
                    widget.time,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: secondaryContentColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                    ),
                  ),
                  if (widget.isSender) ...[
                    const SizedBox(width: 4),
                    ChatMessageStatusIcon(isRead: widget.isRead),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWaveformProgress(
    double progress,
    Color activeColor,
    Color inactiveColor,
  ) {
    // Generate fake waveform bars for voice message visualization
    const barCount = 30;
    final waveformData = List.generate(barCount, (index) {
      // Create a pattern that looks like a waveform
      final x = index / barCount;
      return 0.3 + 0.7 * (0.5 + 0.5 * _waveformHeight(x));
    });

    return GestureDetector(
      onTapDown: (details) {
        final box = context.findRenderObject() as RenderBox?;
        if (box != null) {
          final localPosition = details.localPosition;
          final width = box.size.width - 60; // Account for button width
          final seekProgress = (localPosition.dx / width).clamp(0.0, 1.0);
          _seek(seekProgress);
        }
      },
      child: AnimatedBuilder(
        animation: _waveformController,
        builder: (context, _) {
          final isPlaying = _playerState == PlayerState.playing;

          return SizedBox(
            height: 28,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(barCount, (index) {
                final barProgress = index / barCount;
                final isActive = barProgress <= progress;
                final pulse = isPlaying
                    ? 0.9 +
                          (0.14 *
                              _waveformHeight(
                                (index / barCount) + _waveformController.value,
                              ))
                    : 1.0;
                final height = (waveformData[index] * 24 * pulse)
                    .clamp(5.0, 27.0)
                    .toDouble();

                return Expanded(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 140),
                    margin: const EdgeInsets.symmetric(horizontal: 0.8),
                    height: height,
                    decoration: BoxDecoration(
                      gradient: isActive
                          ? LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                activeColor,
                                activeColor.withValues(alpha: 0.7),
                              ],
                            )
                          : null,
                      color: isActive
                          ? null
                          : inactiveColor.withValues(alpha: 0.38),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                );
              }),
            ),
          );
        },
      ),
    );
  }

  double _waveformHeight(double x) {
    // Simulate a voice waveform pattern
    return (0.5 +
            0.3 * _sin(x * 12) +
            0.2 * _sin(x * 24 + 0.5) +
            0.15 * _sin(x * 48 + 1))
        .clamp(0.1, 1.0);
  }

  double _sin(double x) {
    // Simple sine approximation
    x = x % (2 * 3.14159);
    return (x < 3.14159)
        ? (4 * x * (3.14159 - x) / (3.14159 * 3.14159))
        : (-4 * (x - 3.14159) * (2 * 3.14159 - x) / (3.14159 * 3.14159));
  }

  Widget _buildLinearProgress(
    double progress,
    Color activeColor,
    Color inactiveColor,
  ) {
    return GestureDetector(
      onTapDown: (details) {
        final box = context.findRenderObject() as RenderBox?;
        if (box != null) {
          final localPosition = details.localPosition;
          final width = box.size.width - 60; // Account for button width
          final seekProgress = (localPosition.dx / width).clamp(0.0, 1.0);
          _seek(seekProgress);
        }
      },
      child: Container(
        height: 28,
        alignment: Alignment.center,
        child: Container(
          height: 6,
          decoration: BoxDecoration(
            color: inactiveColor.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(3),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.transparent,
              valueColor: AlwaysStoppedAnimation<Color>(activeColor),
              minHeight: 6,
            ),
          ),
        ),
      ),
    );
  }
}
