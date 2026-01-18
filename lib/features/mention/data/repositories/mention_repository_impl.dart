import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/errors/mention_failure.dart';
import 'package:velora/features/mention/domain/entities/mention_entity.dart';
import 'package:velora/features/mention/domain/repositories/mention_repository.dart';
import 'package:velora/features/mention/data/datasources/mention_remote_datasource.dart';

class MentionRepositoryImpl implements MentionRepository {
  MentionRepositoryImpl({required this.remoteDataSource});

  final MentionRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, List<MentionEntity>>> getMyMentions({
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final models =
          await remoteDataSource.getMyMentions(page: page, limit: limit);
      final entities = models.map((m) => m.toEntity()).toList();
      return Right(entities);
    } catch (e) {
      return Left(MentionFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<MentionEntity>>> getMentionsForEntity({
    required String entityType,
    required String entityId,
  }) async {
    try {
      final models = await remoteDataSource.getMentionsForEntity(
        entityType: entityType,
        entityId: entityId,
      );
      final entities = models.map((m) => m.toEntity()).toList();
      return Right(entities);
    } catch (e) {
      return Left(MentionFailure.fromException(e));
    }
  }
}
