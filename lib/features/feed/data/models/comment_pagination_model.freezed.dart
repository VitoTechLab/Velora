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
<<<<<<< HEAD

 List<CommentModel> get comments; bool get hasMore;@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) CommentCursorModel? get nextCursor;
/// Create a copy of CommentPaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentPaginationModelCopyWith<CommentPaginationModel> get copyWith => _$CommentPaginationModelCopyWithImpl<CommentPaginationModel>(this as CommentPaginationModel, _$identity);
=======
  List<CommentModel> get comments => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson)
  CommentCursor? get nextCursor => throw _privateConstructorUsedError;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d

  /// Serializes this CommentPaginationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentPaginationModelCopyWith<CommentPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
<<<<<<< HEAD
abstract mixin class $CommentPaginationModelCopyWith<$Res>  {
  factory $CommentPaginationModelCopyWith(CommentPaginationModel value, $Res Function(CommentPaginationModel) _then) = _$CommentPaginationModelCopyWithImpl;
@useResult
$Res call({
 List<CommentModel> comments, bool hasMore,@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) CommentCursorModel? nextCursor
});


$CommentCursorModelCopyWith<$Res>? get nextCursor;
=======
abstract class $CommentPaginationModelCopyWith<$Res> {
  factory $CommentPaginationModelCopyWith(CommentPaginationModel value,
          $Res Function(CommentPaginationModel) then) =
      _$CommentPaginationModelCopyWithImpl<$Res, CommentPaginationModel>;
  @useResult
  $Res call(
      {List<CommentModel> comments,
      bool hasMore,
      @JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson)
      CommentCursor? nextCursor});
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d

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

<<<<<<< HEAD
/// Create a copy of CommentPaginationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comments = null,Object? hasMore = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentModel>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as CommentCursorModel?,
  ));
}
/// Create a copy of CommentPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentCursorModelCopyWith<$Res>? get nextCursor {
    if (_self.nextCursor == null) {
    return null;
  }

  return $CommentCursorModelCopyWith<$Res>(_self.nextCursor!, (value) {
    return _then(_self.copyWith(nextCursor: value));
  });
}
=======
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
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
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
      @JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson)
      CommentCursor? nextCursor});

<<<<<<< HEAD
/// Adds pattern-matching-related methods to [CommentPaginationModel].
extension CommentPaginationModelPatterns on CommentPaginationModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentPaginationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentPaginationModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentPaginationModel value)  $default,){
final _that = this;
switch (_that) {
case _CommentPaginationModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentPaginationModel value)?  $default,){
final _that = this;
switch (_that) {
case _CommentPaginationModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CommentModel> comments,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  CommentCursorModel? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentPaginationModel() when $default != null:
return $default(_that.comments,_that.hasMore,_that.nextCursor);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CommentModel> comments,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  CommentCursorModel? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _CommentPaginationModel():
return $default(_that.comments,_that.hasMore,_that.nextCursor);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CommentModel> comments,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  CommentCursorModel? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _CommentPaginationModel() when $default != null:
return $default(_that.comments,_that.hasMore,_that.nextCursor);case _:
  return null;

}
=======
  @override
  $CommentCursorCopyWith<$Res>? get nextCursor;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
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
      @JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson)
      this.nextCursor})
      : _comments = comments,
        super._();

<<<<<<< HEAD
class _CommentPaginationModel extends CommentPaginationModel {
  const _CommentPaginationModel({required final  List<CommentModel> comments, required this.hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) this.nextCursor}): _comments = comments,super._();
  factory _CommentPaginationModel.fromJson(Map<String, dynamic> json) => _$CommentPaginationModelFromJson(json);

 final  List<CommentModel> _comments;
@override List<CommentModel> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

@override final  bool hasMore;
@override@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) final  CommentCursorModel? nextCursor;

/// Create a copy of CommentPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentPaginationModelCopyWith<_CommentPaginationModel> get copyWith => __$CommentPaginationModelCopyWithImpl<_CommentPaginationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentPaginationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentPaginationModel&&const DeepCollectionEquality().equals(other._comments, _comments)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_comments),hasMore,nextCursor);

@override
String toString() {
  return 'CommentPaginationModel(comments: $comments, hasMore: $hasMore, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$CommentPaginationModelCopyWith<$Res> implements $CommentPaginationModelCopyWith<$Res> {
  factory _$CommentPaginationModelCopyWith(_CommentPaginationModel value, $Res Function(_CommentPaginationModel) _then) = __$CommentPaginationModelCopyWithImpl;
@override @useResult
$Res call({
 List<CommentModel> comments, bool hasMore,@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) CommentCursorModel? nextCursor
});


@override $CommentCursorModelCopyWith<$Res>? get nextCursor;

}
/// @nodoc
class __$CommentPaginationModelCopyWithImpl<$Res>
    implements _$CommentPaginationModelCopyWith<$Res> {
  __$CommentPaginationModelCopyWithImpl(this._self, this._then);

  final _CommentPaginationModel _self;
  final $Res Function(_CommentPaginationModel) _then;

/// Create a copy of CommentPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comments = null,Object? hasMore = null,Object? nextCursor = freezed,}) {
  return _then(_CommentPaginationModel(
comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentModel>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as CommentCursorModel?,
  ));
}

/// Create a copy of CommentPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentCursorModelCopyWith<$Res>? get nextCursor {
    if (_self.nextCursor == null) {
    return null;
  }

  return $CommentCursorModelCopyWith<$Res>(_self.nextCursor!, (value) {
    return _then(_self.copyWith(nextCursor: value));
  });
}
=======
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
  @JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson)
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
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
}

abstract class _CommentPaginationModel extends CommentPaginationModel {
  const factory _CommentPaginationModel(
      {required final List<CommentModel> comments,
      required final bool hasMore,
      @JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson)
      final CommentCursor? nextCursor}) = _$CommentPaginationModelImpl;
  const _CommentPaginationModel._() : super._();

  factory _CommentPaginationModel.fromJson(Map<String, dynamic> json) =
      _$CommentPaginationModelImpl.fromJson;

  @override
  List<CommentModel> get comments;
  @override
  bool get hasMore;
  @override
  @JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson)
  CommentCursor? get nextCursor;

  /// Create a copy of CommentPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentPaginationModelImplCopyWith<_$CommentPaginationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
