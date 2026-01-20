// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_pagination_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedPaginationResult {
  List<FeedEntity> get posts => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  FeedCursorEntity? get cursor => throw _privateConstructorUsedError;

  /// Create a copy of FeedPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedPaginationResultCopyWith<FeedPaginationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedPaginationResultCopyWith<$Res> {
  factory $FeedPaginationResultCopyWith(FeedPaginationResult value,
          $Res Function(FeedPaginationResult) then) =
      _$FeedPaginationResultCopyWithImpl<$Res, FeedPaginationResult>;
  @useResult
  $Res call({List<FeedEntity> posts, bool hasMore, FeedCursorEntity? cursor});
}

/// @nodoc
class _$FeedPaginationResultCopyWithImpl<$Res,
        $Val extends FeedPaginationResult>
    implements $FeedPaginationResultCopyWith<$Res> {
  _$FeedPaginationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? hasMore = null,
    Object? cursor = freezed,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<FeedEntity>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as FeedCursorEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedPaginationResultImplCopyWith<$Res>
    implements $FeedPaginationResultCopyWith<$Res> {
  factory _$$FeedPaginationResultImplCopyWith(_$FeedPaginationResultImpl value,
          $Res Function(_$FeedPaginationResultImpl) then) =
      __$$FeedPaginationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FeedEntity> posts, bool hasMore, FeedCursorEntity? cursor});
}

/// @nodoc
class __$$FeedPaginationResultImplCopyWithImpl<$Res>
    extends _$FeedPaginationResultCopyWithImpl<$Res, _$FeedPaginationResultImpl>
    implements _$$FeedPaginationResultImplCopyWith<$Res> {
  __$$FeedPaginationResultImplCopyWithImpl(_$FeedPaginationResultImpl _value,
      $Res Function(_$FeedPaginationResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? hasMore = null,
    Object? cursor = freezed,
  }) {
    return _then(_$FeedPaginationResultImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<FeedEntity>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as FeedCursorEntity?,
    ));
  }
}

/// @nodoc

class _$FeedPaginationResultImpl implements _FeedPaginationResult {
  const _$FeedPaginationResultImpl(
      {required final List<FeedEntity> posts,
      required this.hasMore,
      this.cursor})
      : _posts = posts;

  final List<FeedEntity> _posts;
  @override
  List<FeedEntity> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final bool hasMore;
  @override
  final FeedCursorEntity? cursor;

  @override
  String toString() {
    return 'FeedPaginationResult(posts: $posts, hasMore: $hasMore, cursor: $cursor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedPaginationResultImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.cursor, cursor) || other.cursor == cursor));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_posts), hasMore, cursor);

  /// Create a copy of FeedPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedPaginationResultImplCopyWith<_$FeedPaginationResultImpl>
      get copyWith =>
          __$$FeedPaginationResultImplCopyWithImpl<_$FeedPaginationResultImpl>(
              this, _$identity);
}

abstract class _FeedPaginationResult implements FeedPaginationResult {
  const factory _FeedPaginationResult(
      {required final List<FeedEntity> posts,
      required final bool hasMore,
      final FeedCursorEntity? cursor}) = _$FeedPaginationResultImpl;

  @override
  List<FeedEntity> get posts;
  @override
  bool get hasMore;
  @override
  FeedCursorEntity? get cursor;

  /// Create a copy of FeedPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedPaginationResultImplCopyWith<_$FeedPaginationResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
