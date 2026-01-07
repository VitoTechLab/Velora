import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/features/chat/domain/entities/user_search_entity.dart';
import 'package:velora/features/chat/presentation/bloc/search_user_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/search_user_event.dart';
import 'package:velora/features/chat/presentation/bloc/search_user_state.dart';

class SearchFollowUserScreen extends HookWidget {
  const SearchFollowUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return BlocProvider(
      create: (context) =>
          getIt<SearchUserBloc>()
            ..add(const SearchUserEvent.loadFollowedUsers()),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: colorScheme.surface,
            appBar: AppBar(
              backgroundColor: colorScheme.surface,
              title: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search or ask Meta AI',
                  hintStyle: TextStyle(
                    color: colorScheme.onSurfaceVariant.withOpacity(0.6),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  filled: true,
                  fillColor: colorScheme.surfaceContainerHighest,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                ),
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    context.read<SearchUserBloc>().add(
                      SearchUserEvent.searchQueryChanged(value),
                    );
                  }
                },
                onChanged: (value) {
                  if (value.isEmpty) {
                    context.read<SearchUserBloc>().add(
                      const SearchUserEvent.clearSearch(),
                    );
                  }
                },
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    if (searchController.text.isNotEmpty) {
                      context.read<SearchUserBloc>().add(
                        SearchUserEvent.searchQueryChanged(
                          searchController.text,
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
            body: BlocBuilder<SearchUserBloc, SearchUserState>(
              builder: (context, state) {
                // If searching, show search results
                if (state.query.isNotEmpty) {
                  return _buildSearchResults(context, state);
                }

                // Default view with Recent and More Suggestions
                return _buildDefaultView(context, state);
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildSearchResults(BuildContext context, SearchUserState state) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, size: 64, color: colorScheme.error),
              const SizedBox(height: 16),
              Text(
                state.error!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.error,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    if (state.results.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_search, size: 64, color: colorScheme.outline),
              const SizedBox(height: 16),
              Text('Tidak ada hasil', style: theme.textTheme.titleMedium),
              const SizedBox(height: 8),
              Text(
                'Coba kata kunci lain dari pengguna yang Anda ikuti',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: state.results.length,
      itemBuilder: (context, index) {
        final user = state.results[index];
        return _buildUserListTile(context, user);
      },
    );
  }

  Widget _buildDefaultView(BuildContext context, SearchUserState state) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (state.isLoadingFollowed) {
      return const Center(child: CircularProgressIndicator());
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Recent Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Clear recent searches
                  },
                  child: Text(
                    'Edit',
                    style: TextStyle(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (state.recentSearches.isEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text(
                  'No recent searches',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            )
          else
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: state.recentSearches.length,
                itemBuilder: (context, index) {
                  final user = state.recentSearches[index];
                  return _buildRecentUserCircle(context, user);
                },
              ),
            ),
          const Divider(height: 1),

          // More Suggestions Section
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'More suggestions',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: See all followed users
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (state.followedUsers.isEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text(
                  'No followed users found',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            )
          else
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.followedUsers.length,
              itemBuilder: (context, index) {
                final user = state.followedUsers[index];
                return _buildUserListTile(context, user);
              },
            ),
        ],
      ),
    );
  }

  Widget _buildRecentUserCircle(BuildContext context, UserSearchEntity user) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: InkWell(
        onTap: () {
          // TODO: Navigate to user profile or create chat
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Open chat with ${user.username}')),
          );
        },
        borderRadius: BorderRadius.circular(32),
        child: SizedBox(
          width: 80,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 32,
                backgroundImage: user.avatarUrl != null
                    ? NetworkImage(user.avatarUrl!)
                    : null,
                child: user.avatarUrl == null
                    ? Text(
                        user.username[0].toUpperCase(),
                        style: theme.textTheme.titleLarge,
                      )
                    : null,
              ),
              const SizedBox(height: 4),
              Text(
                user.username,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserListTile(BuildContext context, UserSearchEntity user) {
    final theme = Theme.of(context);
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: CircleAvatar(
        radius: 28,
        backgroundImage: user.avatarUrl != null
            ? NetworkImage(user.avatarUrl!)
            : null,
        child: user.avatarUrl == null
            ? Text(
                user.username[0].toUpperCase(),
                style: theme.textTheme.titleMedium,
              )
            : null,
      ),
      title: Text(
        user.username,
        style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
      ),
      subtitle: user.bio != null
          ? Text(
              user.bio!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            )
          : null,
      onTap: () {
        // TODO: Navigate to user profile or create chat
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Open chat with ${user.username}')),
        );
      },
    );
  }
}
