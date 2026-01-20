// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_upload_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MediaUploadEvent {
  List<File> get files => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<File> files, String userId, String postId)
        uploadForPost,
    required TResult Function(
            List<File> files, String userId, String campaignId)
        uploadForCampaign,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<File> files, String userId, String postId)?
        uploadForPost,
    TResult? Function(List<File> files, String userId, String campaignId)?
        uploadForCampaign,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<File> files, String userId, String postId)?
        uploadForPost,
    TResult Function(List<File> files, String userId, String campaignId)?
        uploadForCampaign,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadForPostEvent value) uploadForPost,
    required TResult Function(UploadForCampaignEvent value) uploadForCampaign,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadForPostEvent value)? uploadForPost,
    TResult? Function(UploadForCampaignEvent value)? uploadForCampaign,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadForPostEvent value)? uploadForPost,
    TResult Function(UploadForCampaignEvent value)? uploadForCampaign,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MediaUploadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaUploadEventCopyWith<MediaUploadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaUploadEventCopyWith<$Res> {
  factory $MediaUploadEventCopyWith(
          MediaUploadEvent value, $Res Function(MediaUploadEvent) then) =
      _$MediaUploadEventCopyWithImpl<$Res, MediaUploadEvent>;
  @useResult
  $Res call({List<File> files, String userId});
}

/// @nodoc
class _$MediaUploadEventCopyWithImpl<$Res, $Val extends MediaUploadEvent>
    implements $MediaUploadEventCopyWith<$Res> {
  _$MediaUploadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaUploadEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadForPostEventImplCopyWith<$Res>
    implements $MediaUploadEventCopyWith<$Res> {
  factory _$$UploadForPostEventImplCopyWith(_$UploadForPostEventImpl value,
          $Res Function(_$UploadForPostEventImpl) then) =
      __$$UploadForPostEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<File> files, String userId, String postId});
}

/// @nodoc
class __$$UploadForPostEventImplCopyWithImpl<$Res>
    extends _$MediaUploadEventCopyWithImpl<$Res, _$UploadForPostEventImpl>
    implements _$$UploadForPostEventImplCopyWith<$Res> {
  __$$UploadForPostEventImplCopyWithImpl(_$UploadForPostEventImpl _value,
      $Res Function(_$UploadForPostEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaUploadEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? userId = null,
    Object? postId = null,
  }) {
    return _then(_$UploadForPostEventImpl(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadForPostEventImpl implements UploadForPostEvent {
  const _$UploadForPostEventImpl(
      {required final List<File> files,
      required this.userId,
      required this.postId})
      : _files = files;

  final List<File> _files;
  @override
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  final String userId;
  @override
  final String postId;

  @override
  String toString() {
    return 'MediaUploadEvent.uploadForPost(files: $files, userId: $userId, postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadForPostEventImpl &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_files), userId, postId);

  /// Create a copy of MediaUploadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadForPostEventImplCopyWith<_$UploadForPostEventImpl> get copyWith =>
      __$$UploadForPostEventImplCopyWithImpl<_$UploadForPostEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<File> files, String userId, String postId)
        uploadForPost,
    required TResult Function(
            List<File> files, String userId, String campaignId)
        uploadForCampaign,
  }) {
    return uploadForPost(files, userId, postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<File> files, String userId, String postId)?
        uploadForPost,
    TResult? Function(List<File> files, String userId, String campaignId)?
        uploadForCampaign,
  }) {
    return uploadForPost?.call(files, userId, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<File> files, String userId, String postId)?
        uploadForPost,
    TResult Function(List<File> files, String userId, String campaignId)?
        uploadForCampaign,
    required TResult orElse(),
  }) {
    if (uploadForPost != null) {
      return uploadForPost(files, userId, postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadForPostEvent value) uploadForPost,
    required TResult Function(UploadForCampaignEvent value) uploadForCampaign,
  }) {
    return uploadForPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadForPostEvent value)? uploadForPost,
    TResult? Function(UploadForCampaignEvent value)? uploadForCampaign,
  }) {
    return uploadForPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadForPostEvent value)? uploadForPost,
    TResult Function(UploadForCampaignEvent value)? uploadForCampaign,
    required TResult orElse(),
  }) {
    if (uploadForPost != null) {
      return uploadForPost(this);
    }
    return orElse();
  }
}

abstract class UploadForPostEvent implements MediaUploadEvent {
  const factory UploadForPostEvent(
      {required final List<File> files,
      required final String userId,
      required final String postId}) = _$UploadForPostEventImpl;

  @override
  List<File> get files;
  @override
  String get userId;
  String get postId;

  /// Create a copy of MediaUploadEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadForPostEventImplCopyWith<_$UploadForPostEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadForCampaignEventImplCopyWith<$Res>
    implements $MediaUploadEventCopyWith<$Res> {
  factory _$$UploadForCampaignEventImplCopyWith(
          _$UploadForCampaignEventImpl value,
          $Res Function(_$UploadForCampaignEventImpl) then) =
      __$$UploadForCampaignEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<File> files, String userId, String campaignId});
}

/// @nodoc
class __$$UploadForCampaignEventImplCopyWithImpl<$Res>
    extends _$MediaUploadEventCopyWithImpl<$Res, _$UploadForCampaignEventImpl>
    implements _$$UploadForCampaignEventImplCopyWith<$Res> {
  __$$UploadForCampaignEventImplCopyWithImpl(
      _$UploadForCampaignEventImpl _value,
      $Res Function(_$UploadForCampaignEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaUploadEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? userId = null,
    Object? campaignId = null,
  }) {
    return _then(_$UploadForCampaignEventImpl(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadForCampaignEventImpl implements UploadForCampaignEvent {
  const _$UploadForCampaignEventImpl(
      {required final List<File> files,
      required this.userId,
      required this.campaignId})
      : _files = files;

  final List<File> _files;
  @override
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  final String userId;
  @override
  final String campaignId;

  @override
  String toString() {
    return 'MediaUploadEvent.uploadForCampaign(files: $files, userId: $userId, campaignId: $campaignId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadForCampaignEventImpl &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_files), userId, campaignId);

  /// Create a copy of MediaUploadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadForCampaignEventImplCopyWith<_$UploadForCampaignEventImpl>
      get copyWith => __$$UploadForCampaignEventImplCopyWithImpl<
          _$UploadForCampaignEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<File> files, String userId, String postId)
        uploadForPost,
    required TResult Function(
            List<File> files, String userId, String campaignId)
        uploadForCampaign,
  }) {
    return uploadForCampaign(files, userId, campaignId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<File> files, String userId, String postId)?
        uploadForPost,
    TResult? Function(List<File> files, String userId, String campaignId)?
        uploadForCampaign,
  }) {
    return uploadForCampaign?.call(files, userId, campaignId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<File> files, String userId, String postId)?
        uploadForPost,
    TResult Function(List<File> files, String userId, String campaignId)?
        uploadForCampaign,
    required TResult orElse(),
  }) {
    if (uploadForCampaign != null) {
      return uploadForCampaign(files, userId, campaignId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadForPostEvent value) uploadForPost,
    required TResult Function(UploadForCampaignEvent value) uploadForCampaign,
  }) {
    return uploadForCampaign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadForPostEvent value)? uploadForPost,
    TResult? Function(UploadForCampaignEvent value)? uploadForCampaign,
  }) {
    return uploadForCampaign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadForPostEvent value)? uploadForPost,
    TResult Function(UploadForCampaignEvent value)? uploadForCampaign,
    required TResult orElse(),
  }) {
    if (uploadForCampaign != null) {
      return uploadForCampaign(this);
    }
    return orElse();
  }
}

abstract class UploadForCampaignEvent implements MediaUploadEvent {
  const factory UploadForCampaignEvent(
      {required final List<File> files,
      required final String userId,
      required final String campaignId}) = _$UploadForCampaignEventImpl;

  @override
  List<File> get files;
  @override
  String get userId;
  String get campaignId;

  /// Create a copy of MediaUploadEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadForCampaignEventImplCopyWith<_$UploadForCampaignEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
