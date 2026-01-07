import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/errors/exceptions.dart';

Future<void> handleEither<T, S>(
  Emitter<S> emit,
  Future<Either<AppException, T>> Function() action, {
  S? successState,
  S Function(T result)? successMapper,
}) async {
  emit(
    successState ??= throw Exception("Provide successState or successMapper"),
  );
  final result = await action();
  result.fold(
    (failure) => emit((S as dynamic).copyWith(error: failure.message)),
    (data) {
      if (successMapper != null) {
        emit(successMapper(data));
      } else if (successState != null) {
        emit(successState);
      }
    },
  );
}
