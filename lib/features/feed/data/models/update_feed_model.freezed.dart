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
  @JsonKey(name: 'caption')
  String? get content => throw _privateConstructorUsedError;
  @StringListConverter()
  @JsonKey(name: 'media_urls')
  List<String>? get mediaUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  Map<String, dynamic>? get location => throw _privateConstructorUsedError;
  @StringListConverter()
  @JsonKey(name: 'tags')
  List<String>? get tags => throw _privateConstructorUsedError;
  @StringListConverter()
  @JsonKey(name: 'mention_ids')
  List<String>? get mentionIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_comments')
  bool? get allowComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_share')
  bool? get allowShare => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaign_id')
  String? get campaignId => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaign_title')
  String? get campaignTitle => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'caption') String? content,
      @StringListConverter()
      @JsonKey(name: 'media_urls')
      List<String>? mediaUrls,
      @JsonKey(name: 'location') Map<String, dynamic>? location,
      @StringListConverter() @JsonKey(name: 'tags') List<String>? tags,
      @StringListConverter()
      @JsonKey(name: 'mention_ids')
      List<String>? mentionIds,
      @JsonKey(name: 'allow_comments') bool? allowComments,
      @JsonKey(name: 'allow_share') bool? allowShare,
      @JsonKey(name: 'is_active') bool? isActive,
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
    Object? mediaUrls = freezed,
    Object? location = freezed,
    Object? tags = freezed,
    Object? mentionIds = freezed,
    Object? allowComments = freezed,
    Object? allowShare = freezed,
    Object? isActive = freezed,
    Object? campaignId = freezed,
    Object? campaignTitle = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaUrls: freezed == mediaUrls
          ? _value.mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mentionIds: freezed == mentionIds
          ? _value.mentionIds
          : mentionIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      allowComments: freezed == allowComments
          ? _value.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowShare: freezed == allowShare
          ? _value.allowShare
          : allowShare // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'caption') String? content,
      @StringListConverter()
      @JsonKey(name: 'media_urls')
      List<String>? mediaUrls,
      @JsonKey(name: 'location') Map<String, dynamic>? location,
      @StringListConverter() @JsonKey(name: 'tags') List<String>? tags,
      @StringListConverter()
      @JsonKey(name: 'mention_ids')
      List<String>? mentionIds,
      @JsonKey(name: 'allow_comments') bool? allowComments,
      @JsonKey(name: 'allow_share') bool? allowShare,
      @JsonKey(name: 'is_active') bool? isActive,
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
    Object? mediaUrls = freezed,
    Object? location = freezed,
    Object? tags = freezed,
    Object? mentionIds = freezed,
    Object? allowComments = freezed,
    Object? allowShare = freezed,
    Object? isActive = freezed,
    Object? campaignId = freezed,
    Object? campaignTitle = freezed,
  }) {
    return _then(_$UpdateFeedModelImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaUrls: freezed == mediaUrls
          ? _value._mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      location: freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mentionIds: freezed == mentionIds
          ? _value._mentionIds
          : mentionIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      allowComments: freezed == allowComments
          ? _value.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowShare: freezed == allowShare
          ? _value.allowShare
          : allowShare // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'caption') this.content,
      @StringListConverter()
      @JsonKey(name: 'media_urls')
      final List<String>? mediaUrls,
      @JsonKey(name: 'location') final Map<String, dynamic>? location,
      @StringListConverter() @JsonKey(name: 'tags') final List<String>? tags,
      @StringListConverter()
      @JsonKey(name: 'mention_ids')
      final List<String>? mentionIds,
      @JsonKey(name: 'allow_comments') this.allowComments,
      @JsonKey(name: 'allow_share') this.allowShare,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'campaign_id') this.campaignId,
      @JsonKey(name: 'campaign_title') this.campaignTitle})
      : _mediaUrls = mediaUrls,
        _location = location,
        _tags = tags,
        _mentionIds = mentionIds;

  factory _$UpdateFeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateFeedModelImplFromJson(json);

  @override
  @JsonKey(name: 'caption')
  final String? content;
  final List<String>? _mediaUrls;
  @override
  @StringListConverter()
  @JsonKey(name: 'media_urls')
  List<String>? get mediaUrls {
    final value = _mediaUrls;
    if (value == null) return null;
    if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _location;
  @override
  @JsonKey(name: 'location')
  Map<String, dynamic>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _tags;
  @override
  @StringListConverter()
  @JsonKey(name: 'tags')
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _mentionIds;
  @override
  @StringListConverter()
  @JsonKey(name: 'mention_ids')
  List<String>? get mentionIds {
    final value = _mentionIds;
    if (value == null) return null;
    if (_mentionIds is EqualUnmodifiableListView) return _mentionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'allow_comments')
  final bool? allowComments;
  @override
  @JsonKey(name: 'allow_share')
  final bool? allowShare;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'campaign_id')
  final String? campaignId;
  @override
  @JsonKey(name: 'campaign_title')
  final String? campaignTitle;

  @override
  String toString() {
    return 'UpdateFeedModel(content: $content, mediaUrls: $mediaUrls, location: $location, tags: $tags, mentionIds: $mentionIds, allowComments: $allowComments, allowShare: $allowShare, isActive: $isActive, campaignId: $campaignId, campaignTitle: $campaignTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFeedModelImpl &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._mediaUrls, _mediaUrls) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._mentionIds, _mentionIds) &&
            (identical(other.allowComments, allowComments) ||
                other.allowComments == allowComments) &&
            (identical(other.allowShare, allowShare) ||
                other.allowShare == allowShare) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
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
      const DeepCollectionEquality().hash(_mediaUrls),
      const DeepCollectionEquality().hash(_location),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_mentionIds),
      allowComments,
      allowShare,
      isActive,
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
      {@JsonKey(name: 'caption') final String? content,
      @StringListConverter()
      @JsonKey(name: 'media_urls')
      final List<String>? mediaUrls,
      @JsonKey(name: 'location') final Map<String, dynamic>? location,
      @StringListConverter() @JsonKey(name: 'tags') final List<String>? tags,
      @StringListConverter()
      @JsonKey(name: 'mention_ids')
      final List<String>? mentionIds,
      @JsonKey(name: 'allow_comments') final bool? allowComments,
      @JsonKey(name: 'allow_share') final bool? allowShare,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'campaign_id') final String? campaignId,
      @JsonKey(name: 'campaign_title')
      final String? campaignTitle}) = _$UpdateFeedModelImpl;

  factory _UpdateFeedModel.fromJson(Map<String, dynamic> json) =
      _$UpdateFeedModelImpl.fromJson;

  @override
  @JsonKey(name: 'caption')
  String? get content;
  @override
  @StringListConverter()
  @JsonKey(name: 'media_urls')
  List<String>? get mediaUrls;
  @override
  @JsonKey(name: 'location')
  Map<String, dynamic>? get location;
  @override
  @StringListConverter()
  @JsonKey(name: 'tags')
  List<String>? get tags;
  @override
  @StringListConverter()
  @JsonKey(name: 'mention_ids')
  List<String>? get mentionIds;
  @override
  @JsonKey(name: 'allow_comments')
  bool? get allowComments;
  @override
  @JsonKey(name: 'allow_share')
  bool? get allowShare;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
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
