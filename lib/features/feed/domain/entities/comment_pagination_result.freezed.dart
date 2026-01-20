// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_pagination_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentPaginationResult {
  List<CommentEntity> get comments => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  CommentCursorEntity? get cursor => throw _privateConstructorUsedError;

  /// Create a copy of CommentPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentPaginationResultCopyWith<CommentPaginationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPaginationResultCopyWith<$Res> {
  factory $CommentPaginationResultCopyWith(CommentPaginationResult value,
          $Res Function(CommentPaginationResult) then) =
      _$CommentPaginationResultCopyWithImpl<$Res, CommentPaginationResult>;
  @useResult
  $Res call(
      {List<CommentEntity> comments,
      bool hasMore,
      CommentCursorEntity? cursor});
}

/// @nodoc
class _$CommentPaginationResultCopyWithImpl<$Res,
        $Val extends CommentPaginationResult>
    implements $CommentPaginationResultCopyWith<$Res> {
  _$CommentPaginationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? hasMore = null,
    Object? cursor = freezed,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentEntity>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as CommentCursorEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentPaginationResultImplCopyWith<$Res>
    implements $CommentPaginationResultCopyWith<$Res> {
  factory _$$CommentPaginationResultImplCopyWith(
          _$CommentPaginationResultImpl value,
          $Res Function(_$CommentPaginationResultImpl) then) =
      __$$CommentPaginationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CommentEntity> comments,
      bool hasMore,
      CommentCursorEntity? cursor});
}

/// @nodoc
class __$$CommentPaginationResultImplCopyWithImpl<$Res>
    extends _$CommentPaginationResultCopyWithImpl<$Res,
        _$CommentPaginationResultImpl>
    implements _$$CommentPaginationResultImplCopyWith<$Res> {
  __$$CommentPaginationResultImplCopyWithImpl(
      _$CommentPaginationResultImpl _value,
      $Res Function(_$CommentPaginationResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? hasMore = null,
    Object? cursor = freezed,
  }) {
    return _then(_$CommentPaginationResultImpl(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentEntity>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as CommentCursorEntity?,
    ));
  }
}

/// @nodoc

class _$CommentPaginationResultImpl implements _CommentPaginationResult {
  const _$CommentPaginationResultImpl(
      {required final List<CommentEntity> comments,
      required this.hasMore,
      this.cursor})
      : _comments = comments;

  final List<CommentEntity> _comments;
  @override
  List<CommentEntity> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final bool hasMore;
  @override
  final CommentCursorEntity? cursor;

  @override
  String toString() {
    return 'CommentPaginationResult(comments: $comments, hasMore: $hasMore, cursor: $cursor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentPaginationResultImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.cursor, cursor) || other.cursor == cursor));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_comments), hasMore, cursor);

  /// Create a copy of CommentPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentPaginationResultImplCopyWith<_$CommentPaginationResultImpl>
      get copyWith => __$$CommentPaginationResultImplCopyWithImpl<
          _$CommentPaginationResultImpl>(this, _$identity);
}

abstract class _CommentPaginationResult implements CommentPaginationResult {
  const factory _CommentPaginationResult(
      {required final List<CommentEntity> comments,
      required final bool hasMore,
      final CommentCursorEntity? cursor}) = _$CommentPaginationResultImpl;

  @override
  List<CommentEntity> get comments;
  @override
  bool get hasMore;
  @override
  CommentCursorEntity? get cursor;

  /// Create a copy of CommentPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentPaginationResultImplCopyWith<_$CommentPaginationResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
