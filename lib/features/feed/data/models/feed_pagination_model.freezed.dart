// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedPaginationModel _$FeedPaginationModelFromJson(Map<String, dynamic> json) {
  return _FeedPaginationModel.fromJson(json);
}

/// @nodoc
mixin _$FeedPaginationModel {
  List<FeedModel> get posts => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _feedCursorFromJson, toJson: _feedCursorToJson)
  FeedCursor? get nextCursor => throw _privateConstructorUsedError;

  /// Serializes this FeedPaginationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedPaginationModelCopyWith<FeedPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedPaginationModelCopyWith<$Res> {
  factory $FeedPaginationModelCopyWith(
          FeedPaginationModel value, $Res Function(FeedPaginationModel) then) =
      _$FeedPaginationModelCopyWithImpl<$Res, FeedPaginationModel>;
  @useResult
  $Res call(
      {List<FeedModel> posts,
      bool hasMore,
      @JsonKey(fromJson: _feedCursorFromJson, toJson: _feedCursorToJson)
      FeedCursor? nextCursor});

  $FeedCursorCopyWith<$Res>? get nextCursor;
}

/// @nodoc
class _$FeedPaginationModelCopyWithImpl<$Res, $Val extends FeedPaginationModel>
    implements $FeedPaginationModelCopyWith<$Res> {
  _$FeedPaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? hasMore = null,
    Object? nextCursor = freezed,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as FeedCursor?,
    ) as $Val);
  }

  /// Create a copy of FeedPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedCursorCopyWith<$Res>? get nextCursor {
    if (_value.nextCursor == null) {
      return null;
    }

    return $FeedCursorCopyWith<$Res>(_value.nextCursor!, (value) {
      return _then(_value.copyWith(nextCursor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedPaginationModelImplCopyWith<$Res>
    implements $FeedPaginationModelCopyWith<$Res> {
  factory _$$FeedPaginationModelImplCopyWith(_$FeedPaginationModelImpl value,
          $Res Function(_$FeedPaginationModelImpl) then) =
      __$$FeedPaginationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FeedModel> posts,
      bool hasMore,
      @JsonKey(fromJson: _feedCursorFromJson, toJson: _feedCursorToJson)
      FeedCursor? nextCursor});

  @override
  $FeedCursorCopyWith<$Res>? get nextCursor;
}

/// @nodoc
class __$$FeedPaginationModelImplCopyWithImpl<$Res>
    extends _$FeedPaginationModelCopyWithImpl<$Res, _$FeedPaginationModelImpl>
    implements _$$FeedPaginationModelImplCopyWith<$Res> {
  __$$FeedPaginationModelImplCopyWithImpl(_$FeedPaginationModelImpl _value,
      $Res Function(_$FeedPaginationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? hasMore = null,
    Object? nextCursor = freezed,
  }) {
    return _then(_$FeedPaginationModelImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as FeedCursor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedPaginationModelImpl extends _FeedPaginationModel {
  const _$FeedPaginationModelImpl(
      {required final List<FeedModel> posts,
      required this.hasMore,
      @JsonKey(fromJson: _feedCursorFromJson, toJson: _feedCursorToJson)
      this.nextCursor})
      : _posts = posts,
        super._();

  factory _$FeedPaginationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedPaginationModelImplFromJson(json);

  final List<FeedModel> _posts;
  @override
  List<FeedModel> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final bool hasMore;
  @override
  @JsonKey(fromJson: _feedCursorFromJson, toJson: _feedCursorToJson)
  final FeedCursor? nextCursor;

  @override
  String toString() {
    return 'FeedPaginationModel(posts: $posts, hasMore: $hasMore, nextCursor: $nextCursor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedPaginationModelImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_posts), hasMore, nextCursor);

  /// Create a copy of FeedPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedPaginationModelImplCopyWith<_$FeedPaginationModelImpl> get copyWith =>
      __$$FeedPaginationModelImplCopyWithImpl<_$FeedPaginationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedPaginationModelImplToJson(
      this,
    );
  }
}

abstract class _FeedPaginationModel extends FeedPaginationModel {
  const factory _FeedPaginationModel(
      {required final List<FeedModel> posts,
      required final bool hasMore,
      @JsonKey(fromJson: _feedCursorFromJson, toJson: _feedCursorToJson)
      final FeedCursor? nextCursor}) = _$FeedPaginationModelImpl;
  const _FeedPaginationModel._() : super._();

  factory _FeedPaginationModel.fromJson(Map<String, dynamic> json) =
      _$FeedPaginationModelImpl.fromJson;

  @override
  List<FeedModel> get posts;
  @override
  bool get hasMore;
  @override
  @JsonKey(fromJson: _feedCursorFromJson, toJson: _feedCursorToJson)
  FeedCursor? get nextCursor;

  /// Create a copy of FeedPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedPaginationModelImplCopyWith<_$FeedPaginationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
