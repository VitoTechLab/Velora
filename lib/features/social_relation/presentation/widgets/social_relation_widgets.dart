import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/features/social_relation/presentation/bloc/social_relation_bloc.dart';
import 'package:velora/features/social_relation/presentation/bloc/social_relation_event.dart';
import 'package:velora/features/social_relation/presentation/bloc/social_relation_state.dart';

/// Example: Follow button widget with HookWidget
class FollowButton extends HookWidget {
  final String targetUserId;
  final bool isPrivateAccount;
  final bool initialIsFollowing;
  final bool initialHasRequest;

  const FollowButton({
    super.key,
    required this.targetUserId,
    required this.isPrivateAccount,
    this.initialIsFollowing = false,
    this.initialHasRequest = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SocialRelationBloc, SocialRelationState>(
      builder: (context, state) {
        final isFollowing = state.isFollowing || initialIsFollowing;
        final hasRequest = state.hasFollowRequestPending || initialHasRequest;
        final isLoading = state.isLoadingFollow || state.isLoadingRequests;

        return ElevatedButton(
          onPressed: isLoading
              ? null
              : () => _handleFollowToggle(context, isFollowing, hasRequest),
          style: ElevatedButton.styleFrom(
            backgroundColor: isFollowing
                ? Colors.grey[300]
                : Theme.of(context).primaryColor,
            foregroundColor: isFollowing ? Colors.black : Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          child: isLoading
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Text(_getButtonText(isFollowing, hasRequest)),
        );
      },
    );
  }

  String _getButtonText(bool isFollowing, bool hasRequest) {
    if (isFollowing) return 'Following';
    if (hasRequest) return 'Requested';
    return 'Follow';
  }

  void _handleFollowToggle(
    BuildContext context,
    bool isFollowing,
    bool hasRequest,
  ) {
    final bloc = context.read<SocialRelationBloc>();

    if (isFollowing) {
      // Unfollow
      bloc.add(SocialRelationEvent.unfollowUser(targetUserId));
    } else if (hasRequest) {
      // Cancel request
      bloc.add(SocialRelationEvent.cancelFollowRequest(targetUserId));
    } else {
      // Follow or send request
      if (isPrivateAccount) {
        bloc.add(SocialRelationEvent.sendFollowRequest(targetUserId));
      } else {
        bloc.add(SocialRelationEvent.followUser(targetUserId));
      }
    }
  }
}

/// Example: Blocked users list screen
class BlockedUsersScreen extends HookWidget {
  const BlockedUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<SocialRelationBloc>().add(
        const SocialRelationEvent.loadBlockedUsers(),
      );
      return null;
    }, const []);

    return Scaffold(
      appBar: AppBar(title: const Text('Blocked Users')),
      body: BlocBuilder<SocialRelationBloc, SocialRelationState>(
        builder: (context, state) {
          if (state.isLoadingBlock && state.blockedUsers.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.errorBlock != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.errorBlock!),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<SocialRelationBloc>().add(
                        const SocialRelationEvent.loadBlockedUsers(),
                      );
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          if (state.blockedUsers.isEmpty) {
            return const Center(child: Text('No blocked users'));
          }

          return ListView.builder(
            itemCount: state.blockedUsers.length,
            itemBuilder: (context, index) {
              final user = state.blockedUsers[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: user.blockedPhotoUrl != null
                      ? NetworkImage(user.blockedPhotoUrl!)
                      : null,
                  child: user.blockedPhotoUrl == null
                      ? const Icon(Icons.person)
                      : null,
                ),
                title: Text(user.blockedUsername ?? 'Unknown'),
                subtitle: Text(user.blockedFullName ?? ''),
                trailing: ElevatedButton(
                  onPressed: state.isLoadingBlock
                      ? null
                      : () {
                          context.read<SocialRelationBloc>().add(
                            SocialRelationEvent.unblockUser(user.blockedId),
                          );
                        },
                  child: const Text('Unblock'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

/// Example: Follow requests screen
class FollowRequestsScreen extends HookWidget {
  const FollowRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<SocialRelationBloc>().add(
        const SocialRelationEvent.loadPendingFollowRequests(),
      );
      return null;
    }, const []);

    return Scaffold(
      appBar: AppBar(title: const Text('Follow Requests')),
      body: BlocBuilder<SocialRelationBloc, SocialRelationState>(
        builder: (context, state) {
          if (state.isLoadingRequests && state.pendingRequests.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.pendingRequests.isEmpty) {
            return const Center(child: Text('No pending requests'));
          }

          return ListView.builder(
            itemCount: state.pendingRequests.length,
            itemBuilder: (context, index) {
              final request = state.pendingRequests[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: request.requesterPhotoUrl != null
                      ? NetworkImage(request.requesterPhotoUrl!)
                      : null,
                  child: request.requesterPhotoUrl == null
                      ? const Icon(Icons.person)
                      : null,
                ),
                title: Text(request.requesterUsername ?? 'Unknown'),
                subtitle: Text(request.requesterFullName ?? ''),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: state.isLoadingRequests
                          ? null
                          : () {
                              context.read<SocialRelationBloc>().add(
                                SocialRelationEvent.acceptFollowRequest(
                                  request.requesterId,
                                ),
                              );
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Accept'),
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: state.isLoadingRequests
                          ? null
                          : () {
                              context.read<SocialRelationBloc>().add(
                                SocialRelationEvent.rejectFollowRequest(
                                  request.requesterId,
                                ),
                              );
                            },
                      child: const Text('Reject'),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
