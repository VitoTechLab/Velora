// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'more_option_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoreOptionData {
  bool get allowComments => throw _privateConstructorUsedError;
  bool get allowShare => throw _privateConstructorUsedError;

  /// Create a copy of MoreOptionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoreOptionDataCopyWith<MoreOptionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreOptionDataCopyWith<$Res> {
  factory $MoreOptionDataCopyWith(
          MoreOptionData value, $Res Function(MoreOptionData) then) =
      _$MoreOptionDataCopyWithImpl<$Res, MoreOptionData>;
  @useResult
  $Res call({bool allowComments, bool allowShare});
}

/// @nodoc
class _$MoreOptionDataCopyWithImpl<$Res, $Val extends MoreOptionData>
    implements $MoreOptionDataCopyWith<$Res> {
  _$MoreOptionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoreOptionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowComments = null,
    Object? allowShare = null,
  }) {
    return _then(_value.copyWith(
      allowComments: null == allowComments
          ? _value.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool,
      allowShare: null == allowShare
          ? _value.allowShare
          : allowShare // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoreOptionDataImplCopyWith<$Res>
    implements $MoreOptionDataCopyWith<$Res> {
  factory _$$MoreOptionDataImplCopyWith(_$MoreOptionDataImpl value,
          $Res Function(_$MoreOptionDataImpl) then) =
      __$$MoreOptionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool allowComments, bool allowShare});
}

/// @nodoc
class __$$MoreOptionDataImplCopyWithImpl<$Res>
    extends _$MoreOptionDataCopyWithImpl<$Res, _$MoreOptionDataImpl>
    implements _$$MoreOptionDataImplCopyWith<$Res> {
  __$$MoreOptionDataImplCopyWithImpl(
      _$MoreOptionDataImpl _value, $Res Function(_$MoreOptionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoreOptionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowComments = null,
    Object? allowShare = null,
  }) {
    return _then(_$MoreOptionDataImpl(
      allowComments: null == allowComments
          ? _value.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool,
      allowShare: null == allowShare
          ? _value.allowShare
          : allowShare // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MoreOptionDataImpl implements _MoreOptionData {
  const _$MoreOptionDataImpl(
      {this.allowComments = true, this.allowShare = true});

  @override
  @JsonKey()
  final bool allowComments;
  @override
  @JsonKey()
  final bool allowShare;

  @override
  String toString() {
    return 'MoreOptionData(allowComments: $allowComments, allowShare: $allowShare)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoreOptionDataImpl &&
            (identical(other.allowComments, allowComments) ||
                other.allowComments == allowComments) &&
            (identical(other.allowShare, allowShare) ||
                other.allowShare == allowShare));
  }

  @override
  int get hashCode => Object.hash(runtimeType, allowComments, allowShare);

  /// Create a copy of MoreOptionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoreOptionDataImplCopyWith<_$MoreOptionDataImpl> get copyWith =>
      __$$MoreOptionDataImplCopyWithImpl<_$MoreOptionDataImpl>(
          this, _$identity);
}

abstract class _MoreOptionData implements MoreOptionData {
  const factory _MoreOptionData(
      {final bool allowComments, final bool allowShare}) = _$MoreOptionDataImpl;

  @override
  bool get allowComments;
  @override
  bool get allowShare;

  /// Create a copy of MoreOptionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoreOptionDataImplCopyWith<_$MoreOptionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
