import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import '../entities/mention_entity.dart';
import '../repositories/mention_repository.dart';

class GetMyMentionsUseCase {
  GetMyMentionsUseCase({required this.repository});

  final MentionRepository repository;

  Future<Either<Failure, List<MentionEntity>>> call({
    int page = 1,
    int limit = 20,
  }) async {
    return await repository.getMyMentions(page: page, limit: limit);
  }
}
