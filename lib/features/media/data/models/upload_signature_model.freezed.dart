// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_signature_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadSignatureModel _$UploadSignatureModelFromJson(Map<String, dynamic> json) {
  return _UploadSignatureModel.fromJson(json);
}

/// @nodoc
mixin _$UploadSignatureModel {
  @JsonKey(name: 'api_key')
  String get apiKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  int get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'signature')
  String get signature => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_id')
  String get publicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'folder')
  String get folder => throw _privateConstructorUsedError;

  /// Serializes this UploadSignatureModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadSignatureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadSignatureModelCopyWith<UploadSignatureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadSignatureModelCopyWith<$Res> {
  factory $UploadSignatureModelCopyWith(UploadSignatureModel value,
          $Res Function(UploadSignatureModel) then) =
      _$UploadSignatureModelCopyWithImpl<$Res, UploadSignatureModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_key') String apiKey,
      @JsonKey(name: 'timestamp') int timestamp,
      @JsonKey(name: 'signature') String signature,
      @JsonKey(name: 'public_id') String publicId,
      @JsonKey(name: 'folder') String folder});
}

/// @nodoc
class _$UploadSignatureModelCopyWithImpl<$Res,
        $Val extends UploadSignatureModel>
    implements $UploadSignatureModelCopyWith<$Res> {
  _$UploadSignatureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadSignatureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? timestamp = null,
    Object? signature = null,
    Object? publicId = null,
    Object? folder = null,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      publicId: null == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String,
      folder: null == folder
          ? _value.folder
          : folder // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadSignatureModelImplCopyWith<$Res>
    implements $UploadSignatureModelCopyWith<$Res> {
  factory _$$UploadSignatureModelImplCopyWith(_$UploadSignatureModelImpl value,
          $Res Function(_$UploadSignatureModelImpl) then) =
      __$$UploadSignatureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_key') String apiKey,
      @JsonKey(name: 'timestamp') int timestamp,
      @JsonKey(name: 'signature') String signature,
      @JsonKey(name: 'public_id') String publicId,
      @JsonKey(name: 'folder') String folder});
}

/// @nodoc
class __$$UploadSignatureModelImplCopyWithImpl<$Res>
    extends _$UploadSignatureModelCopyWithImpl<$Res, _$UploadSignatureModelImpl>
    implements _$$UploadSignatureModelImplCopyWith<$Res> {
  __$$UploadSignatureModelImplCopyWithImpl(_$UploadSignatureModelImpl _value,
      $Res Function(_$UploadSignatureModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadSignatureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? timestamp = null,
    Object? signature = null,
    Object? publicId = null,
    Object? folder = null,
  }) {
    return _then(_$UploadSignatureModelImpl(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      publicId: null == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String,
      folder: null == folder
          ? _value.folder
          : folder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadSignatureModelImpl implements _UploadSignatureModel {
  const _$UploadSignatureModelImpl(
      {@JsonKey(name: 'api_key') required this.apiKey,
      @JsonKey(name: 'timestamp') required this.timestamp,
      @JsonKey(name: 'signature') required this.signature,
      @JsonKey(name: 'public_id') required this.publicId,
      @JsonKey(name: 'folder') required this.folder});

  factory _$UploadSignatureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadSignatureModelImplFromJson(json);

  @override
  @JsonKey(name: 'api_key')
  final String apiKey;
  @override
  @JsonKey(name: 'timestamp')
  final int timestamp;
  @override
  @JsonKey(name: 'signature')
  final String signature;
  @override
  @JsonKey(name: 'public_id')
  final String publicId;
  @override
  @JsonKey(name: 'folder')
  final String folder;

  @override
  String toString() {
    return 'UploadSignatureModel(apiKey: $apiKey, timestamp: $timestamp, signature: $signature, publicId: $publicId, folder: $folder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadSignatureModelImpl &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.publicId, publicId) ||
                other.publicId == publicId) &&
            (identical(other.folder, folder) || other.folder == folder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, apiKey, timestamp, signature, publicId, folder);

  /// Create a copy of UploadSignatureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadSignatureModelImplCopyWith<_$UploadSignatureModelImpl>
      get copyWith =>
          __$$UploadSignatureModelImplCopyWithImpl<_$UploadSignatureModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadSignatureModelImplToJson(
      this,
    );
  }
}

abstract class _UploadSignatureModel implements UploadSignatureModel {
  const factory _UploadSignatureModel(
          {@JsonKey(name: 'api_key') required final String apiKey,
          @JsonKey(name: 'timestamp') required final int timestamp,
          @JsonKey(name: 'signature') required final String signature,
          @JsonKey(name: 'public_id') required final String publicId,
          @JsonKey(name: 'folder') required final String folder}) =
      _$UploadSignatureModelImpl;

  factory _UploadSignatureModel.fromJson(Map<String, dynamic> json) =
      _$UploadSignatureModelImpl.fromJson;

  @override
  @JsonKey(name: 'api_key')
  String get apiKey;
  @override
  @JsonKey(name: 'timestamp')
  int get timestamp;
  @override
  @JsonKey(name: 'signature')
  String get signature;
  @override
  @JsonKey(name: 'public_id')
  String get publicId;
  @override
  @JsonKey(name: 'folder')
  String get folder;

  /// Create a copy of UploadSignatureModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadSignatureModelImplCopyWith<_$UploadSignatureModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
