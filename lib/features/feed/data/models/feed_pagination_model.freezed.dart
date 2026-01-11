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
<<<<<<< HEAD

 List<FeedModel> get posts; bool get hasMore;@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) FeedCursorModel? get nextCursor;
/// Create a copy of FeedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedPaginationModelCopyWith<FeedPaginationModel> get copyWith => _$FeedPaginationModelCopyWithImpl<FeedPaginationModel>(this as FeedPaginationModel, _$identity);
=======
  List<FeedModel> get posts => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _feedCursorFromJson, toJson: _feedCursorToJson)
  FeedCursor? get nextCursor => throw _privateConstructorUsedError;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d

  /// Serializes this FeedPaginationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedPaginationModelCopyWith<FeedPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
<<<<<<< HEAD
abstract mixin class $FeedPaginationModelCopyWith<$Res>  {
  factory $FeedPaginationModelCopyWith(FeedPaginationModel value, $Res Function(FeedPaginationModel) _then) = _$FeedPaginationModelCopyWithImpl;
@useResult
$Res call({
 List<FeedModel> posts, bool hasMore,@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) FeedCursorModel? nextCursor
});


$FeedCursorModelCopyWith<$Res>? get nextCursor;
=======
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
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d

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

<<<<<<< HEAD
/// Create a copy of FeedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = null,Object? hasMore = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<FeedModel>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as FeedCursorModel?,
  ));
}
/// Create a copy of FeedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedCursorModelCopyWith<$Res>? get nextCursor {
    if (_self.nextCursor == null) {
    return null;
  }

  return $FeedCursorModelCopyWith<$Res>(_self.nextCursor!, (value) {
    return _then(_self.copyWith(nextCursor: value));
  });
}
=======
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
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
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

<<<<<<< HEAD
/// Adds pattern-matching-related methods to [FeedPaginationModel].
extension FeedPaginationModelPatterns on FeedPaginationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedPaginationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedPaginationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedPaginationModel value)  $default,){
final _that = this;
switch (_that) {
case _FeedPaginationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedPaginationModel value)?  $default,){
final _that = this;
switch (_that) {
case _FeedPaginationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FeedModel> posts,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  FeedCursorModel? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedPaginationModel() when $default != null:
return $default(_that.posts,_that.hasMore,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FeedModel> posts,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  FeedCursorModel? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _FeedPaginationModel():
return $default(_that.posts,_that.hasMore,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FeedModel> posts,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  FeedCursorModel? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _FeedPaginationModel() when $default != null:
return $default(_that.posts,_that.hasMore,_that.nextCursor);case _:
  return null;

}
=======
  @override
  $FeedCursorCopyWith<$Res>? get nextCursor;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
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

<<<<<<< HEAD
class _FeedPaginationModel extends FeedPaginationModel {
  const _FeedPaginationModel({required final  List<FeedModel> posts, required this.hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) this.nextCursor}): _posts = posts,super._();
  factory _FeedPaginationModel.fromJson(Map<String, dynamic> json) => _$FeedPaginationModelFromJson(json);

 final  List<FeedModel> _posts;
@override List<FeedModel> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}

@override final  bool hasMore;
@override@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) final  FeedCursorModel? nextCursor;

/// Create a copy of FeedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedPaginationModelCopyWith<_FeedPaginationModel> get copyWith => __$FeedPaginationModelCopyWithImpl<_FeedPaginationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedPaginationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedPaginationModel&&const DeepCollectionEquality().equals(other._posts, _posts)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),hasMore,nextCursor);

@override
String toString() {
  return 'FeedPaginationModel(posts: $posts, hasMore: $hasMore, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$FeedPaginationModelCopyWith<$Res> implements $FeedPaginationModelCopyWith<$Res> {
  factory _$FeedPaginationModelCopyWith(_FeedPaginationModel value, $Res Function(_FeedPaginationModel) _then) = __$FeedPaginationModelCopyWithImpl;
@override @useResult
$Res call({
 List<FeedModel> posts, bool hasMore,@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) FeedCursorModel? nextCursor
});


@override $FeedCursorModelCopyWith<$Res>? get nextCursor;

}
/// @nodoc
class __$FeedPaginationModelCopyWithImpl<$Res>
    implements _$FeedPaginationModelCopyWith<$Res> {
  __$FeedPaginationModelCopyWithImpl(this._self, this._then);

  final _FeedPaginationModel _self;
  final $Res Function(_FeedPaginationModel) _then;

/// Create a copy of FeedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = null,Object? hasMore = null,Object? nextCursor = freezed,}) {
  return _then(_FeedPaginationModel(
posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<FeedModel>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as FeedCursorModel?,
  ));
}

/// Create a copy of FeedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedCursorModelCopyWith<$Res>? get nextCursor {
    if (_self.nextCursor == null) {
    return null;
  }

  return $FeedCursorModelCopyWith<$Res>(_self.nextCursor!, (value) {
    return _then(_self.copyWith(nextCursor: value));
  });
}
=======
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
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
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
