// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CampaignPostState {
  CampaignEntity? get createdCampaign => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of CampaignPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignPostStateCopyWith<CampaignPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignPostStateCopyWith<$Res> {
  factory $CampaignPostStateCopyWith(
          CampaignPostState value, $Res Function(CampaignPostState) then) =
      _$CampaignPostStateCopyWithImpl<$Res, CampaignPostState>;
  @useResult
  $Res call(
      {CampaignEntity? createdCampaign,
      bool isSubmitting,
      String? errorMessage,
      String? message});

  $CampaignEntityCopyWith<$Res>? get createdCampaign;
}

/// @nodoc
class _$CampaignPostStateCopyWithImpl<$Res, $Val extends CampaignPostState>
    implements $CampaignPostStateCopyWith<$Res> {
  _$CampaignPostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdCampaign = freezed,
    Object? isSubmitting = null,
    Object? errorMessage = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      createdCampaign: freezed == createdCampaign
          ? _value.createdCampaign
          : createdCampaign // ignore: cast_nullable_to_non_nullable
              as CampaignEntity?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CampaignPostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CampaignEntityCopyWith<$Res>? get createdCampaign {
    if (_value.createdCampaign == null) {
      return null;
    }

    return $CampaignEntityCopyWith<$Res>(_value.createdCampaign!, (value) {
      return _then(_value.copyWith(createdCampaign: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CampaignPostStateImplCopyWith<$Res>
    implements $CampaignPostStateCopyWith<$Res> {
  factory _$$CampaignPostStateImplCopyWith(_$CampaignPostStateImpl value,
          $Res Function(_$CampaignPostStateImpl) then) =
      __$$CampaignPostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CampaignEntity? createdCampaign,
      bool isSubmitting,
      String? errorMessage,
      String? message});

  @override
  $CampaignEntityCopyWith<$Res>? get createdCampaign;
}

/// @nodoc
class __$$CampaignPostStateImplCopyWithImpl<$Res>
    extends _$CampaignPostStateCopyWithImpl<$Res, _$CampaignPostStateImpl>
    implements _$$CampaignPostStateImplCopyWith<$Res> {
  __$$CampaignPostStateImplCopyWithImpl(_$CampaignPostStateImpl _value,
      $Res Function(_$CampaignPostStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdCampaign = freezed,
    Object? isSubmitting = null,
    Object? errorMessage = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CampaignPostStateImpl(
      createdCampaign: freezed == createdCampaign
          ? _value.createdCampaign
          : createdCampaign // ignore: cast_nullable_to_non_nullable
              as CampaignEntity?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CampaignPostStateImpl implements _CampaignPostState {
  const _$CampaignPostStateImpl(
      {this.createdCampaign,
      this.isSubmitting = false,
      this.errorMessage,
      this.message});

  @override
  final CampaignEntity? createdCampaign;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  final String? errorMessage;
  @override
  final String? message;

  @override
  String toString() {
    return 'CampaignPostState(createdCampaign: $createdCampaign, isSubmitting: $isSubmitting, errorMessage: $errorMessage, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignPostStateImpl &&
            (identical(other.createdCampaign, createdCampaign) ||
                other.createdCampaign == createdCampaign) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, createdCampaign, isSubmitting, errorMessage, message);

  /// Create a copy of CampaignPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignPostStateImplCopyWith<_$CampaignPostStateImpl> get copyWith =>
      __$$CampaignPostStateImplCopyWithImpl<_$CampaignPostStateImpl>(
          this, _$identity);
}

abstract class _CampaignPostState implements CampaignPostState {
  const factory _CampaignPostState(
      {final CampaignEntity? createdCampaign,
      final bool isSubmitting,
      final String? errorMessage,
      final String? message}) = _$CampaignPostStateImpl;

  @override
  CampaignEntity? get createdCampaign;
  @override
  bool get isSubmitting;
  @override
  String? get errorMessage;
  @override
  String? get message;

  /// Create a copy of CampaignPostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignPostStateImplCopyWith<_$CampaignPostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
