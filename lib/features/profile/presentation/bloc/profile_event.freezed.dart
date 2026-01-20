// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadProfile,
    required TResult Function(UpdateProfileModel updateModel) updateProfile,
    required TResult Function(String targetUserId, bool isPrivate) toggleFollow,
    required TResult Function(String targetUserId) blockUser,
    required TResult Function(String targetUserId) unblockUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadProfile,
    TResult? Function(UpdateProfileModel updateModel)? updateProfile,
    TResult? Function(String targetUserId, bool isPrivate)? toggleFollow,
    TResult? Function(String targetUserId)? blockUser,
    TResult? Function(String targetUserId)? unblockUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadProfile,
    TResult Function(UpdateProfileModel updateModel)? updateProfile,
    TResult Function(String targetUserId, bool isPrivate)? toggleFollow,
    TResult Function(String targetUserId)? blockUser,
    TResult Function(String targetUserId)? unblockUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfile,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ToggleFollowEvent value) toggleFollow,
    required TResult Function(BlockUserEvent value) blockUser,
    required TResult Function(UnblockUserEvent value) unblockUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfile,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ToggleFollowEvent value)? toggleFollow,
    TResult? Function(BlockUserEvent value)? blockUser,
    TResult? Function(UnblockUserEvent value)? unblockUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfile,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ToggleFollowEvent value)? toggleFollow,
    TResult Function(BlockUserEvent value)? blockUser,
    TResult Function(UnblockUserEvent value)? unblockUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadProfileEventImplCopyWith<$Res> {
  factory _$$LoadProfileEventImplCopyWith(_$LoadProfileEventImpl value,
          $Res Function(_$LoadProfileEventImpl) then) =
      __$$LoadProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$LoadProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LoadProfileEventImpl>
    implements _$$LoadProfileEventImplCopyWith<$Res> {
  __$$LoadProfileEventImplCopyWithImpl(_$LoadProfileEventImpl _value,
      $Res Function(_$LoadProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$LoadProfileEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadProfileEventImpl implements LoadProfileEvent {
  const _$LoadProfileEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'ProfileEvent.loadProfile(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadProfileEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadProfileEventImplCopyWith<_$LoadProfileEventImpl> get copyWith =>
      __$$LoadProfileEventImplCopyWithImpl<_$LoadProfileEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadProfile,
    required TResult Function(UpdateProfileModel updateModel) updateProfile,
    required TResult Function(String targetUserId, bool isPrivate) toggleFollow,
    required TResult Function(String targetUserId) blockUser,
    required TResult Function(String targetUserId) unblockUser,
  }) {
    return loadProfile(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadProfile,
    TResult? Function(UpdateProfileModel updateModel)? updateProfile,
    TResult? Function(String targetUserId, bool isPrivate)? toggleFollow,
    TResult? Function(String targetUserId)? blockUser,
    TResult? Function(String targetUserId)? unblockUser,
  }) {
    return loadProfile?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadProfile,
    TResult Function(UpdateProfileModel updateModel)? updateProfile,
    TResult Function(String targetUserId, bool isPrivate)? toggleFollow,
    TResult Function(String targetUserId)? blockUser,
    TResult Function(String targetUserId)? unblockUser,
    required TResult orElse(),
  }) {
    if (loadProfile != null) {
      return loadProfile(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfile,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ToggleFollowEvent value) toggleFollow,
    required TResult Function(BlockUserEvent value) blockUser,
    required TResult Function(UnblockUserEvent value) unblockUser,
  }) {
    return loadProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfile,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ToggleFollowEvent value)? toggleFollow,
    TResult? Function(BlockUserEvent value)? blockUser,
    TResult? Function(UnblockUserEvent value)? unblockUser,
  }) {
    return loadProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfile,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ToggleFollowEvent value)? toggleFollow,
    TResult Function(BlockUserEvent value)? blockUser,
    TResult Function(UnblockUserEvent value)? unblockUser,
    required TResult orElse(),
  }) {
    if (loadProfile != null) {
      return loadProfile(this);
    }
    return orElse();
  }
}

abstract class LoadProfileEvent implements ProfileEvent {
  const factory LoadProfileEvent({required final String userId}) =
      _$LoadProfileEventImpl;

  String get userId;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadProfileEventImplCopyWith<_$LoadProfileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileEventImplCopyWith<$Res> {
  factory _$$UpdateProfileEventImplCopyWith(_$UpdateProfileEventImpl value,
          $Res Function(_$UpdateProfileEventImpl) then) =
      __$$UpdateProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProfileModel updateModel});

  $UpdateProfileModelCopyWith<$Res> get updateModel;
}

/// @nodoc
class __$$UpdateProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateProfileEventImpl>
    implements _$$UpdateProfileEventImplCopyWith<$Res> {
  __$$UpdateProfileEventImplCopyWithImpl(_$UpdateProfileEventImpl _value,
      $Res Function(_$UpdateProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateModel = null,
  }) {
    return _then(_$UpdateProfileEventImpl(
      updateModel: null == updateModel
          ? _value.updateModel
          : updateModel // ignore: cast_nullable_to_non_nullable
              as UpdateProfileModel,
    ));
  }

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateProfileModelCopyWith<$Res> get updateModel {
    return $UpdateProfileModelCopyWith<$Res>(_value.updateModel, (value) {
      return _then(_value.copyWith(updateModel: value));
    });
  }
}

/// @nodoc

class _$UpdateProfileEventImpl implements UpdateProfileEvent {
  const _$UpdateProfileEventImpl({required this.updateModel});

  @override
  final UpdateProfileModel updateModel;

  @override
  String toString() {
    return 'ProfileEvent.updateProfile(updateModel: $updateModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileEventImpl &&
            (identical(other.updateModel, updateModel) ||
                other.updateModel == updateModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateModel);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileEventImplCopyWith<_$UpdateProfileEventImpl> get copyWith =>
      __$$UpdateProfileEventImplCopyWithImpl<_$UpdateProfileEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadProfile,
    required TResult Function(UpdateProfileModel updateModel) updateProfile,
    required TResult Function(String targetUserId, bool isPrivate) toggleFollow,
    required TResult Function(String targetUserId) blockUser,
    required TResult Function(String targetUserId) unblockUser,
  }) {
    return updateProfile(updateModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadProfile,
    TResult? Function(UpdateProfileModel updateModel)? updateProfile,
    TResult? Function(String targetUserId, bool isPrivate)? toggleFollow,
    TResult? Function(String targetUserId)? blockUser,
    TResult? Function(String targetUserId)? unblockUser,
  }) {
    return updateProfile?.call(updateModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadProfile,
    TResult Function(UpdateProfileModel updateModel)? updateProfile,
    TResult Function(String targetUserId, bool isPrivate)? toggleFollow,
    TResult Function(String targetUserId)? blockUser,
    TResult Function(String targetUserId)? unblockUser,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(updateModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfile,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ToggleFollowEvent value) toggleFollow,
    required TResult Function(BlockUserEvent value) blockUser,
    required TResult Function(UnblockUserEvent value) unblockUser,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfile,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ToggleFollowEvent value)? toggleFollow,
    TResult? Function(BlockUserEvent value)? blockUser,
    TResult? Function(UnblockUserEvent value)? unblockUser,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfile,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ToggleFollowEvent value)? toggleFollow,
    TResult Function(BlockUserEvent value)? blockUser,
    TResult Function(UnblockUserEvent value)? unblockUser,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileEvent implements ProfileEvent {
  const factory UpdateProfileEvent(
          {required final UpdateProfileModel updateModel}) =
      _$UpdateProfileEventImpl;

  UpdateProfileModel get updateModel;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileEventImplCopyWith<_$UpdateProfileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleFollowEventImplCopyWith<$Res> {
  factory _$$ToggleFollowEventImplCopyWith(_$ToggleFollowEventImpl value,
          $Res Function(_$ToggleFollowEventImpl) then) =
      __$$ToggleFollowEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String targetUserId, bool isPrivate});
}

/// @nodoc
class __$$ToggleFollowEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ToggleFollowEventImpl>
    implements _$$ToggleFollowEventImplCopyWith<$Res> {
  __$$ToggleFollowEventImplCopyWithImpl(_$ToggleFollowEventImpl _value,
      $Res Function(_$ToggleFollowEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetUserId = null,
    Object? isPrivate = null,
  }) {
    return _then(_$ToggleFollowEventImpl(
      targetUserId: null == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleFollowEventImpl implements ToggleFollowEvent {
  const _$ToggleFollowEventImpl(
      {required this.targetUserId, required this.isPrivate});

  @override
  final String targetUserId;
  @override
  final bool isPrivate;

  @override
  String toString() {
    return 'ProfileEvent.toggleFollow(targetUserId: $targetUserId, isPrivate: $isPrivate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFollowEventImpl &&
            (identical(other.targetUserId, targetUserId) ||
                other.targetUserId == targetUserId) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, targetUserId, isPrivate);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFollowEventImplCopyWith<_$ToggleFollowEventImpl> get copyWith =>
      __$$ToggleFollowEventImplCopyWithImpl<_$ToggleFollowEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadProfile,
    required TResult Function(UpdateProfileModel updateModel) updateProfile,
    required TResult Function(String targetUserId, bool isPrivate) toggleFollow,
    required TResult Function(String targetUserId) blockUser,
    required TResult Function(String targetUserId) unblockUser,
  }) {
    return toggleFollow(targetUserId, isPrivate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadProfile,
    TResult? Function(UpdateProfileModel updateModel)? updateProfile,
    TResult? Function(String targetUserId, bool isPrivate)? toggleFollow,
    TResult? Function(String targetUserId)? blockUser,
    TResult? Function(String targetUserId)? unblockUser,
  }) {
    return toggleFollow?.call(targetUserId, isPrivate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadProfile,
    TResult Function(UpdateProfileModel updateModel)? updateProfile,
    TResult Function(String targetUserId, bool isPrivate)? toggleFollow,
    TResult Function(String targetUserId)? blockUser,
    TResult Function(String targetUserId)? unblockUser,
    required TResult orElse(),
  }) {
    if (toggleFollow != null) {
      return toggleFollow(targetUserId, isPrivate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfile,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ToggleFollowEvent value) toggleFollow,
    required TResult Function(BlockUserEvent value) blockUser,
    required TResult Function(UnblockUserEvent value) unblockUser,
  }) {
    return toggleFollow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfile,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ToggleFollowEvent value)? toggleFollow,
    TResult? Function(BlockUserEvent value)? blockUser,
    TResult? Function(UnblockUserEvent value)? unblockUser,
  }) {
    return toggleFollow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfile,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ToggleFollowEvent value)? toggleFollow,
    TResult Function(BlockUserEvent value)? blockUser,
    TResult Function(UnblockUserEvent value)? unblockUser,
    required TResult orElse(),
  }) {
    if (toggleFollow != null) {
      return toggleFollow(this);
    }
    return orElse();
  }
}

abstract class ToggleFollowEvent implements ProfileEvent {
  const factory ToggleFollowEvent(
      {required final String targetUserId,
      required final bool isPrivate}) = _$ToggleFollowEventImpl;

  String get targetUserId;
  bool get isPrivate;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleFollowEventImplCopyWith<_$ToggleFollowEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlockUserEventImplCopyWith<$Res> {
  factory _$$BlockUserEventImplCopyWith(_$BlockUserEventImpl value,
          $Res Function(_$BlockUserEventImpl) then) =
      __$$BlockUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String targetUserId});
}

/// @nodoc
class __$$BlockUserEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$BlockUserEventImpl>
    implements _$$BlockUserEventImplCopyWith<$Res> {
  __$$BlockUserEventImplCopyWithImpl(
      _$BlockUserEventImpl _value, $Res Function(_$BlockUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetUserId = null,
  }) {
    return _then(_$BlockUserEventImpl(
      targetUserId: null == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlockUserEventImpl implements BlockUserEvent {
  const _$BlockUserEventImpl({required this.targetUserId});

  @override
  final String targetUserId;

  @override
  String toString() {
    return 'ProfileEvent.blockUser(targetUserId: $targetUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockUserEventImpl &&
            (identical(other.targetUserId, targetUserId) ||
                other.targetUserId == targetUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, targetUserId);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockUserEventImplCopyWith<_$BlockUserEventImpl> get copyWith =>
      __$$BlockUserEventImplCopyWithImpl<_$BlockUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadProfile,
    required TResult Function(UpdateProfileModel updateModel) updateProfile,
    required TResult Function(String targetUserId, bool isPrivate) toggleFollow,
    required TResult Function(String targetUserId) blockUser,
    required TResult Function(String targetUserId) unblockUser,
  }) {
    return blockUser(targetUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadProfile,
    TResult? Function(UpdateProfileModel updateModel)? updateProfile,
    TResult? Function(String targetUserId, bool isPrivate)? toggleFollow,
    TResult? Function(String targetUserId)? blockUser,
    TResult? Function(String targetUserId)? unblockUser,
  }) {
    return blockUser?.call(targetUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadProfile,
    TResult Function(UpdateProfileModel updateModel)? updateProfile,
    TResult Function(String targetUserId, bool isPrivate)? toggleFollow,
    TResult Function(String targetUserId)? blockUser,
    TResult Function(String targetUserId)? unblockUser,
    required TResult orElse(),
  }) {
    if (blockUser != null) {
      return blockUser(targetUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfile,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ToggleFollowEvent value) toggleFollow,
    required TResult Function(BlockUserEvent value) blockUser,
    required TResult Function(UnblockUserEvent value) unblockUser,
  }) {
    return blockUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfile,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ToggleFollowEvent value)? toggleFollow,
    TResult? Function(BlockUserEvent value)? blockUser,
    TResult? Function(UnblockUserEvent value)? unblockUser,
  }) {
    return blockUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfile,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ToggleFollowEvent value)? toggleFollow,
    TResult Function(BlockUserEvent value)? blockUser,
    TResult Function(UnblockUserEvent value)? unblockUser,
    required TResult orElse(),
  }) {
    if (blockUser != null) {
      return blockUser(this);
    }
    return orElse();
  }
}

abstract class BlockUserEvent implements ProfileEvent {
  const factory BlockUserEvent({required final String targetUserId}) =
      _$BlockUserEventImpl;

  String get targetUserId;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockUserEventImplCopyWith<_$BlockUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnblockUserEventImplCopyWith<$Res> {
  factory _$$UnblockUserEventImplCopyWith(_$UnblockUserEventImpl value,
          $Res Function(_$UnblockUserEventImpl) then) =
      __$$UnblockUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String targetUserId});
}

/// @nodoc
class __$$UnblockUserEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UnblockUserEventImpl>
    implements _$$UnblockUserEventImplCopyWith<$Res> {
  __$$UnblockUserEventImplCopyWithImpl(_$UnblockUserEventImpl _value,
      $Res Function(_$UnblockUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetUserId = null,
  }) {
    return _then(_$UnblockUserEventImpl(
      targetUserId: null == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnblockUserEventImpl implements UnblockUserEvent {
  const _$UnblockUserEventImpl({required this.targetUserId});

  @override
  final String targetUserId;

  @override
  String toString() {
    return 'ProfileEvent.unblockUser(targetUserId: $targetUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnblockUserEventImpl &&
            (identical(other.targetUserId, targetUserId) ||
                other.targetUserId == targetUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, targetUserId);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnblockUserEventImplCopyWith<_$UnblockUserEventImpl> get copyWith =>
      __$$UnblockUserEventImplCopyWithImpl<_$UnblockUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadProfile,
    required TResult Function(UpdateProfileModel updateModel) updateProfile,
    required TResult Function(String targetUserId, bool isPrivate) toggleFollow,
    required TResult Function(String targetUserId) blockUser,
    required TResult Function(String targetUserId) unblockUser,
  }) {
    return unblockUser(targetUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadProfile,
    TResult? Function(UpdateProfileModel updateModel)? updateProfile,
    TResult? Function(String targetUserId, bool isPrivate)? toggleFollow,
    TResult? Function(String targetUserId)? blockUser,
    TResult? Function(String targetUserId)? unblockUser,
  }) {
    return unblockUser?.call(targetUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadProfile,
    TResult Function(UpdateProfileModel updateModel)? updateProfile,
    TResult Function(String targetUserId, bool isPrivate)? toggleFollow,
    TResult Function(String targetUserId)? blockUser,
    TResult Function(String targetUserId)? unblockUser,
    required TResult orElse(),
  }) {
    if (unblockUser != null) {
      return unblockUser(targetUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfile,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ToggleFollowEvent value) toggleFollow,
    required TResult Function(BlockUserEvent value) blockUser,
    required TResult Function(UnblockUserEvent value) unblockUser,
  }) {
    return unblockUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfile,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ToggleFollowEvent value)? toggleFollow,
    TResult? Function(BlockUserEvent value)? blockUser,
    TResult? Function(UnblockUserEvent value)? unblockUser,
  }) {
    return unblockUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfile,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ToggleFollowEvent value)? toggleFollow,
    TResult Function(BlockUserEvent value)? blockUser,
    TResult Function(UnblockUserEvent value)? unblockUser,
    required TResult orElse(),
  }) {
    if (unblockUser != null) {
      return unblockUser(this);
    }
    return orElse();
  }
}

abstract class UnblockUserEvent implements ProfileEvent {
  const factory UnblockUserEvent({required final String targetUserId}) =
      _$UnblockUserEventImpl;

  String get targetUserId;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnblockUserEventImplCopyWith<_$UnblockUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
