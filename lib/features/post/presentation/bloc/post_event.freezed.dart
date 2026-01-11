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
            List<String> imageUrls,
            List<String> videoUrls,
            bool commentsEnabled,
            bool hideLikeCount,
            bool hideCommentCount,
            bool hideShareCount,
            bool hideLikesList,
            String? campaignId,
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
            List<String> imageUrls,
            List<String> videoUrls,
            bool commentsEnabled,
            bool hideLikeCount,
            bool hideCommentCount,
            bool hideShareCount,
            bool hideLikesList,
            String? campaignId,
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
            List<String> imageUrls,
            List<String> videoUrls,
            bool commentsEnabled,
            bool hideLikeCount,
            bool hideCommentCount,
            bool hideShareCount,
            bool hideLikesList,
            String? campaignId,
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
      List<String> imageUrls,
      List<String> videoUrls,
      bool commentsEnabled,
      bool hideLikeCount,
      bool hideCommentCount,
      bool hideShareCount,
      bool hideLikesList,
      String? campaignId,
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
    Object? imageUrls = null,
    Object? videoUrls = null,
    Object? commentsEnabled = null,
    Object? hideLikeCount = null,
    Object? hideCommentCount = null,
    Object? hideShareCount = null,
    Object? hideLikesList = null,
    Object? campaignId = freezed,
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
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoUrls: null == videoUrls
          ? _value._videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commentsEnabled: null == commentsEnabled
          ? _value.commentsEnabled
          : commentsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      hideLikeCount: null == hideLikeCount
          ? _value.hideLikeCount
          : hideLikeCount // ignore: cast_nullable_to_non_nullable
              as bool,
      hideCommentCount: null == hideCommentCount
          ? _value.hideCommentCount
          : hideCommentCount // ignore: cast_nullable_to_non_nullable
              as bool,
      hideShareCount: null == hideShareCount
          ? _value.hideShareCount
          : hideShareCount // ignore: cast_nullable_to_non_nullable
              as bool,
      hideLikesList: null == hideLikesList
          ? _value.hideLikesList
          : hideLikesList // ignore: cast_nullable_to_non_nullable
              as bool,
      campaignId: freezed == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      final List<String> imageUrls = const [],
      final List<String> videoUrls = const [],
      this.commentsEnabled = true,
      this.hideLikeCount = false,
      this.hideCommentCount = false,
      this.hideShareCount = false,
      this.hideLikesList = false,
      this.campaignId,
      this.campaignTitle})
      : _imageUrls = imageUrls,
        _videoUrls = videoUrls;

  @override
  final String userId;
  @override
  final String content;
  final List<String> _imageUrls;
  @override
  @JsonKey()
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  final List<String> _videoUrls;
  @override
  @JsonKey()
  List<String> get videoUrls {
    if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoUrls);
  }

  @override
  @JsonKey()
  final bool commentsEnabled;
  @override
  @JsonKey()
  final bool hideLikeCount;
  @override
  @JsonKey()
  final bool hideCommentCount;
  @override
  @JsonKey()
  final bool hideShareCount;
  @override
  @JsonKey()
  final bool hideLikesList;
  @override
  final String? campaignId;
  @override
  final String? campaignTitle;

  @override
  String toString() {
    return 'PostEvent.createPost(userId: $userId, content: $content, imageUrls: $imageUrls, videoUrls: $videoUrls, commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideCommentCount: $hideCommentCount, hideShareCount: $hideShareCount, hideLikesList: $hideLikesList, campaignId: $campaignId, campaignTitle: $campaignTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            const DeepCollectionEquality()
                .equals(other._videoUrls, _videoUrls) &&
            (identical(other.commentsEnabled, commentsEnabled) ||
                other.commentsEnabled == commentsEnabled) &&
            (identical(other.hideLikeCount, hideLikeCount) ||
                other.hideLikeCount == hideLikeCount) &&
            (identical(other.hideCommentCount, hideCommentCount) ||
                other.hideCommentCount == hideCommentCount) &&
            (identical(other.hideShareCount, hideShareCount) ||
                other.hideShareCount == hideShareCount) &&
            (identical(other.hideLikesList, hideLikesList) ||
                other.hideLikesList == hideLikesList) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.campaignTitle, campaignTitle) ||
                other.campaignTitle == campaignTitle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      content,
      const DeepCollectionEquality().hash(_imageUrls),
      const DeepCollectionEquality().hash(_videoUrls),
      commentsEnabled,
      hideLikeCount,
      hideCommentCount,
      hideShareCount,
      hideLikesList,
      campaignId,
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
            List<String> imageUrls,
            List<String> videoUrls,
            bool commentsEnabled,
            bool hideLikeCount,
            bool hideCommentCount,
            bool hideShareCount,
            bool hideLikesList,
            String? campaignId,
            String? campaignTitle)
        createPost,
    required TResult Function() clearPostTransient,
  }) {
    return createPost(
        userId,
        content,
        imageUrls,
        videoUrls,
        commentsEnabled,
        hideLikeCount,
        hideCommentCount,
        hideShareCount,
        hideLikesList,
        campaignId,
        campaignTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String content,
            List<String> imageUrls,
            List<String> videoUrls,
            bool commentsEnabled,
            bool hideLikeCount,
            bool hideCommentCount,
            bool hideShareCount,
            bool hideLikesList,
            String? campaignId,
            String? campaignTitle)?
        createPost,
    TResult? Function()? clearPostTransient,
  }) {
    return createPost?.call(
        userId,
        content,
        imageUrls,
        videoUrls,
        commentsEnabled,
        hideLikeCount,
        hideCommentCount,
        hideShareCount,
        hideLikesList,
        campaignId,
        campaignTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String content,
            List<String> imageUrls,
            List<String> videoUrls,
            bool commentsEnabled,
            bool hideLikeCount,
            bool hideCommentCount,
            bool hideShareCount,
            bool hideLikesList,
            String? campaignId,
            String? campaignTitle)?
        createPost,
    TResult Function()? clearPostTransient,
    required TResult orElse(),
  }) {
    if (createPost != null) {
      return createPost(
          userId,
          content,
          imageUrls,
          videoUrls,
          commentsEnabled,
          hideLikeCount,
          hideCommentCount,
          hideShareCount,
          hideLikesList,
          campaignId,
          campaignTitle);
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
      final List<String> imageUrls,
      final List<String> videoUrls,
      final bool commentsEnabled,
      final bool hideLikeCount,
      final bool hideCommentCount,
      final bool hideShareCount,
      final bool hideLikesList,
      final String? campaignId,
      final String? campaignTitle}) = _$CreatePostEventImpl;

  String get userId;
  String get content;
  List<String> get imageUrls;
  List<String> get videoUrls;
  bool get commentsEnabled;
  bool get hideLikeCount;
  bool get hideCommentCount;
  bool get hideShareCount;
  bool get hideLikesList;
  String? get campaignId;
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
            List<String> imageUrls,
            List<String> videoUrls,
            bool commentsEnabled,
            bool hideLikeCount,
            bool hideCommentCount,
            bool hideShareCount,
            bool hideLikesList,
            String? campaignId,
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
            List<String> imageUrls,
            List<String> videoUrls,
            bool commentsEnabled,
            bool hideLikeCount,
            bool hideCommentCount,
            bool hideShareCount,
            bool hideLikesList,
            String? campaignId,
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
            List<String> imageUrls,
            List<String> videoUrls,
            bool commentsEnabled,
            bool hideLikeCount,
            bool hideCommentCount,
            bool hideShareCount,
            bool hideLikesList,
            String? campaignId,
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
