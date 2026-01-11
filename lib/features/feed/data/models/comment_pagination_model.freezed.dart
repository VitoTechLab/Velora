// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentPaginationModel _$CommentPaginationModelFromJson(
    Map<String, dynamic> json) {
  return _CommentPaginationModel.fromJson(json);
}

/// @nodoc
mixin _$CommentPaginationModel {
  List<CommentModel> get comments => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
  CommentCursor? get nextCursor => throw _privateConstructorUsedError;

  /// Serializes this CommentPaginationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentPaginationModelCopyWith<CommentPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPaginationModelCopyWith<$Res> {
  factory $CommentPaginationModelCopyWith(CommentPaginationModel value,
          $Res Function(CommentPaginationModel) then) =
      _$CommentPaginationModelCopyWithImpl<$Res, CommentPaginationModel>;
  @useResult
  $Res call(
      {List<CommentModel> comments,
      bool hasMore,
      @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
      CommentCursor? nextCursor});

  $CommentCursorCopyWith<$Res>? get nextCursor;
}

/// @nodoc
class _$CommentPaginationModelCopyWithImpl<$Res,
        $Val extends CommentPaginationModel>
    implements $CommentPaginationModelCopyWith<$Res> {
  _$CommentPaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? hasMore = null,
    Object? nextCursor = freezed,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as CommentCursor?,
    ) as $Val);
  }

  /// Create a copy of CommentPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentCursorCopyWith<$Res>? get nextCursor {
    if (_value.nextCursor == null) {
      return null;
    }

    return $CommentCursorCopyWith<$Res>(_value.nextCursor!, (value) {
      return _then(_value.copyWith(nextCursor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentPaginationModelImplCopyWith<$Res>
    implements $CommentPaginationModelCopyWith<$Res> {
  factory _$$CommentPaginationModelImplCopyWith(
          _$CommentPaginationModelImpl value,
          $Res Function(_$CommentPaginationModelImpl) then) =
      __$$CommentPaginationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CommentModel> comments,
      bool hasMore,
      @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
      CommentCursor? nextCursor});

  @override
  $CommentCursorCopyWith<$Res>? get nextCursor;
}

/// @nodoc
class __$$CommentPaginationModelImplCopyWithImpl<$Res>
    extends _$CommentPaginationModelCopyWithImpl<$Res,
        _$CommentPaginationModelImpl>
    implements _$$CommentPaginationModelImplCopyWith<$Res> {
  __$$CommentPaginationModelImplCopyWithImpl(
      _$CommentPaginationModelImpl _value,
      $Res Function(_$CommentPaginationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? hasMore = null,
    Object? nextCursor = freezed,
  }) {
    return _then(_$CommentPaginationModelImpl(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as CommentCursor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentPaginationModelImpl extends _CommentPaginationModel {
  const _$CommentPaginationModelImpl(
      {required final List<CommentModel> comments,
      required this.hasMore,
      @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
      this.nextCursor})
      : _comments = comments,
        super._();

  factory _$CommentPaginationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentPaginationModelImplFromJson(json);

  final List<CommentModel> _comments;
  @override
  List<CommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final bool hasMore;
  @override
  @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
  final CommentCursor? nextCursor;

  @override
  String toString() {
    return 'CommentPaginationModel(comments: $comments, hasMore: $hasMore, nextCursor: $nextCursor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentPaginationModelImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_comments), hasMore, nextCursor);

  /// Create a copy of CommentPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentPaginationModelImplCopyWith<_$CommentPaginationModelImpl>
      get copyWith => __$$CommentPaginationModelImplCopyWithImpl<
          _$CommentPaginationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentPaginationModelImplToJson(
      this,
    );
  }
}

abstract class _CommentPaginationModel extends CommentPaginationModel {
  const factory _CommentPaginationModel(
      {required final List<CommentModel> comments,
      required final bool hasMore,
      @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
      final CommentCursor? nextCursor}) = _$CommentPaginationModelImpl;
  const _CommentPaginationModel._() : super._();

  factory _CommentPaginationModel.fromJson(Map<String, dynamic> json) =
      _$CommentPaginationModelImpl.fromJson;

  @override
  List<CommentModel> get comments;
  @override
  bool get hasMore;
  @override
  @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
  CommentCursor? get nextCursor;

  /// Create a copy of CommentPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentPaginationModelImplCopyWith<_$CommentPaginationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
