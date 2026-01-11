// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_relation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SocialRelationState {
// ========== FOLLOW STATE ==========
  bool get isFollowing => throw _privateConstructorUsedError;
  bool get isLoadingFollow => throw _privateConstructorUsedError;
  String? get errorFollow =>
      throw _privateConstructorUsedError; // ========== FOLLOW REQUEST STATE ==========
  List<FollowRequestEntity> get pendingRequests =>
      throw _privateConstructorUsedError;
  List<FollowRequestEntity> get sentRequests =>
      throw _privateConstructorUsedError;
  bool get hasFollowRequestPending => throw _privateConstructorUsedError;
  bool get isLoadingRequests => throw _privateConstructorUsedError;
  String? get errorRequests =>
      throw _privateConstructorUsedError; // ========== BLOCK STATE ==========
  List<BlockedUserEntity> get blockedUsers =>
      throw _privateConstructorUsedError;
  bool get isBlocked => throw _privateConstructorUsedError;
  bool get isLoadingBlock => throw _privateConstructorUsedError;
  String? get errorBlock =>
      throw _privateConstructorUsedError; // ========== MUTE STATE ==========
  List<MutedUserEntity> get mutedUsers => throw _privateConstructorUsedError;
  bool get isMuted => throw _privateConstructorUsedError;
  bool get isLoadingMute => throw _privateConstructorUsedError;
  String? get errorMute =>
      throw _privateConstructorUsedError; // ========== RESTRICT STATE ==========
  List<RestrictedUserEntity> get restrictedUsers =>
      throw _privateConstructorUsedError;
  bool get isRestricted => throw _privateConstructorUsedError;
  bool get isLoadingRestrict => throw _privateConstructorUsedError;
  String? get errorRestrict =>
      throw _privateConstructorUsedError; // ========== GENERAL STATE ==========
  String? get successMessage => throw _privateConstructorUsedError;

  /// Create a copy of SocialRelationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialRelationStateCopyWith<SocialRelationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialRelationStateCopyWith<$Res> {
  factory $SocialRelationStateCopyWith(
          SocialRelationState value, $Res Function(SocialRelationState) then) =
      _$SocialRelationStateCopyWithImpl<$Res, SocialRelationState>;
  @useResult
  $Res call(
      {bool isFollowing,
      bool isLoadingFollow,
      String? errorFollow,
      List<FollowRequestEntity> pendingRequests,
      List<FollowRequestEntity> sentRequests,
      bool hasFollowRequestPending,
      bool isLoadingRequests,
      String? errorRequests,
      List<BlockedUserEntity> blockedUsers,
      bool isBlocked,
      bool isLoadingBlock,
      String? errorBlock,
      List<MutedUserEntity> mutedUsers,
      bool isMuted,
      bool isLoadingMute,
      String? errorMute,
      List<RestrictedUserEntity> restrictedUsers,
      bool isRestricted,
      bool isLoadingRestrict,
      String? errorRestrict,
      String? successMessage});
}

/// @nodoc
class _$SocialRelationStateCopyWithImpl<$Res, $Val extends SocialRelationState>
    implements $SocialRelationStateCopyWith<$Res> {
  _$SocialRelationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialRelationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFollowing = null,
    Object? isLoadingFollow = null,
    Object? errorFollow = freezed,
    Object? pendingRequests = null,
    Object? sentRequests = null,
    Object? hasFollowRequestPending = null,
    Object? isLoadingRequests = null,
    Object? errorRequests = freezed,
    Object? blockedUsers = null,
    Object? isBlocked = null,
    Object? isLoadingBlock = null,
    Object? errorBlock = freezed,
    Object? mutedUsers = null,
    Object? isMuted = null,
    Object? isLoadingMute = null,
    Object? errorMute = freezed,
    Object? restrictedUsers = null,
    Object? isRestricted = null,
    Object? isLoadingRestrict = null,
    Object? errorRestrict = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingFollow: null == isLoadingFollow
          ? _value.isLoadingFollow
          : isLoadingFollow // ignore: cast_nullable_to_non_nullable
              as bool,
      errorFollow: freezed == errorFollow
          ? _value.errorFollow
          : errorFollow // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingRequests: null == pendingRequests
          ? _value.pendingRequests
          : pendingRequests // ignore: cast_nullable_to_non_nullable
              as List<FollowRequestEntity>,
      sentRequests: null == sentRequests
          ? _value.sentRequests
          : sentRequests // ignore: cast_nullable_to_non_nullable
              as List<FollowRequestEntity>,
      hasFollowRequestPending: null == hasFollowRequestPending
          ? _value.hasFollowRequestPending
          : hasFollowRequestPending // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingRequests: null == isLoadingRequests
          ? _value.isLoadingRequests
          : isLoadingRequests // ignore: cast_nullable_to_non_nullable
              as bool,
      errorRequests: freezed == errorRequests
          ? _value.errorRequests
          : errorRequests // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedUsers: null == blockedUsers
          ? _value.blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<BlockedUserEntity>,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingBlock: null == isLoadingBlock
          ? _value.isLoadingBlock
          : isLoadingBlock // ignore: cast_nullable_to_non_nullable
              as bool,
      errorBlock: freezed == errorBlock
          ? _value.errorBlock
          : errorBlock // ignore: cast_nullable_to_non_nullable
              as String?,
      mutedUsers: null == mutedUsers
          ? _value.mutedUsers
          : mutedUsers // ignore: cast_nullable_to_non_nullable
              as List<MutedUserEntity>,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMute: null == isLoadingMute
          ? _value.isLoadingMute
          : isLoadingMute // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMute: freezed == errorMute
          ? _value.errorMute
          : errorMute // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictedUsers: null == restrictedUsers
          ? _value.restrictedUsers
          : restrictedUsers // ignore: cast_nullable_to_non_nullable
              as List<RestrictedUserEntity>,
      isRestricted: null == isRestricted
          ? _value.isRestricted
          : isRestricted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingRestrict: null == isLoadingRestrict
          ? _value.isLoadingRestrict
          : isLoadingRestrict // ignore: cast_nullable_to_non_nullable
              as bool,
      errorRestrict: freezed == errorRestrict
          ? _value.errorRestrict
          : errorRestrict // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialRelationStateImplCopyWith<$Res>
    implements $SocialRelationStateCopyWith<$Res> {
  factory _$$SocialRelationStateImplCopyWith(_$SocialRelationStateImpl value,
          $Res Function(_$SocialRelationStateImpl) then) =
      __$$SocialRelationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFollowing,
      bool isLoadingFollow,
      String? errorFollow,
      List<FollowRequestEntity> pendingRequests,
      List<FollowRequestEntity> sentRequests,
      bool hasFollowRequestPending,
      bool isLoadingRequests,
      String? errorRequests,
      List<BlockedUserEntity> blockedUsers,
      bool isBlocked,
      bool isLoadingBlock,
      String? errorBlock,
      List<MutedUserEntity> mutedUsers,
      bool isMuted,
      bool isLoadingMute,
      String? errorMute,
      List<RestrictedUserEntity> restrictedUsers,
      bool isRestricted,
      bool isLoadingRestrict,
      String? errorRestrict,
      String? successMessage});
}

/// @nodoc
class __$$SocialRelationStateImplCopyWithImpl<$Res>
    extends _$SocialRelationStateCopyWithImpl<$Res, _$SocialRelationStateImpl>
    implements _$$SocialRelationStateImplCopyWith<$Res> {
  __$$SocialRelationStateImplCopyWithImpl(_$SocialRelationStateImpl _value,
      $Res Function(_$SocialRelationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialRelationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFollowing = null,
    Object? isLoadingFollow = null,
    Object? errorFollow = freezed,
    Object? pendingRequests = null,
    Object? sentRequests = null,
    Object? hasFollowRequestPending = null,
    Object? isLoadingRequests = null,
    Object? errorRequests = freezed,
    Object? blockedUsers = null,
    Object? isBlocked = null,
    Object? isLoadingBlock = null,
    Object? errorBlock = freezed,
    Object? mutedUsers = null,
    Object? isMuted = null,
    Object? isLoadingMute = null,
    Object? errorMute = freezed,
    Object? restrictedUsers = null,
    Object? isRestricted = null,
    Object? isLoadingRestrict = null,
    Object? errorRestrict = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(_$SocialRelationStateImpl(
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingFollow: null == isLoadingFollow
          ? _value.isLoadingFollow
          : isLoadingFollow // ignore: cast_nullable_to_non_nullable
              as bool,
      errorFollow: freezed == errorFollow
          ? _value.errorFollow
          : errorFollow // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingRequests: null == pendingRequests
          ? _value._pendingRequests
          : pendingRequests // ignore: cast_nullable_to_non_nullable
              as List<FollowRequestEntity>,
      sentRequests: null == sentRequests
          ? _value._sentRequests
          : sentRequests // ignore: cast_nullable_to_non_nullable
              as List<FollowRequestEntity>,
      hasFollowRequestPending: null == hasFollowRequestPending
          ? _value.hasFollowRequestPending
          : hasFollowRequestPending // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingRequests: null == isLoadingRequests
          ? _value.isLoadingRequests
          : isLoadingRequests // ignore: cast_nullable_to_non_nullable
              as bool,
      errorRequests: freezed == errorRequests
          ? _value.errorRequests
          : errorRequests // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedUsers: null == blockedUsers
          ? _value._blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<BlockedUserEntity>,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingBlock: null == isLoadingBlock
          ? _value.isLoadingBlock
          : isLoadingBlock // ignore: cast_nullable_to_non_nullable
              as bool,
      errorBlock: freezed == errorBlock
          ? _value.errorBlock
          : errorBlock // ignore: cast_nullable_to_non_nullable
              as String?,
      mutedUsers: null == mutedUsers
          ? _value._mutedUsers
          : mutedUsers // ignore: cast_nullable_to_non_nullable
              as List<MutedUserEntity>,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMute: null == isLoadingMute
          ? _value.isLoadingMute
          : isLoadingMute // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMute: freezed == errorMute
          ? _value.errorMute
          : errorMute // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictedUsers: null == restrictedUsers
          ? _value._restrictedUsers
          : restrictedUsers // ignore: cast_nullable_to_non_nullable
              as List<RestrictedUserEntity>,
      isRestricted: null == isRestricted
          ? _value.isRestricted
          : isRestricted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingRestrict: null == isLoadingRestrict
          ? _value.isLoadingRestrict
          : isLoadingRestrict // ignore: cast_nullable_to_non_nullable
              as bool,
      errorRestrict: freezed == errorRestrict
          ? _value.errorRestrict
          : errorRestrict // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SocialRelationStateImpl implements _SocialRelationState {
  const _$SocialRelationStateImpl(
      {this.isFollowing = false,
      this.isLoadingFollow = false,
      this.errorFollow,
      final List<FollowRequestEntity> pendingRequests =
          const <FollowRequestEntity>[],
      final List<FollowRequestEntity> sentRequests =
          const <FollowRequestEntity>[],
      this.hasFollowRequestPending = false,
      this.isLoadingRequests = false,
      this.errorRequests,
      final List<BlockedUserEntity> blockedUsers = const <BlockedUserEntity>[],
      this.isBlocked = false,
      this.isLoadingBlock = false,
      this.errorBlock,
      final List<MutedUserEntity> mutedUsers = const <MutedUserEntity>[],
      this.isMuted = false,
      this.isLoadingMute = false,
      this.errorMute,
      final List<RestrictedUserEntity> restrictedUsers =
          const <RestrictedUserEntity>[],
      this.isRestricted = false,
      this.isLoadingRestrict = false,
      this.errorRestrict,
      this.successMessage})
      : _pendingRequests = pendingRequests,
        _sentRequests = sentRequests,
        _blockedUsers = blockedUsers,
        _mutedUsers = mutedUsers,
        _restrictedUsers = restrictedUsers;

// ========== FOLLOW STATE ==========
  @override
  @JsonKey()
  final bool isFollowing;
  @override
  @JsonKey()
  final bool isLoadingFollow;
  @override
  final String? errorFollow;
// ========== FOLLOW REQUEST STATE ==========
  final List<FollowRequestEntity> _pendingRequests;
// ========== FOLLOW REQUEST STATE ==========
  @override
  @JsonKey()
  List<FollowRequestEntity> get pendingRequests {
    if (_pendingRequests is EqualUnmodifiableListView) return _pendingRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendingRequests);
  }

  final List<FollowRequestEntity> _sentRequests;
  @override
  @JsonKey()
  List<FollowRequestEntity> get sentRequests {
    if (_sentRequests is EqualUnmodifiableListView) return _sentRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sentRequests);
  }

  @override
  @JsonKey()
  final bool hasFollowRequestPending;
  @override
  @JsonKey()
  final bool isLoadingRequests;
  @override
  final String? errorRequests;
// ========== BLOCK STATE ==========
  final List<BlockedUserEntity> _blockedUsers;
// ========== BLOCK STATE ==========
  @override
  @JsonKey()
  List<BlockedUserEntity> get blockedUsers {
    if (_blockedUsers is EqualUnmodifiableListView) return _blockedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedUsers);
  }

  @override
  @JsonKey()
  final bool isBlocked;
  @override
  @JsonKey()
  final bool isLoadingBlock;
  @override
  final String? errorBlock;
// ========== MUTE STATE ==========
  final List<MutedUserEntity> _mutedUsers;
// ========== MUTE STATE ==========
  @override
  @JsonKey()
  List<MutedUserEntity> get mutedUsers {
    if (_mutedUsers is EqualUnmodifiableListView) return _mutedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mutedUsers);
  }

  @override
  @JsonKey()
  final bool isMuted;
  @override
  @JsonKey()
  final bool isLoadingMute;
  @override
  final String? errorMute;
// ========== RESTRICT STATE ==========
  final List<RestrictedUserEntity> _restrictedUsers;
// ========== RESTRICT STATE ==========
  @override
  @JsonKey()
  List<RestrictedUserEntity> get restrictedUsers {
    if (_restrictedUsers is EqualUnmodifiableListView) return _restrictedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restrictedUsers);
  }

  @override
  @JsonKey()
  final bool isRestricted;
  @override
  @JsonKey()
  final bool isLoadingRestrict;
  @override
  final String? errorRestrict;
// ========== GENERAL STATE ==========
  @override
  final String? successMessage;

  @override
  String toString() {
    return 'SocialRelationState(isFollowing: $isFollowing, isLoadingFollow: $isLoadingFollow, errorFollow: $errorFollow, pendingRequests: $pendingRequests, sentRequests: $sentRequests, hasFollowRequestPending: $hasFollowRequestPending, isLoadingRequests: $isLoadingRequests, errorRequests: $errorRequests, blockedUsers: $blockedUsers, isBlocked: $isBlocked, isLoadingBlock: $isLoadingBlock, errorBlock: $errorBlock, mutedUsers: $mutedUsers, isMuted: $isMuted, isLoadingMute: $isLoadingMute, errorMute: $errorMute, restrictedUsers: $restrictedUsers, isRestricted: $isRestricted, isLoadingRestrict: $isLoadingRestrict, errorRestrict: $errorRestrict, successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialRelationStateImpl &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.isLoadingFollow, isLoadingFollow) ||
                other.isLoadingFollow == isLoadingFollow) &&
            (identical(other.errorFollow, errorFollow) ||
                other.errorFollow == errorFollow) &&
            const DeepCollectionEquality()
                .equals(other._pendingRequests, _pendingRequests) &&
            const DeepCollectionEquality()
                .equals(other._sentRequests, _sentRequests) &&
            (identical(
                    other.hasFollowRequestPending, hasFollowRequestPending) ||
                other.hasFollowRequestPending == hasFollowRequestPending) &&
            (identical(other.isLoadingRequests, isLoadingRequests) ||
                other.isLoadingRequests == isLoadingRequests) &&
            (identical(other.errorRequests, errorRequests) ||
                other.errorRequests == errorRequests) &&
            const DeepCollectionEquality()
                .equals(other._blockedUsers, _blockedUsers) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.isLoadingBlock, isLoadingBlock) ||
                other.isLoadingBlock == isLoadingBlock) &&
            (identical(other.errorBlock, errorBlock) ||
                other.errorBlock == errorBlock) &&
            const DeepCollectionEquality()
                .equals(other._mutedUsers, _mutedUsers) &&
            (identical(other.isMuted, isMuted) || other.isMuted == isMuted) &&
            (identical(other.isLoadingMute, isLoadingMute) ||
                other.isLoadingMute == isLoadingMute) &&
            (identical(other.errorMute, errorMute) ||
                other.errorMute == errorMute) &&
            const DeepCollectionEquality()
                .equals(other._restrictedUsers, _restrictedUsers) &&
            (identical(other.isRestricted, isRestricted) ||
                other.isRestricted == isRestricted) &&
            (identical(other.isLoadingRestrict, isLoadingRestrict) ||
                other.isLoadingRestrict == isLoadingRestrict) &&
            (identical(other.errorRestrict, errorRestrict) ||
                other.errorRestrict == errorRestrict) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isFollowing,
        isLoadingFollow,
        errorFollow,
        const DeepCollectionEquality().hash(_pendingRequests),
        const DeepCollectionEquality().hash(_sentRequests),
        hasFollowRequestPending,
        isLoadingRequests,
        errorRequests,
        const DeepCollectionEquality().hash(_blockedUsers),
        isBlocked,
        isLoadingBlock,
        errorBlock,
        const DeepCollectionEquality().hash(_mutedUsers),
        isMuted,
        isLoadingMute,
        errorMute,
        const DeepCollectionEquality().hash(_restrictedUsers),
        isRestricted,
        isLoadingRestrict,
        errorRestrict,
        successMessage
      ]);

  /// Create a copy of SocialRelationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialRelationStateImplCopyWith<_$SocialRelationStateImpl> get copyWith =>
      __$$SocialRelationStateImplCopyWithImpl<_$SocialRelationStateImpl>(
          this, _$identity);
}

abstract class _SocialRelationState implements SocialRelationState {
  const factory _SocialRelationState(
      {final bool isFollowing,
      final bool isLoadingFollow,
      final String? errorFollow,
      final List<FollowRequestEntity> pendingRequests,
      final List<FollowRequestEntity> sentRequests,
      final bool hasFollowRequestPending,
      final bool isLoadingRequests,
      final String? errorRequests,
      final List<BlockedUserEntity> blockedUsers,
      final bool isBlocked,
      final bool isLoadingBlock,
      final String? errorBlock,
      final List<MutedUserEntity> mutedUsers,
      final bool isMuted,
      final bool isLoadingMute,
      final String? errorMute,
      final List<RestrictedUserEntity> restrictedUsers,
      final bool isRestricted,
      final bool isLoadingRestrict,
      final String? errorRestrict,
      final String? successMessage}) = _$SocialRelationStateImpl;

// ========== FOLLOW STATE ==========
  @override
  bool get isFollowing;
  @override
  bool get isLoadingFollow;
  @override
  String? get errorFollow; // ========== FOLLOW REQUEST STATE ==========
  @override
  List<FollowRequestEntity> get pendingRequests;
  @override
  List<FollowRequestEntity> get sentRequests;
  @override
  bool get hasFollowRequestPending;
  @override
  bool get isLoadingRequests;
  @override
  String? get errorRequests; // ========== BLOCK STATE ==========
  @override
  List<BlockedUserEntity> get blockedUsers;
  @override
  bool get isBlocked;
  @override
  bool get isLoadingBlock;
  @override
  String? get errorBlock; // ========== MUTE STATE ==========
  @override
  List<MutedUserEntity> get mutedUsers;
  @override
  bool get isMuted;
  @override
  bool get isLoadingMute;
  @override
  String? get errorMute; // ========== RESTRICT STATE ==========
  @override
  List<RestrictedUserEntity> get restrictedUsers;
  @override
  bool get isRestricted;
  @override
  bool get isLoadingRestrict;
  @override
  String? get errorRestrict; // ========== GENERAL STATE ==========
  @override
  String? get successMessage;

  /// Create a copy of SocialRelationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialRelationStateImplCopyWith<_$SocialRelationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
