// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostState {
  FeedEntity? get createdPost => throw _privateConstructorUsedError;
  bool get isCreatingPost => throw _privateConstructorUsedError;
  String? get errorCreatePost => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
  @useResult
  $Res call(
      {FeedEntity? createdPost,
      bool isCreatingPost,
      String? errorCreatePost,
      String? message});

  $FeedEntityCopyWith<$Res>? get createdPost;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdPost = freezed,
    Object? isCreatingPost = null,
    Object? errorCreatePost = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      createdPost: freezed == createdPost
          ? _value.createdPost
          : createdPost // ignore: cast_nullable_to_non_nullable
              as FeedEntity?,
      isCreatingPost: null == isCreatingPost
          ? _value.isCreatingPost
          : isCreatingPost // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCreatePost: freezed == errorCreatePost
          ? _value.errorCreatePost
          : errorCreatePost // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedEntityCopyWith<$Res>? get createdPost {
    if (_value.createdPost == null) {
      return null;
    }

    return $FeedEntityCopyWith<$Res>(_value.createdPost!, (value) {
      return _then(_value.copyWith(createdPost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostStateImplCopyWith<$Res>
    implements $PostStateCopyWith<$Res> {
  factory _$$PostStateImplCopyWith(
          _$PostStateImpl value, $Res Function(_$PostStateImpl) then) =
      __$$PostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FeedEntity? createdPost,
      bool isCreatingPost,
      String? errorCreatePost,
      String? message});

  @override
  $FeedEntityCopyWith<$Res>? get createdPost;
}

/// @nodoc
class __$$PostStateImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostStateImpl>
    implements _$$PostStateImplCopyWith<$Res> {
  __$$PostStateImplCopyWithImpl(
      _$PostStateImpl _value, $Res Function(_$PostStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdPost = freezed,
    Object? isCreatingPost = null,
    Object? errorCreatePost = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PostStateImpl(
      createdPost: freezed == createdPost
          ? _value.createdPost
          : createdPost // ignore: cast_nullable_to_non_nullable
              as FeedEntity?,
      isCreatingPost: null == isCreatingPost
          ? _value.isCreatingPost
          : isCreatingPost // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCreatePost: freezed == errorCreatePost
          ? _value.errorCreatePost
          : errorCreatePost // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PostStateImpl implements _PostState {
  const _$PostStateImpl(
      {this.createdPost,
      this.isCreatingPost = false,
      this.errorCreatePost,
      this.message});

  @override
  final FeedEntity? createdPost;
  @override
  @JsonKey()
  final bool isCreatingPost;
  @override
  final String? errorCreatePost;
  @override
  final String? message;

  @override
  String toString() {
    return 'PostState(createdPost: $createdPost, isCreatingPost: $isCreatingPost, errorCreatePost: $errorCreatePost, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStateImpl &&
            (identical(other.createdPost, createdPost) ||
                other.createdPost == createdPost) &&
            (identical(other.isCreatingPost, isCreatingPost) ||
                other.isCreatingPost == isCreatingPost) &&
            (identical(other.errorCreatePost, errorCreatePost) ||
                other.errorCreatePost == errorCreatePost) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, createdPost, isCreatingPost, errorCreatePost, message);

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      __$$PostStateImplCopyWithImpl<_$PostStateImpl>(this, _$identity);
}

abstract class _PostState implements PostState {
  const factory _PostState(
      {final FeedEntity? createdPost,
      final bool isCreatingPost,
      final String? errorCreatePost,
      final String? message}) = _$PostStateImpl;

  @override
  FeedEntity? get createdPost;
  @override
  bool get isCreatingPost;
  @override
  String? get errorCreatePost;
  @override
  String? get message;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
