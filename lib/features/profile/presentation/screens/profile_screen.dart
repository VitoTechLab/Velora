import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart';
import 'package:velora/features/feed/presentation/bloc/feed_state.dart';
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_event.dart';
import 'package:velora/features/profile/presentation/bloc/profile_state.dart';
import 'package:velora/features/profile/presentation/widgets/organisms/profile_impact_body.dart';
import 'package:velora/routes/app_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentUserId = context.watch<AuthBloc>().state.userId;

    if (currentUserId == null) {
      return const Scaffold(
        body: Center(child: Text('Please log in to view your impact profile')),
      );
    }

    return BlocProvider(
      create: (_) => getIt<FeedBloc>()
        ..add(FeedEvent.loadInitialFeed(limit: 20, userId: currentUserId)),
      child: _ProfileScreenContent(userId: currentUserId),
    );
  }
}

class _ProfileScreenContent extends HookWidget {
  const _ProfileScreenContent({required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 4);

    useEffect(() {
      context.read<ProfileBloc>().add(LoadProfileEvent(userId: userId));
      return null;
    }, [userId]);

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
              isMe: true,
              isFollowing: false,
              isFollowRequestPending: false,
              isLoading:
                  profileState.isLoading || feedState.isLoadingInitial,
              error: profileState.error ?? feedState.errorFeed,
              onRefresh: refresh,
              onCreateReport: () => context.pushNamed(AppRouteName.mediaGallery),
              onEditProfile: () {
                context.pushNamed(AppRouteName.settingsEditProfile);
              },
              onSettings: () => context.pushNamed(AppRouteName.settings),
              onFollowToggle: null,
              onMessage: null,
              onReportTap: (index) {
                context.pushNamed(
                  AppRouteName.userPosts,
                  pathParameters: {'userId': userId},
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
