import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart';
import 'package:velora/features/feed/presentation/bloc/feed_state.dart';
import 'package:velora/features/navigation/models/chat_detail_args.dart';
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_event.dart';
import 'package:velora/features/profile/presentation/bloc/profile_state.dart';
import 'package:velora/features/profile/presentation/widgets/organisms/profile_impact_body.dart';
import 'package:velora/routes/app_router.dart';

class OtherUserProfileScreen extends StatelessWidget {
  const OtherUserProfileScreen({
    super.key,
    required this.userId,
  });

  final String userId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<ProfileBloc>()..add(LoadProfileEvent(userId: userId)),
        ),
        BlocProvider(
          create: (_) => getIt<FeedBloc>()
            ..add(FeedEvent.loadInitialFeed(limit: 20, userId: userId)),
        ),
      ],
      child: _OtherUserProfileContent(userId: userId),
    );
  }
}

class _OtherUserProfileContent extends HookWidget {
  const _OtherUserProfileContent({required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 4);

    Future<void> refresh() async {
      context.read<ProfileBloc>().add(LoadProfileEvent(userId: userId));
      context.read<FeedBloc>().add(
            FeedEvent.loadInitialFeed(limit: 20, userId: userId),
          );
    }

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, profileState) {
        return BlocBuilder<FeedBloc, FeedState>(
          builder: (context, feedState) {
            final profile = profileState.profile;
            final reports = feedState.posts;

            return ProfileImpactBody(
              tabController: tabController,
              profile: profile,
              reports: reports,
              isMe: false,
              isFollowing: profileState.isFollowing,
              isFollowRequestPending: profileState.isFollowRequestPending,
              isLoading:
                  profileState.isLoading || feedState.isLoadingInitial,
              error: profileState.error ?? feedState.errorFeed,
              onRefresh: refresh,
              onCreateReport: null,
              onEditProfile: null,
              onSettings: null,
              onFollowToggle: profile == null
                  ? null
                  : () {
                      context.read<ProfileBloc>().add(
                            ToggleFollowEvent(
                              targetUserId: profile.id,
                              isPrivate: profile.isPrivate,
                            ),
                          );
                    },
              onMessage: profile == null
                  ? null
                  : () {
                      context.pushNamed(
                        AppRouteName.chatDetail,
                        extra: ChatDetailArgs(
                          conversationId: '',
                          chatName: profile.fullName ?? profile.username,
                          chatSubtitle: '@${profile.username}',
                          profileImageUrl: profile.avatarUrl ?? '',
                          isGroup: false,
                          peerUserId: profile.id,
                        ),
                      );
                    },
              onReportTap: (index) {
                context.pushNamed(
                  AppRouteName.userPosts,
                  pathParameters: {'userId': profile?.id ?? userId},
                  queryParameters: {
                    'index': index.toString(),
                    'username': profile?.username ?? '',
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
