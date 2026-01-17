// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String content,
            List<String> mediaUrls,
            List<String> tags,
            List<String> mentionIds,
            Map<String, dynamic>? location,
            bool allowComments,
            bool allowShare,
            String? campaignTitle)
        createPost,
    required TResult Function() clearPostTransient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String content,
            List<String> mediaUrls,
            List<String> tags,
            List<String> mentionIds,
            Map<String, dynamic>? location,
            bool allowComments,
            bool allowShare,
            String? campaignTitle)?
        createPost,
    TResult? Function()? clearPostTransient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String content,
            List<String> mediaUrls,
            List<String> tags,
            List<String> mentionIds,
            Map<String, dynamic>? location,
            bool allowComments,
            bool allowShare,
            String? campaignTitle)?
        createPost,
    TResult Function()? clearPostTransient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePostEvent value) createPost,
    required TResult Function(ClearPostTransientEvent value) clearPostTransient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatePostEvent value)? createPost,
    TResult? Function(ClearPostTransientEvent value)? clearPostTransient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePostEvent value)? createPost,
    TResult Function(ClearPostTransientEvent value)? clearPostTransient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res, PostEvent>;
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res, $Val extends PostEvent>
    implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreatePostEventImplCopyWith<$Res> {
  factory _$$CreatePostEventImplCopyWith(_$CreatePostEventImpl value,
          $Res Function(_$CreatePostEventImpl) then) =
      __$$CreatePostEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String content,
      List<String> mediaUrls,
      List<String> tags,
      List<String> mentionIds,
      Map<String, dynamic>? location,
      bool allowComments,
      bool allowShare,
      String? campaignTitle});
}

/// @nodoc
class __$$CreatePostEventImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$CreatePostEventImpl>
    implements _$$CreatePostEventImplCopyWith<$Res> {
  __$$CreatePostEventImplCopyWithImpl(
      _$CreatePostEventImpl _value, $Res Function(_$CreatePostEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? content = null,
    Object? mediaUrls = null,
    Object? tags = null,
    Object? mentionIds = null,
    Object? location = freezed,
    Object? allowComments = null,
    Object? allowShare = null,
    Object? campaignTitle = freezed,
  }) {
    return _then(_$CreatePostEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrls: null == mediaUrls
          ? _value._mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mentionIds: null == mentionIds
          ? _value._mentionIds
          : mentionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      allowComments: null == allowComments
          ? _value.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool,
      allowShare: null == allowShare
          ? _value.allowShare
          : allowShare // ignore: cast_nullable_to_non_nullable
              as bool,
      campaignTitle: freezed == campaignTitle
          ? _value.campaignTitle
          : campaignTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreatePostEventImpl implements CreatePostEvent {
  const _$CreatePostEventImpl(
      {required this.userId,
      required this.content,
      final List<String> mediaUrls = const [],
      final List<String> tags = const [],
      final List<String> mentionIds = const [],
      final Map<String, dynamic>? location,
      this.allowComments = true,
      this.allowShare = true,
      this.campaignTitle})
      : _mediaUrls = mediaUrls,
        _tags = tags,
        _mentionIds = mentionIds,
        _location = location;

  @override
  final String userId;
  @override
  final String content;
  final List<String> _mediaUrls;
  @override
  @JsonKey()
  List<String> get mediaUrls {
    if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaUrls);
  }

  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _mentionIds;
  @override
  @JsonKey()
  List<String> get mentionIds {
    if (_mentionIds is EqualUnmodifiableListView) return _mentionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentionIds);
  }

  final Map<String, dynamic>? _location;
  @override
  Map<String, dynamic>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool allowComments;
  @override
  @JsonKey()
  final bool allowShare;
  @override
  final String? campaignTitle;

  @override
  String toString() {
    return 'PostEvent.createPost(userId: $userId, content: $content, mediaUrls: $mediaUrls, tags: $tags, mentionIds: $mentionIds, location: $location, allowComments: $allowComments, allowShare: $allowShare, campaignTitle: $campaignTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._mediaUrls, _mediaUrls) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._mentionIds, _mentionIds) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.allowComments, allowComments) ||
                other.allowComments == allowComments) &&
            (identical(other.allowShare, allowShare) ||
                other.allowShare == allowShare) &&
            (identical(other.campaignTitle, campaignTitle) ||
                other.campaignTitle == campaignTitle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      content,
      const DeepCollectionEquality().hash(_mediaUrls),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_mentionIds),
      const DeepCollectionEquality().hash(_location),
      allowComments,
      allowShare,
      campaignTitle);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostEventImplCopyWith<_$CreatePostEventImpl> get copyWith =>
      __$$CreatePostEventImplCopyWithImpl<_$CreatePostEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String content,
            List<String> mediaUrls,
            List<String> tags,
            List<String> mentionIds,
            Map<String, dynamic>? location,
            bool allowComments,
            bool allowShare,
            String? campaignTitle)
        createPost,
    required TResult Function() clearPostTransient,
  }) {
    return createPost(userId, content, mediaUrls, tags, mentionIds, location,
        allowComments, allowShare, campaignTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String content,
            List<String> mediaUrls,
            List<String> tags,
            List<String> mentionIds,
            Map<String, dynamic>? location,
            bool allowComments,
            bool allowShare,
            String? campaignTitle)?
        createPost,
    TResult? Function()? clearPostTransient,
  }) {
    return createPost?.call(userId, content, mediaUrls, tags, mentionIds,
        location, allowComments, allowShare, campaignTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String content,
            List<String> mediaUrls,
            List<String> tags,
            List<String> mentionIds,
            Map<String, dynamic>? location,
            bool allowComments,
            bool allowShare,
            String? campaignTitle)?
        createPost,
    TResult Function()? clearPostTransient,
    required TResult orElse(),
  }) {
    if (createPost != null) {
      return createPost(userId, content, mediaUrls, tags, mentionIds, location,
          allowComments, allowShare, campaignTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePostEvent value) createPost,
    required TResult Function(ClearPostTransientEvent value) clearPostTransient,
  }) {
    return createPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatePostEvent value)? createPost,
    TResult? Function(ClearPostTransientEvent value)? clearPostTransient,
  }) {
    return createPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePostEvent value)? createPost,
    TResult Function(ClearPostTransientEvent value)? clearPostTransient,
    required TResult orElse(),
  }) {
    if (createPost != null) {
      return createPost(this);
    }
    return orElse();
  }
}

abstract class CreatePostEvent implements PostEvent {
  const factory CreatePostEvent(
      {required final String userId,
      required final String content,
      final List<String> mediaUrls,
      final List<String> tags,
      final List<String> mentionIds,
      final Map<String, dynamic>? location,
      final bool allowComments,
      final bool allowShare,
      final String? campaignTitle}) = _$CreatePostEventImpl;

  String get userId;
  String get content;
  List<String> get mediaUrls;
  List<String> get tags;
  List<String> get mentionIds;
  Map<String, dynamic>? get location;
  bool get allowComments;
  bool get allowShare;
  String? get campaignTitle;

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePostEventImplCopyWith<_$CreatePostEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPostTransientEventImplCopyWith<$Res> {
  factory _$$ClearPostTransientEventImplCopyWith(
          _$ClearPostTransientEventImpl value,
          $Res Function(_$ClearPostTransientEventImpl) then) =
      __$$ClearPostTransientEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPostTransientEventImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$ClearPostTransientEventImpl>
    implements _$$ClearPostTransientEventImplCopyWith<$Res> {
  __$$ClearPostTransientEventImplCopyWithImpl(
      _$ClearPostTransientEventImpl _value,
      $Res Function(_$ClearPostTransientEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPostTransientEventImpl implements ClearPostTransientEvent {
  const _$ClearPostTransientEventImpl();

  @override
  String toString() {
    return 'PostEvent.clearPostTransient()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPostTransientEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String content,
            List<String> mediaUrls,
            List<String> tags,
            List<String> mentionIds,
            Map<String, dynamic>? location,
            bool allowComments,
            bool allowShare,
            String? campaignTitle)
        createPost,
    required TResult Function() clearPostTransient,
  }) {
    return clearPostTransient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String content,
            List<String> mediaUrls,
            List<String> tags,
            List<String> mentionIds,
            Map<String, dynamic>? location,
            bool allowComments,
            bool allowShare,
            String? campaignTitle)?
        createPost,
    TResult? Function()? clearPostTransient,
  }) {
    return clearPostTransient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String content,
            List<String> mediaUrls,
            List<String> tags,
            List<String> mentionIds,
            Map<String, dynamic>? location,
            bool allowComments,
            bool allowShare,
            String? campaignTitle)?
        createPost,
    TResult Function()? clearPostTransient,
    required TResult orElse(),
  }) {
    if (clearPostTransient != null) {
      return clearPostTransient();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePostEvent value) createPost,
    required TResult Function(ClearPostTransientEvent value) clearPostTransient,
  }) {
    return clearPostTransient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatePostEvent value)? createPost,
    TResult? Function(ClearPostTransientEvent value)? clearPostTransient,
  }) {
    return clearPostTransient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePostEvent value)? createPost,
    TResult Function(ClearPostTransientEvent value)? clearPostTransient,
    required TResult orElse(),
  }) {
    if (clearPostTransient != null) {
      return clearPostTransient(this);
    }
    return orElse();
  }
}

abstract class ClearPostTransientEvent implements PostEvent {
  const factory ClearPostTransientEvent() = _$ClearPostTransientEventImpl;
}
