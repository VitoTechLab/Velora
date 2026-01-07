import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/user_search_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

/// Use case for searching users that current user follows
class SearchFollowedUsers {
  SearchFollowedUsers(this.repository);

  final ChatRepository repository;

  Future<Either<Failure, List<UserSearchEntity>>> call({
    required String query,
    int limit = 20,
  }) {
    return repository.searchFollowedUsers(query: query, limit: limit);
  }
}
