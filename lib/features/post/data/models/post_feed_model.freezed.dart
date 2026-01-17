// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostFeedModel _$PostFeedModelFromJson(Map<String, dynamic> json) {
  return _PostFeedModel.fromJson(json);
}

/// @nodoc
mixin _$PostFeedModel {
  String get userId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String> get mediaUrls => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<String> get mentionIds => throw _privateConstructorUsedError;
  Map<String, dynamic>? get location => throw _privateConstructorUsedError;
  bool get allowComments => throw _privateConstructorUsedError;
  bool get allowShare => throw _privateConstructorUsedError;
  String? get campaignTitle => throw _privateConstructorUsedError;

  /// Serializes this PostFeedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostFeedModelCopyWith<PostFeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFeedModelCopyWith<$Res> {
  factory $PostFeedModelCopyWith(
          PostFeedModel value, $Res Function(PostFeedModel) then) =
      _$PostFeedModelCopyWithImpl<$Res, PostFeedModel>;
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
class _$PostFeedModelCopyWithImpl<$Res, $Val extends PostFeedModel>
    implements $PostFeedModelCopyWith<$Res> {
  _$PostFeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostFeedModel
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
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrls: null == mediaUrls
          ? _value.mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mentionIds: null == mentionIds
          ? _value.mentionIds
          : mentionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: freezed == location
          ? _value.location
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostFeedModelImplCopyWith<$Res>
    implements $PostFeedModelCopyWith<$Res> {
  factory _$$PostFeedModelImplCopyWith(
          _$PostFeedModelImpl value, $Res Function(_$PostFeedModelImpl) then) =
      __$$PostFeedModelImplCopyWithImpl<$Res>;
  @override
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
class __$$PostFeedModelImplCopyWithImpl<$Res>
    extends _$PostFeedModelCopyWithImpl<$Res, _$PostFeedModelImpl>
    implements _$$PostFeedModelImplCopyWith<$Res> {
  __$$PostFeedModelImplCopyWithImpl(
      _$PostFeedModelImpl _value, $Res Function(_$PostFeedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostFeedModel
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
    return _then(_$PostFeedModelImpl(
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
@JsonSerializable()
class _$PostFeedModelImpl extends _PostFeedModel {
  const _$PostFeedModelImpl(
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
        _location = location,
        super._();

  factory _$PostFeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostFeedModelImplFromJson(json);

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
    return 'PostFeedModel(userId: $userId, content: $content, mediaUrls: $mediaUrls, tags: $tags, mentionIds: $mentionIds, location: $location, allowComments: $allowComments, allowShare: $allowShare, campaignTitle: $campaignTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFeedModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PostFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostFeedModelImplCopyWith<_$PostFeedModelImpl> get copyWith =>
      __$$PostFeedModelImplCopyWithImpl<_$PostFeedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostFeedModelImplToJson(
      this,
    );
  }
}

abstract class _PostFeedModel extends PostFeedModel {
  const factory _PostFeedModel(
      {required final String userId,
      required final String content,
      final List<String> mediaUrls,
      final List<String> tags,
      final List<String> mentionIds,
      final Map<String, dynamic>? location,
      final bool allowComments,
      final bool allowShare,
      final String? campaignTitle}) = _$PostFeedModelImpl;
  const _PostFeedModel._() : super._();

  factory _PostFeedModel.fromJson(Map<String, dynamic> json) =
      _$PostFeedModelImpl.fromJson;

  @override
  String get userId;
  @override
  String get content;
  @override
  List<String> get mediaUrls;
  @override
  List<String> get tags;
  @override
  List<String> get mentionIds;
  @override
  Map<String, dynamic>? get location;
  @override
  bool get allowComments;
  @override
  bool get allowShare;
  @override
  String? get campaignTitle;

  /// Create a copy of PostFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostFeedModelImplCopyWith<_$PostFeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
