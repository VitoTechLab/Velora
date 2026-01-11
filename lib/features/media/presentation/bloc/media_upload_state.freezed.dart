// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_upload_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MediaUploadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(List<MediaAsset> assets) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(List<MediaAsset> assets)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(List<MediaAsset> assets)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaUploadInitial value) initial,
    required TResult Function(MediaUploadLoading value) uploading,
    required TResult Function(MediaUploadSuccess value) success,
    required TResult Function(MediaUploadFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaUploadInitial value)? initial,
    TResult? Function(MediaUploadLoading value)? uploading,
    TResult? Function(MediaUploadSuccess value)? success,
    TResult? Function(MediaUploadFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaUploadInitial value)? initial,
    TResult Function(MediaUploadLoading value)? uploading,
    TResult Function(MediaUploadSuccess value)? success,
    TResult Function(MediaUploadFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaUploadStateCopyWith<$Res> {
  factory $MediaUploadStateCopyWith(
          MediaUploadState value, $Res Function(MediaUploadState) then) =
      _$MediaUploadStateCopyWithImpl<$Res, MediaUploadState>;
}

/// @nodoc
class _$MediaUploadStateCopyWithImpl<$Res, $Val extends MediaUploadState>
    implements $MediaUploadStateCopyWith<$Res> {
  _$MediaUploadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaUploadState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MediaUploadInitialImplCopyWith<$Res> {
  factory _$$MediaUploadInitialImplCopyWith(_$MediaUploadInitialImpl value,
          $Res Function(_$MediaUploadInitialImpl) then) =
      __$$MediaUploadInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MediaUploadInitialImplCopyWithImpl<$Res>
    extends _$MediaUploadStateCopyWithImpl<$Res, _$MediaUploadInitialImpl>
    implements _$$MediaUploadInitialImplCopyWith<$Res> {
  __$$MediaUploadInitialImplCopyWithImpl(_$MediaUploadInitialImpl _value,
      $Res Function(_$MediaUploadInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaUploadState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MediaUploadInitialImpl implements MediaUploadInitial {
  const _$MediaUploadInitialImpl();

  @override
  String toString() {
    return 'MediaUploadState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MediaUploadInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(List<MediaAsset> assets) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(List<MediaAsset> assets)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(List<MediaAsset> assets)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaUploadInitial value) initial,
    required TResult Function(MediaUploadLoading value) uploading,
    required TResult Function(MediaUploadSuccess value) success,
    required TResult Function(MediaUploadFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaUploadInitial value)? initial,
    TResult? Function(MediaUploadLoading value)? uploading,
    TResult? Function(MediaUploadSuccess value)? success,
    TResult? Function(MediaUploadFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaUploadInitial value)? initial,
    TResult Function(MediaUploadLoading value)? uploading,
    TResult Function(MediaUploadSuccess value)? success,
    TResult Function(MediaUploadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MediaUploadInitial implements MediaUploadState {
  const factory MediaUploadInitial() = _$MediaUploadInitialImpl;
}

/// @nodoc
abstract class _$$MediaUploadLoadingImplCopyWith<$Res> {
  factory _$$MediaUploadLoadingImplCopyWith(_$MediaUploadLoadingImpl value,
          $Res Function(_$MediaUploadLoadingImpl) then) =
      __$$MediaUploadLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MediaUploadLoadingImplCopyWithImpl<$Res>
    extends _$MediaUploadStateCopyWithImpl<$Res, _$MediaUploadLoadingImpl>
    implements _$$MediaUploadLoadingImplCopyWith<$Res> {
  __$$MediaUploadLoadingImplCopyWithImpl(_$MediaUploadLoadingImpl _value,
      $Res Function(_$MediaUploadLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaUploadState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MediaUploadLoadingImpl implements MediaUploadLoading {
  const _$MediaUploadLoadingImpl();

  @override
  String toString() {
    return 'MediaUploadState.uploading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MediaUploadLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(List<MediaAsset> assets) success,
    required TResult Function(String message) failure,
  }) {
    return uploading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(List<MediaAsset> assets)? success,
    TResult? Function(String message)? failure,
  }) {
    return uploading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(List<MediaAsset> assets)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaUploadInitial value) initial,
    required TResult Function(MediaUploadLoading value) uploading,
    required TResult Function(MediaUploadSuccess value) success,
    required TResult Function(MediaUploadFailure value) failure,
  }) {
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaUploadInitial value)? initial,
    TResult? Function(MediaUploadLoading value)? uploading,
    TResult? Function(MediaUploadSuccess value)? success,
    TResult? Function(MediaUploadFailure value)? failure,
  }) {
    return uploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaUploadInitial value)? initial,
    TResult Function(MediaUploadLoading value)? uploading,
    TResult Function(MediaUploadSuccess value)? success,
    TResult Function(MediaUploadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class MediaUploadLoading implements MediaUploadState {
  const factory MediaUploadLoading() = _$MediaUploadLoadingImpl;
}

/// @nodoc
abstract class _$$MediaUploadSuccessImplCopyWith<$Res> {
  factory _$$MediaUploadSuccessImplCopyWith(_$MediaUploadSuccessImpl value,
          $Res Function(_$MediaUploadSuccessImpl) then) =
      __$$MediaUploadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MediaAsset> assets});
}

/// @nodoc
class __$$MediaUploadSuccessImplCopyWithImpl<$Res>
    extends _$MediaUploadStateCopyWithImpl<$Res, _$MediaUploadSuccessImpl>
    implements _$$MediaUploadSuccessImplCopyWith<$Res> {
  __$$MediaUploadSuccessImplCopyWithImpl(_$MediaUploadSuccessImpl _value,
      $Res Function(_$MediaUploadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaUploadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assets = null,
  }) {
    return _then(_$MediaUploadSuccessImpl(
      null == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<MediaAsset>,
    ));
  }
}

/// @nodoc

class _$MediaUploadSuccessImpl implements MediaUploadSuccess {
  const _$MediaUploadSuccessImpl(final List<MediaAsset> assets)
      : _assets = assets;

  final List<MediaAsset> _assets;
  @override
  List<MediaAsset> get assets {
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assets);
  }

  @override
  String toString() {
    return 'MediaUploadState.success(assets: $assets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaUploadSuccessImpl &&
            const DeepCollectionEquality().equals(other._assets, _assets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assets));

  /// Create a copy of MediaUploadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaUploadSuccessImplCopyWith<_$MediaUploadSuccessImpl> get copyWith =>
      __$$MediaUploadSuccessImplCopyWithImpl<_$MediaUploadSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(List<MediaAsset> assets) success,
    required TResult Function(String message) failure,
  }) {
    return success(assets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(List<MediaAsset> assets)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(assets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(List<MediaAsset> assets)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(assets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaUploadInitial value) initial,
    required TResult Function(MediaUploadLoading value) uploading,
    required TResult Function(MediaUploadSuccess value) success,
    required TResult Function(MediaUploadFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaUploadInitial value)? initial,
    TResult? Function(MediaUploadLoading value)? uploading,
    TResult? Function(MediaUploadSuccess value)? success,
    TResult? Function(MediaUploadFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaUploadInitial value)? initial,
    TResult Function(MediaUploadLoading value)? uploading,
    TResult Function(MediaUploadSuccess value)? success,
    TResult Function(MediaUploadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MediaUploadSuccess implements MediaUploadState {
  const factory MediaUploadSuccess(final List<MediaAsset> assets) =
      _$MediaUploadSuccessImpl;

  List<MediaAsset> get assets;

  /// Create a copy of MediaUploadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaUploadSuccessImplCopyWith<_$MediaUploadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaUploadFailureImplCopyWith<$Res> {
  factory _$$MediaUploadFailureImplCopyWith(_$MediaUploadFailureImpl value,
          $Res Function(_$MediaUploadFailureImpl) then) =
      __$$MediaUploadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MediaUploadFailureImplCopyWithImpl<$Res>
    extends _$MediaUploadStateCopyWithImpl<$Res, _$MediaUploadFailureImpl>
    implements _$$MediaUploadFailureImplCopyWith<$Res> {
  __$$MediaUploadFailureImplCopyWithImpl(_$MediaUploadFailureImpl _value,
      $Res Function(_$MediaUploadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaUploadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MediaUploadFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MediaUploadFailureImpl implements MediaUploadFailure {
  const _$MediaUploadFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MediaUploadState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaUploadFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MediaUploadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaUploadFailureImplCopyWith<_$MediaUploadFailureImpl> get copyWith =>
      __$$MediaUploadFailureImplCopyWithImpl<_$MediaUploadFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(List<MediaAsset> assets) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(List<MediaAsset> assets)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(List<MediaAsset> assets)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaUploadInitial value) initial,
    required TResult Function(MediaUploadLoading value) uploading,
    required TResult Function(MediaUploadSuccess value) success,
    required TResult Function(MediaUploadFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaUploadInitial value)? initial,
    TResult? Function(MediaUploadLoading value)? uploading,
    TResult? Function(MediaUploadSuccess value)? success,
    TResult? Function(MediaUploadFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaUploadInitial value)? initial,
    TResult Function(MediaUploadLoading value)? uploading,
    TResult Function(MediaUploadSuccess value)? success,
    TResult Function(MediaUploadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class MediaUploadFailure implements MediaUploadState {
  const factory MediaUploadFailure(final String message) =
      _$MediaUploadFailureImpl;

  String get message;

  /// Create a copy of MediaUploadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaUploadFailureImplCopyWith<_$MediaUploadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
