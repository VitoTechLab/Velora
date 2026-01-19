import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:velora/features/profile/data/models/user_profile_model.dart';
import 'package:velora/routes/app_router.dart';

class RelationDetailScreen extends StatefulWidget {
  final String userId;
  final int initialTab;

  const RelationDetailScreen({
    super.key,
    required this.userId,
    this.initialTab = 0,
  });

  @override
  State<RelationDetailScreen> createState() => _RelationDetailScreenState();
}

class _RelationDetailScreenState extends State<RelationDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isLoadingFollowers = true;
  bool _isLoadingFollowing = true;
  List<UserProfileModel> _followers = [];
  List<UserProfileModel> _following = [];
  String? _error;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: widget.initialTab,
    );
    _loadData();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _loadData() async {
    await Future.wait([
      _loadFollowers(),
      _loadFollowing(),
    ]);
  }

  Future<void> _loadFollowers() async {
    setState(() {
      _isLoadingFollowers = true;
      _error = null;
    });

    try {
      final datasource = getIt<ProfileRemoteDataSource>();
      final response = await datasource.getFollowers(widget.userId);
      setState(() {
        _followers = response;
        _isLoadingFollowers = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoadingFollowers = false;
      });
    }
  }

  Future<void> _loadFollowing() async {
    setState(() {
      _isLoadingFollowing = true;
      _error = null;
    });

    try {
      final datasource = getIt<ProfileRemoteDataSource>();
      final response = await datasource.getFollowing(widget.userId);
      setState(() {
        _following = response;
        _isLoadingFollowing = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoadingFollowing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: const BackButton(),
        title: Text(
          'Connections',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: colorScheme.primary,
          unselectedLabelColor: colorScheme.onSurfaceVariant,
          indicatorColor: colorScheme.primary,
          indicatorWeight: 2,
          labelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          tabs: [
            Tab(text: 'Followers (${_followers.length})'),
            Tab(text: 'Following (${_following.length})'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Followers Tab
          _buildUserList(
            users: _followers,
            isLoading: _isLoadingFollowers,
            onRefresh: _loadFollowers,
          ),

          // Following Tab
          _buildUserList(
            users: _following,
            isLoading: _isLoadingFollowing,
            onRefresh: _loadFollowing,
          ),
        ],
      ),
    );
  }

  Widget _buildUserList({
    required List<UserProfileModel> users,
    required bool isLoading,
    required Future<void> Function() onRefresh,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, size: 64, color: colorScheme.error),
            const SizedBox(height: 16),
            Text(
              _error!,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.error,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onRefresh,
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (users.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.people_outline,
              size: 64,
              color: colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: 16),
            Text(
              'No users found',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return _UserListItem(user: user);
        },
      ),
    );
  }
}

class _UserListItem extends StatelessWidget {
  final UserProfileModel user;

  const _UserListItem({required this.user});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          context.pushNamed(
            AppRouteName.userProfile,
            pathParameters: {'userId': user.id},
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              // Avatar
              CircleAvatar(
                radius: 24,
                backgroundColor: colorScheme.surfaceContainerHighest,
                backgroundImage: user.avatarUrl != null
                    ? NetworkImage(user.avatarUrl!)
                    : null,
                child: user.avatarUrl == null
                    ? Icon(
                        Icons.person,
                        size: 28,
                        color: colorScheme.onSurfaceVariant,
                      )
                    : null,
              ),
              const SizedBox(width: 12),

              // User info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          user.username,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (user.isVerified == true) ...[
                          const SizedBox(width: 4),
                          Icon(
                            Icons.verified,
                            size: 16,
                            color: colorScheme.primary,
                          ),
                        ],
                      ],
                    ),
                    if (user.fullName?.isNotEmpty == true) ...[
                      const SizedBox(height: 2),
                      Text(
                        user.fullName!,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ],
                ),
              ),

              // Action button (optional - can be follow button later)
              Icon(
                Icons.chevron_right,
                color: colorScheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
