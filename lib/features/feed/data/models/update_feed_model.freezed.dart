// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateFeedModel _$UpdateFeedModelFromJson(Map<String, dynamic> json) {
  return _UpdateFeedModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateFeedModel {
<<<<<<< HEAD

@JsonKey(name: 'content') String? get content;@StringListConverter()@JsonKey(name: 'image_urls') List<String>? get imageUrls;@StringListConverter()@JsonKey(name: 'video_urls') List<String>? get videoUrls;// Post privacy settings
@JsonKey(name: 'comments_enabled') bool? get commentsEnabled;@JsonKey(name: 'hide_like_count') bool? get hideLikeCount;@JsonKey(name: 'hide_comment_count') bool? get hideCommentCount;@JsonKey(name: 'hide_share_count') bool? get hideShareCount;@JsonKey(name: 'hide_likes_list') bool? get hideLikesList;// Campaign association
@JsonKey(name: 'campaign_id') String? get campaignId;@JsonKey(name: 'campaign_title') String? get campaignTitle;
/// Create a copy of UpdateFeedModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFeedModelCopyWith<UpdateFeedModel> get copyWith => _$UpdateFeedModelCopyWithImpl<UpdateFeedModel>(this as UpdateFeedModel, _$identity);
=======
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @StringListConverter()
  @JsonKey(name: 'image_urls')
  List<String>? get imageUrls => throw _privateConstructorUsedError;
  @StringListConverter()
  @JsonKey(name: 'video_urls')
  List<String>? get videoUrls =>
      throw _privateConstructorUsedError; // per-post settings
  @JsonKey(name: 'comments_enabled')
  bool? get commentsEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'hide_like_count')
  bool? get hideLikeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'hide_comment_count')
  bool? get hideCommentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'hide_share_count')
  bool? get hideShareCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'hide_likes_list')
  bool? get hideLikesList => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaign_id')
  String? get campaignId => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaign_title')
  String? get campaignTitle => throw _privateConstructorUsedError;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d

  /// Serializes this UpdateFeedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFeedModelCopyWith<UpdateFeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFeedModelCopyWith<$Res> {
  factory $UpdateFeedModelCopyWith(
          UpdateFeedModel value, $Res Function(UpdateFeedModel) then) =
      _$UpdateFeedModelCopyWithImpl<$Res, UpdateFeedModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String? content,
      @StringListConverter()
      @JsonKey(name: 'image_urls')
      List<String>? imageUrls,
      @StringListConverter()
      @JsonKey(name: 'video_urls')
      List<String>? videoUrls,
      @JsonKey(name: 'comments_enabled') bool? commentsEnabled,
      @JsonKey(name: 'hide_like_count') bool? hideLikeCount,
      @JsonKey(name: 'hide_comment_count') bool? hideCommentCount,
      @JsonKey(name: 'hide_share_count') bool? hideShareCount,
      @JsonKey(name: 'hide_likes_list') bool? hideLikesList,
      @JsonKey(name: 'campaign_id') String? campaignId,
      @JsonKey(name: 'campaign_title') String? campaignTitle});
}

/// @nodoc
class _$UpdateFeedModelCopyWithImpl<$Res, $Val extends UpdateFeedModel>
    implements $UpdateFeedModelCopyWith<$Res> {
  _$UpdateFeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? imageUrls = freezed,
    Object? videoUrls = freezed,
    Object? commentsEnabled = freezed,
    Object? hideLikeCount = freezed,
    Object? hideCommentCount = freezed,
    Object? hideShareCount = freezed,
    Object? hideLikesList = freezed,
    Object? campaignId = freezed,
    Object? campaignTitle = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: freezed == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoUrls: freezed == videoUrls
          ? _value.videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      commentsEnabled: freezed == commentsEnabled
          ? _value.commentsEnabled
          : commentsEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideLikeCount: freezed == hideLikeCount
          ? _value.hideLikeCount
          : hideLikeCount // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideCommentCount: freezed == hideCommentCount
          ? _value.hideCommentCount
          : hideCommentCount // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideShareCount: freezed == hideShareCount
          ? _value.hideShareCount
          : hideShareCount // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideLikesList: freezed == hideLikesList
          ? _value.hideLikesList
          : hideLikesList // ignore: cast_nullable_to_non_nullable
              as bool?,
      campaignId: freezed == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignTitle: freezed == campaignTitle
          ? _value.campaignTitle
          : campaignTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateFeedModelImplCopyWith<$Res>
    implements $UpdateFeedModelCopyWith<$Res> {
  factory _$$UpdateFeedModelImplCopyWith(_$UpdateFeedModelImpl value,
          $Res Function(_$UpdateFeedModelImpl) then) =
      __$$UpdateFeedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String? content,
      @StringListConverter()
      @JsonKey(name: 'image_urls')
      List<String>? imageUrls,
      @StringListConverter()
      @JsonKey(name: 'video_urls')
      List<String>? videoUrls,
      @JsonKey(name: 'comments_enabled') bool? commentsEnabled,
      @JsonKey(name: 'hide_like_count') bool? hideLikeCount,
      @JsonKey(name: 'hide_comment_count') bool? hideCommentCount,
      @JsonKey(name: 'hide_share_count') bool? hideShareCount,
      @JsonKey(name: 'hide_likes_list') bool? hideLikesList,
      @JsonKey(name: 'campaign_id') String? campaignId,
      @JsonKey(name: 'campaign_title') String? campaignTitle});
}

/// @nodoc
class __$$UpdateFeedModelImplCopyWithImpl<$Res>
    extends _$UpdateFeedModelCopyWithImpl<$Res, _$UpdateFeedModelImpl>
    implements _$$UpdateFeedModelImplCopyWith<$Res> {
  __$$UpdateFeedModelImplCopyWithImpl(
      _$UpdateFeedModelImpl _value, $Res Function(_$UpdateFeedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? imageUrls = freezed,
    Object? videoUrls = freezed,
    Object? commentsEnabled = freezed,
    Object? hideLikeCount = freezed,
    Object? hideCommentCount = freezed,
    Object? hideShareCount = freezed,
    Object? hideLikesList = freezed,
    Object? campaignId = freezed,
    Object? campaignTitle = freezed,
  }) {
    return _then(_$UpdateFeedModelImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: freezed == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoUrls: freezed == videoUrls
          ? _value._videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      commentsEnabled: freezed == commentsEnabled
          ? _value.commentsEnabled
          : commentsEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideLikeCount: freezed == hideLikeCount
          ? _value.hideLikeCount
          : hideLikeCount // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideCommentCount: freezed == hideCommentCount
          ? _value.hideCommentCount
          : hideCommentCount // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideShareCount: freezed == hideShareCount
          ? _value.hideShareCount
          : hideShareCount // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideLikesList: freezed == hideLikesList
          ? _value.hideLikesList
          : hideLikesList // ignore: cast_nullable_to_non_nullable
              as bool?,
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

@JsonSerializable(includeIfNull: false)
class _$UpdateFeedModelImpl implements _UpdateFeedModel {
  const _$UpdateFeedModelImpl(
      {@JsonKey(name: 'content') this.content,
      @StringListConverter()
      @JsonKey(name: 'image_urls')
      final List<String>? imageUrls,
      @StringListConverter()
      @JsonKey(name: 'video_urls')
      final List<String>? videoUrls,
      @JsonKey(name: 'comments_enabled') this.commentsEnabled,
      @JsonKey(name: 'hide_like_count') this.hideLikeCount,
      @JsonKey(name: 'hide_comment_count') this.hideCommentCount,
      @JsonKey(name: 'hide_share_count') this.hideShareCount,
      @JsonKey(name: 'hide_likes_list') this.hideLikesList,
      @JsonKey(name: 'campaign_id') this.campaignId,
      @JsonKey(name: 'campaign_title') this.campaignTitle})
      : _imageUrls = imageUrls,
        _videoUrls = videoUrls;

  factory _$UpdateFeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateFeedModelImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String? content;
  final List<String>? _imageUrls;
  @override
  @StringListConverter()
  @JsonKey(name: 'image_urls')
  List<String>? get imageUrls {
    final value = _imageUrls;
    if (value == null) return null;
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _videoUrls;
  @override
  @StringListConverter()
  @JsonKey(name: 'video_urls')
  List<String>? get videoUrls {
    final value = _videoUrls;
    if (value == null) return null;
    if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

<<<<<<< HEAD
// Post privacy settings
@override@JsonKey(name: 'comments_enabled') final  bool? commentsEnabled;
@override@JsonKey(name: 'hide_like_count') final  bool? hideLikeCount;
@override@JsonKey(name: 'hide_comment_count') final  bool? hideCommentCount;
@override@JsonKey(name: 'hide_share_count') final  bool? hideShareCount;
@override@JsonKey(name: 'hide_likes_list') final  bool? hideLikesList;
// Campaign association
@override@JsonKey(name: 'campaign_id') final  String? campaignId;
@override@JsonKey(name: 'campaign_title') final  String? campaignTitle;
=======
// per-post settings
  @override
  @JsonKey(name: 'comments_enabled')
  final bool? commentsEnabled;
  @override
  @JsonKey(name: 'hide_like_count')
  final bool? hideLikeCount;
  @override
  @JsonKey(name: 'hide_comment_count')
  final bool? hideCommentCount;
  @override
  @JsonKey(name: 'hide_share_count')
  final bool? hideShareCount;
  @override
  @JsonKey(name: 'hide_likes_list')
  final bool? hideLikesList;
  @override
  @JsonKey(name: 'campaign_id')
  final String? campaignId;
  @override
  @JsonKey(name: 'campaign_title')
  final String? campaignTitle;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d

  @override
  String toString() {
    return 'UpdateFeedModel(content: $content, imageUrls: $imageUrls, videoUrls: $videoUrls, commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideCommentCount: $hideCommentCount, hideShareCount: $hideShareCount, hideLikesList: $hideLikesList, campaignId: $campaignId, campaignTitle: $campaignTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFeedModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
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

  /// Create a copy of UpdateFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFeedModelImplCopyWith<_$UpdateFeedModelImpl> get copyWith =>
      __$$UpdateFeedModelImplCopyWithImpl<_$UpdateFeedModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFeedModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateFeedModel implements UpdateFeedModel {
  const factory _UpdateFeedModel(
          {@JsonKey(name: 'content') final String? content,
          @StringListConverter()
          @JsonKey(name: 'image_urls')
          final List<String>? imageUrls,
          @StringListConverter()
          @JsonKey(name: 'video_urls')
          final List<String>? videoUrls,
          @JsonKey(name: 'comments_enabled') final bool? commentsEnabled,
          @JsonKey(name: 'hide_like_count') final bool? hideLikeCount,
          @JsonKey(name: 'hide_comment_count') final bool? hideCommentCount,
          @JsonKey(name: 'hide_share_count') final bool? hideShareCount,
          @JsonKey(name: 'hide_likes_list') final bool? hideLikesList,
          @JsonKey(name: 'campaign_id') final String? campaignId,
          @JsonKey(name: 'campaign_title') final String? campaignTitle}) =
      _$UpdateFeedModelImpl;

  factory _UpdateFeedModel.fromJson(Map<String, dynamic> json) =
      _$UpdateFeedModelImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @StringListConverter()
  @JsonKey(name: 'image_urls')
  List<String>? get imageUrls;
  @override
  @StringListConverter()
  @JsonKey(name: 'video_urls')
  List<String>? get videoUrls; // per-post settings
  @override
  @JsonKey(name: 'comments_enabled')
  bool? get commentsEnabled;
  @override
  @JsonKey(name: 'hide_like_count')
  bool? get hideLikeCount;
  @override
  @JsonKey(name: 'hide_comment_count')
  bool? get hideCommentCount;
  @override
  @JsonKey(name: 'hide_share_count')
  bool? get hideShareCount;
  @override
  @JsonKey(name: 'hide_likes_list')
  bool? get hideLikesList;
  @override
  @JsonKey(name: 'campaign_id')
  String? get campaignId;
  @override
  @JsonKey(name: 'campaign_title')
  String? get campaignTitle;

  /// Create a copy of UpdateFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFeedModelImplCopyWith<_$UpdateFeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
