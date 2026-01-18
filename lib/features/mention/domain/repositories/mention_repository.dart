import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import '../entities/mention_entity.dart';

abstract class MentionRepository {
  Future<Either<Failure, List<MentionEntity>>> getMyMentions({
    int page = 1,
    int limit = 20,
  });

  Future<Either<Failure, List<MentionEntity>>> getMentionsForEntity({
    required String entityType,
    required String entityId,
  });
}
