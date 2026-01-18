import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import '../entities/mention_entity.dart';
import '../repositories/mention_repository.dart';

class GetEntityMentionsUseCase {
  GetEntityMentionsUseCase({required this.repository});

  final MentionRepository repository;

  Future<Either<Failure, List<MentionEntity>>> call({
    required String entityType,
    required String entityId,
  }) async {
    return await repository.getMentionsForEntity(
      entityType: entityType,
      entityId: entityId,
    );
  }
}
