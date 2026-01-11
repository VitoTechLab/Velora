// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsState {

// Loading states
 bool get isLoading;// Language settings (5 supported: en, id, ko, ja, zh)
 String get languageCode; String? get languageRegion;// Theme settings
 String get themeMode;// 'light', 'dark', 'system'
 bool get dynamicColor; String get colorPalette; double get cornerRadius;// Accessibility - Text
 double get fontSize; String get fontFamily;// 'Inter', 'DM Sans', 'Serif'
 String get textAlignment;// 'left', 'center', 'justify'
 double get lineSpacing;// Accessibility - Visual
 bool get highContrast; bool get motionReduced;// Notification - Global
 bool get pauseAllNotifications; bool get sleepModeEnabled; int get sleepStartHour; int get sleepStartMinute; int get sleepEndHour; int get sleepEndMinute;// Notification - Posts & Stories
 bool get notifyPostsAndStories; bool get notifyLiveVideos; bool get notifyNewCampaigns;// Notification - Engagement
 bool get notifyLikes; bool get notifyCommentReplies; bool get notifyMentions; bool get notifyNewFollowers;// Notification - Donations
 bool get notifyDonationReceived; bool get notifyCampaignMilestone; bool get notifyCampaignUpdates; bool get notifyWithdrawalStatus;// Notification - Messages
 bool get notifyDirectMessages; bool get notifyMessageRequests; bool get notifyGroupInvites;// Notification - Summary & Other
 String get summaryFrequency;// 'off', 'daily', 'weekly'
 bool get emailNotifications; bool get smsNotifications;// Messages
 String? get message; String? get errorMessage;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.languageRegion, languageRegion) || other.languageRegion == languageRegion)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.dynamicColor, dynamicColor) || other.dynamicColor == dynamicColor)&&(identical(other.colorPalette, colorPalette) || other.colorPalette == colorPalette)&&(identical(other.cornerRadius, cornerRadius) || other.cornerRadius == cornerRadius)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.fontFamily, fontFamily) || other.fontFamily == fontFamily)&&(identical(other.textAlignment, textAlignment) || other.textAlignment == textAlignment)&&(identical(other.lineSpacing, lineSpacing) || other.lineSpacing == lineSpacing)&&(identical(other.highContrast, highContrast) || other.highContrast == highContrast)&&(identical(other.motionReduced, motionReduced) || other.motionReduced == motionReduced)&&(identical(other.pauseAllNotifications, pauseAllNotifications) || other.pauseAllNotifications == pauseAllNotifications)&&(identical(other.sleepModeEnabled, sleepModeEnabled) || other.sleepModeEnabled == sleepModeEnabled)&&(identical(other.sleepStartHour, sleepStartHour) || other.sleepStartHour == sleepStartHour)&&(identical(other.sleepStartMinute, sleepStartMinute) || other.sleepStartMinute == sleepStartMinute)&&(identical(other.sleepEndHour, sleepEndHour) || other.sleepEndHour == sleepEndHour)&&(identical(other.sleepEndMinute, sleepEndMinute) || other.sleepEndMinute == sleepEndMinute)&&(identical(other.notifyPostsAndStories, notifyPostsAndStories) || other.notifyPostsAndStories == notifyPostsAndStories)&&(identical(other.notifyLiveVideos, notifyLiveVideos) || other.notifyLiveVideos == notifyLiveVideos)&&(identical(other.notifyNewCampaigns, notifyNewCampaigns) || other.notifyNewCampaigns == notifyNewCampaigns)&&(identical(other.notifyLikes, notifyLikes) || other.notifyLikes == notifyLikes)&&(identical(other.notifyCommentReplies, notifyCommentReplies) || other.notifyCommentReplies == notifyCommentReplies)&&(identical(other.notifyMentions, notifyMentions) || other.notifyMentions == notifyMentions)&&(identical(other.notifyNewFollowers, notifyNewFollowers) || other.notifyNewFollowers == notifyNewFollowers)&&(identical(other.notifyDonationReceived, notifyDonationReceived) || other.notifyDonationReceived == notifyDonationReceived)&&(identical(other.notifyCampaignMilestone, notifyCampaignMilestone) || other.notifyCampaignMilestone == notifyCampaignMilestone)&&(identical(other.notifyCampaignUpdates, notifyCampaignUpdates) || other.notifyCampaignUpdates == notifyCampaignUpdates)&&(identical(other.notifyWithdrawalStatus, notifyWithdrawalStatus) || other.notifyWithdrawalStatus == notifyWithdrawalStatus)&&(identical(other.notifyDirectMessages, notifyDirectMessages) || other.notifyDirectMessages == notifyDirectMessages)&&(identical(other.notifyMessageRequests, notifyMessageRequests) || other.notifyMessageRequests == notifyMessageRequests)&&(identical(other.notifyGroupInvites, notifyGroupInvites) || other.notifyGroupInvites == notifyGroupInvites)&&(identical(other.summaryFrequency, summaryFrequency) || other.summaryFrequency == summaryFrequency)&&(identical(other.emailNotifications, emailNotifications) || other.emailNotifications == emailNotifications)&&(identical(other.smsNotifications, smsNotifications) || other.smsNotifications == smsNotifications)&&(identical(other.message, message) || other.message == message)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hashAll([runtimeType,isLoading,languageCode,languageRegion,themeMode,dynamicColor,colorPalette,cornerRadius,fontSize,fontFamily,textAlignment,lineSpacing,highContrast,motionReduced,pauseAllNotifications,sleepModeEnabled,sleepStartHour,sleepStartMinute,sleepEndHour,sleepEndMinute,notifyPostsAndStories,notifyLiveVideos,notifyNewCampaigns,notifyLikes,notifyCommentReplies,notifyMentions,notifyNewFollowers,notifyDonationReceived,notifyCampaignMilestone,notifyCampaignUpdates,notifyWithdrawalStatus,notifyDirectMessages,notifyMessageRequests,notifyGroupInvites,summaryFrequency,emailNotifications,smsNotifications,message,errorMessage]);

@override
String toString() {
  return 'SettingsState(isLoading: $isLoading, languageCode: $languageCode, languageRegion: $languageRegion, themeMode: $themeMode, dynamicColor: $dynamicColor, colorPalette: $colorPalette, cornerRadius: $cornerRadius, fontSize: $fontSize, fontFamily: $fontFamily, textAlignment: $textAlignment, lineSpacing: $lineSpacing, highContrast: $highContrast, motionReduced: $motionReduced, pauseAllNotifications: $pauseAllNotifications, sleepModeEnabled: $sleepModeEnabled, sleepStartHour: $sleepStartHour, sleepStartMinute: $sleepStartMinute, sleepEndHour: $sleepEndHour, sleepEndMinute: $sleepEndMinute, notifyPostsAndStories: $notifyPostsAndStories, notifyLiveVideos: $notifyLiveVideos, notifyNewCampaigns: $notifyNewCampaigns, notifyLikes: $notifyLikes, notifyCommentReplies: $notifyCommentReplies, notifyMentions: $notifyMentions, notifyNewFollowers: $notifyNewFollowers, notifyDonationReceived: $notifyDonationReceived, notifyCampaignMilestone: $notifyCampaignMilestone, notifyCampaignUpdates: $notifyCampaignUpdates, notifyWithdrawalStatus: $notifyWithdrawalStatus, notifyDirectMessages: $notifyDirectMessages, notifyMessageRequests: $notifyMessageRequests, notifyGroupInvites: $notifyGroupInvites, summaryFrequency: $summaryFrequency, emailNotifications: $emailNotifications, smsNotifications: $smsNotifications, message: $message, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String languageCode, String? languageRegion, String themeMode, bool dynamicColor, String colorPalette, double cornerRadius, double fontSize, String fontFamily, String textAlignment, double lineSpacing, bool highContrast, bool motionReduced, bool pauseAllNotifications, bool sleepModeEnabled, int sleepStartHour, int sleepStartMinute, int sleepEndHour, int sleepEndMinute, bool notifyPostsAndStories, bool notifyLiveVideos, bool notifyNewCampaigns, bool notifyLikes, bool notifyCommentReplies, bool notifyMentions, bool notifyNewFollowers, bool notifyDonationReceived, bool notifyCampaignMilestone, bool notifyCampaignUpdates, bool notifyWithdrawalStatus, bool notifyDirectMessages, bool notifyMessageRequests, bool notifyGroupInvites, String summaryFrequency, bool emailNotifications, bool smsNotifications, String? message, String? errorMessage
});




}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? languageCode = null,Object? languageRegion = freezed,Object? themeMode = null,Object? dynamicColor = null,Object? colorPalette = null,Object? cornerRadius = null,Object? fontSize = null,Object? fontFamily = null,Object? textAlignment = null,Object? lineSpacing = null,Object? highContrast = null,Object? motionReduced = null,Object? pauseAllNotifications = null,Object? sleepModeEnabled = null,Object? sleepStartHour = null,Object? sleepStartMinute = null,Object? sleepEndHour = null,Object? sleepEndMinute = null,Object? notifyPostsAndStories = null,Object? notifyLiveVideos = null,Object? notifyNewCampaigns = null,Object? notifyLikes = null,Object? notifyCommentReplies = null,Object? notifyMentions = null,Object? notifyNewFollowers = null,Object? notifyDonationReceived = null,Object? notifyCampaignMilestone = null,Object? notifyCampaignUpdates = null,Object? notifyWithdrawalStatus = null,Object? notifyDirectMessages = null,Object? notifyMessageRequests = null,Object? notifyGroupInvites = null,Object? summaryFrequency = null,Object? emailNotifications = null,Object? smsNotifications = null,Object? message = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,languageRegion: freezed == languageRegion ? _self.languageRegion : languageRegion // ignore: cast_nullable_to_non_nullable
as String?,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as String,dynamicColor: null == dynamicColor ? _self.dynamicColor : dynamicColor // ignore: cast_nullable_to_non_nullable
as bool,colorPalette: null == colorPalette ? _self.colorPalette : colorPalette // ignore: cast_nullable_to_non_nullable
as String,cornerRadius: null == cornerRadius ? _self.cornerRadius : cornerRadius // ignore: cast_nullable_to_non_nullable
as double,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,fontFamily: null == fontFamily ? _self.fontFamily : fontFamily // ignore: cast_nullable_to_non_nullable
as String,textAlignment: null == textAlignment ? _self.textAlignment : textAlignment // ignore: cast_nullable_to_non_nullable
as String,lineSpacing: null == lineSpacing ? _self.lineSpacing : lineSpacing // ignore: cast_nullable_to_non_nullable
as double,highContrast: null == highContrast ? _self.highContrast : highContrast // ignore: cast_nullable_to_non_nullable
as bool,motionReduced: null == motionReduced ? _self.motionReduced : motionReduced // ignore: cast_nullable_to_non_nullable
as bool,pauseAllNotifications: null == pauseAllNotifications ? _self.pauseAllNotifications : pauseAllNotifications // ignore: cast_nullable_to_non_nullable
as bool,sleepModeEnabled: null == sleepModeEnabled ? _self.sleepModeEnabled : sleepModeEnabled // ignore: cast_nullable_to_non_nullable
as bool,sleepStartHour: null == sleepStartHour ? _self.sleepStartHour : sleepStartHour // ignore: cast_nullable_to_non_nullable
as int,sleepStartMinute: null == sleepStartMinute ? _self.sleepStartMinute : sleepStartMinute // ignore: cast_nullable_to_non_nullable
as int,sleepEndHour: null == sleepEndHour ? _self.sleepEndHour : sleepEndHour // ignore: cast_nullable_to_non_nullable
as int,sleepEndMinute: null == sleepEndMinute ? _self.sleepEndMinute : sleepEndMinute // ignore: cast_nullable_to_non_nullable
as int,notifyPostsAndStories: null == notifyPostsAndStories ? _self.notifyPostsAndStories : notifyPostsAndStories // ignore: cast_nullable_to_non_nullable
as bool,notifyLiveVideos: null == notifyLiveVideos ? _self.notifyLiveVideos : notifyLiveVideos // ignore: cast_nullable_to_non_nullable
as bool,notifyNewCampaigns: null == notifyNewCampaigns ? _self.notifyNewCampaigns : notifyNewCampaigns // ignore: cast_nullable_to_non_nullable
as bool,notifyLikes: null == notifyLikes ? _self.notifyLikes : notifyLikes // ignore: cast_nullable_to_non_nullable
as bool,notifyCommentReplies: null == notifyCommentReplies ? _self.notifyCommentReplies : notifyCommentReplies // ignore: cast_nullable_to_non_nullable
as bool,notifyMentions: null == notifyMentions ? _self.notifyMentions : notifyMentions // ignore: cast_nullable_to_non_nullable
as bool,notifyNewFollowers: null == notifyNewFollowers ? _self.notifyNewFollowers : notifyNewFollowers // ignore: cast_nullable_to_non_nullable
as bool,notifyDonationReceived: null == notifyDonationReceived ? _self.notifyDonationReceived : notifyDonationReceived // ignore: cast_nullable_to_non_nullable
as bool,notifyCampaignMilestone: null == notifyCampaignMilestone ? _self.notifyCampaignMilestone : notifyCampaignMilestone // ignore: cast_nullable_to_non_nullable
as bool,notifyCampaignUpdates: null == notifyCampaignUpdates ? _self.notifyCampaignUpdates : notifyCampaignUpdates // ignore: cast_nullable_to_non_nullable
as bool,notifyWithdrawalStatus: null == notifyWithdrawalStatus ? _self.notifyWithdrawalStatus : notifyWithdrawalStatus // ignore: cast_nullable_to_non_nullable
as bool,notifyDirectMessages: null == notifyDirectMessages ? _self.notifyDirectMessages : notifyDirectMessages // ignore: cast_nullable_to_non_nullable
as bool,notifyMessageRequests: null == notifyMessageRequests ? _self.notifyMessageRequests : notifyMessageRequests // ignore: cast_nullable_to_non_nullable
as bool,notifyGroupInvites: null == notifyGroupInvites ? _self.notifyGroupInvites : notifyGroupInvites // ignore: cast_nullable_to_non_nullable
as bool,summaryFrequency: null == summaryFrequency ? _self.summaryFrequency : summaryFrequency // ignore: cast_nullable_to_non_nullable
as String,emailNotifications: null == emailNotifications ? _self.emailNotifications : emailNotifications // ignore: cast_nullable_to_non_nullable
as bool,smsNotifications: null == smsNotifications ? _self.smsNotifications : smsNotifications // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsState value)  $default,){
final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsState value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String languageCode,  String? languageRegion,  String themeMode,  bool dynamicColor,  String colorPalette,  double cornerRadius,  double fontSize,  String fontFamily,  String textAlignment,  double lineSpacing,  bool highContrast,  bool motionReduced,  bool pauseAllNotifications,  bool sleepModeEnabled,  int sleepStartHour,  int sleepStartMinute,  int sleepEndHour,  int sleepEndMinute,  bool notifyPostsAndStories,  bool notifyLiveVideos,  bool notifyNewCampaigns,  bool notifyLikes,  bool notifyCommentReplies,  bool notifyMentions,  bool notifyNewFollowers,  bool notifyDonationReceived,  bool notifyCampaignMilestone,  bool notifyCampaignUpdates,  bool notifyWithdrawalStatus,  bool notifyDirectMessages,  bool notifyMessageRequests,  bool notifyGroupInvites,  String summaryFrequency,  bool emailNotifications,  bool smsNotifications,  String? message,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.isLoading,_that.languageCode,_that.languageRegion,_that.themeMode,_that.dynamicColor,_that.colorPalette,_that.cornerRadius,_that.fontSize,_that.fontFamily,_that.textAlignment,_that.lineSpacing,_that.highContrast,_that.motionReduced,_that.pauseAllNotifications,_that.sleepModeEnabled,_that.sleepStartHour,_that.sleepStartMinute,_that.sleepEndHour,_that.sleepEndMinute,_that.notifyPostsAndStories,_that.notifyLiveVideos,_that.notifyNewCampaigns,_that.notifyLikes,_that.notifyCommentReplies,_that.notifyMentions,_that.notifyNewFollowers,_that.notifyDonationReceived,_that.notifyCampaignMilestone,_that.notifyCampaignUpdates,_that.notifyWithdrawalStatus,_that.notifyDirectMessages,_that.notifyMessageRequests,_that.notifyGroupInvites,_that.summaryFrequency,_that.emailNotifications,_that.smsNotifications,_that.message,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String languageCode,  String? languageRegion,  String themeMode,  bool dynamicColor,  String colorPalette,  double cornerRadius,  double fontSize,  String fontFamily,  String textAlignment,  double lineSpacing,  bool highContrast,  bool motionReduced,  bool pauseAllNotifications,  bool sleepModeEnabled,  int sleepStartHour,  int sleepStartMinute,  int sleepEndHour,  int sleepEndMinute,  bool notifyPostsAndStories,  bool notifyLiveVideos,  bool notifyNewCampaigns,  bool notifyLikes,  bool notifyCommentReplies,  bool notifyMentions,  bool notifyNewFollowers,  bool notifyDonationReceived,  bool notifyCampaignMilestone,  bool notifyCampaignUpdates,  bool notifyWithdrawalStatus,  bool notifyDirectMessages,  bool notifyMessageRequests,  bool notifyGroupInvites,  String summaryFrequency,  bool emailNotifications,  bool smsNotifications,  String? message,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.isLoading,_that.languageCode,_that.languageRegion,_that.themeMode,_that.dynamicColor,_that.colorPalette,_that.cornerRadius,_that.fontSize,_that.fontFamily,_that.textAlignment,_that.lineSpacing,_that.highContrast,_that.motionReduced,_that.pauseAllNotifications,_that.sleepModeEnabled,_that.sleepStartHour,_that.sleepStartMinute,_that.sleepEndHour,_that.sleepEndMinute,_that.notifyPostsAndStories,_that.notifyLiveVideos,_that.notifyNewCampaigns,_that.notifyLikes,_that.notifyCommentReplies,_that.notifyMentions,_that.notifyNewFollowers,_that.notifyDonationReceived,_that.notifyCampaignMilestone,_that.notifyCampaignUpdates,_that.notifyWithdrawalStatus,_that.notifyDirectMessages,_that.notifyMessageRequests,_that.notifyGroupInvites,_that.summaryFrequency,_that.emailNotifications,_that.smsNotifications,_that.message,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String languageCode,  String? languageRegion,  String themeMode,  bool dynamicColor,  String colorPalette,  double cornerRadius,  double fontSize,  String fontFamily,  String textAlignment,  double lineSpacing,  bool highContrast,  bool motionReduced,  bool pauseAllNotifications,  bool sleepModeEnabled,  int sleepStartHour,  int sleepStartMinute,  int sleepEndHour,  int sleepEndMinute,  bool notifyPostsAndStories,  bool notifyLiveVideos,  bool notifyNewCampaigns,  bool notifyLikes,  bool notifyCommentReplies,  bool notifyMentions,  bool notifyNewFollowers,  bool notifyDonationReceived,  bool notifyCampaignMilestone,  bool notifyCampaignUpdates,  bool notifyWithdrawalStatus,  bool notifyDirectMessages,  bool notifyMessageRequests,  bool notifyGroupInvites,  String summaryFrequency,  bool emailNotifications,  bool smsNotifications,  String? message,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.isLoading,_that.languageCode,_that.languageRegion,_that.themeMode,_that.dynamicColor,_that.colorPalette,_that.cornerRadius,_that.fontSize,_that.fontFamily,_that.textAlignment,_that.lineSpacing,_that.highContrast,_that.motionReduced,_that.pauseAllNotifications,_that.sleepModeEnabled,_that.sleepStartHour,_that.sleepStartMinute,_that.sleepEndHour,_that.sleepEndMinute,_that.notifyPostsAndStories,_that.notifyLiveVideos,_that.notifyNewCampaigns,_that.notifyLikes,_that.notifyCommentReplies,_that.notifyMentions,_that.notifyNewFollowers,_that.notifyDonationReceived,_that.notifyCampaignMilestone,_that.notifyCampaignUpdates,_that.notifyWithdrawalStatus,_that.notifyDirectMessages,_that.notifyMessageRequests,_that.notifyGroupInvites,_that.summaryFrequency,_that.emailNotifications,_that.smsNotifications,_that.message,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsState extends SettingsState {
  const _SettingsState({this.isLoading = false, this.languageCode = 'en', this.languageRegion, this.themeMode = 'system', this.dynamicColor = true, this.colorPalette = 'Ocean', this.cornerRadius = 16.0, this.fontSize = 16.0, this.fontFamily = 'Inter', this.textAlignment = 'left', this.lineSpacing = 1.4, this.highContrast = false, this.motionReduced = false, this.pauseAllNotifications = false, this.sleepModeEnabled = false, this.sleepStartHour = 22, this.sleepStartMinute = 0, this.sleepEndHour = 7, this.sleepEndMinute = 0, this.notifyPostsAndStories = true, this.notifyLiveVideos = true, this.notifyNewCampaigns = true, this.notifyLikes = true, this.notifyCommentReplies = true, this.notifyMentions = true, this.notifyNewFollowers = true, this.notifyDonationReceived = true, this.notifyCampaignMilestone = true, this.notifyCampaignUpdates = true, this.notifyWithdrawalStatus = true, this.notifyDirectMessages = true, this.notifyMessageRequests = false, this.notifyGroupInvites = true, this.summaryFrequency = 'daily', this.emailNotifications = true, this.smsNotifications = false, this.message, this.errorMessage}): super._();
  

// Loading states
@override@JsonKey() final  bool isLoading;
// Language settings (5 supported: en, id, ko, ja, zh)
@override@JsonKey() final  String languageCode;
@override final  String? languageRegion;
// Theme settings
@override@JsonKey() final  String themeMode;
// 'light', 'dark', 'system'
@override@JsonKey() final  bool dynamicColor;
@override@JsonKey() final  String colorPalette;
@override@JsonKey() final  double cornerRadius;
// Accessibility - Text
@override@JsonKey() final  double fontSize;
@override@JsonKey() final  String fontFamily;
// 'Inter', 'DM Sans', 'Serif'
@override@JsonKey() final  String textAlignment;
// 'left', 'center', 'justify'
@override@JsonKey() final  double lineSpacing;
// Accessibility - Visual
@override@JsonKey() final  bool highContrast;
@override@JsonKey() final  bool motionReduced;
// Notification - Global
@override@JsonKey() final  bool pauseAllNotifications;
@override@JsonKey() final  bool sleepModeEnabled;
@override@JsonKey() final  int sleepStartHour;
@override@JsonKey() final  int sleepStartMinute;
@override@JsonKey() final  int sleepEndHour;
@override@JsonKey() final  int sleepEndMinute;
// Notification - Posts & Stories
@override@JsonKey() final  bool notifyPostsAndStories;
@override@JsonKey() final  bool notifyLiveVideos;
@override@JsonKey() final  bool notifyNewCampaigns;
// Notification - Engagement
@override@JsonKey() final  bool notifyLikes;
@override@JsonKey() final  bool notifyCommentReplies;
@override@JsonKey() final  bool notifyMentions;
@override@JsonKey() final  bool notifyNewFollowers;
// Notification - Donations
@override@JsonKey() final  bool notifyDonationReceived;
@override@JsonKey() final  bool notifyCampaignMilestone;
@override@JsonKey() final  bool notifyCampaignUpdates;
@override@JsonKey() final  bool notifyWithdrawalStatus;
// Notification - Messages
@override@JsonKey() final  bool notifyDirectMessages;
@override@JsonKey() final  bool notifyMessageRequests;
@override@JsonKey() final  bool notifyGroupInvites;
// Notification - Summary & Other
@override@JsonKey() final  String summaryFrequency;
// 'off', 'daily', 'weekly'
@override@JsonKey() final  bool emailNotifications;
@override@JsonKey() final  bool smsNotifications;
// Messages
@override final  String? message;
@override final  String? errorMessage;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.languageRegion, languageRegion) || other.languageRegion == languageRegion)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.dynamicColor, dynamicColor) || other.dynamicColor == dynamicColor)&&(identical(other.colorPalette, colorPalette) || other.colorPalette == colorPalette)&&(identical(other.cornerRadius, cornerRadius) || other.cornerRadius == cornerRadius)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.fontFamily, fontFamily) || other.fontFamily == fontFamily)&&(identical(other.textAlignment, textAlignment) || other.textAlignment == textAlignment)&&(identical(other.lineSpacing, lineSpacing) || other.lineSpacing == lineSpacing)&&(identical(other.highContrast, highContrast) || other.highContrast == highContrast)&&(identical(other.motionReduced, motionReduced) || other.motionReduced == motionReduced)&&(identical(other.pauseAllNotifications, pauseAllNotifications) || other.pauseAllNotifications == pauseAllNotifications)&&(identical(other.sleepModeEnabled, sleepModeEnabled) || other.sleepModeEnabled == sleepModeEnabled)&&(identical(other.sleepStartHour, sleepStartHour) || other.sleepStartHour == sleepStartHour)&&(identical(other.sleepStartMinute, sleepStartMinute) || other.sleepStartMinute == sleepStartMinute)&&(identical(other.sleepEndHour, sleepEndHour) || other.sleepEndHour == sleepEndHour)&&(identical(other.sleepEndMinute, sleepEndMinute) || other.sleepEndMinute == sleepEndMinute)&&(identical(other.notifyPostsAndStories, notifyPostsAndStories) || other.notifyPostsAndStories == notifyPostsAndStories)&&(identical(other.notifyLiveVideos, notifyLiveVideos) || other.notifyLiveVideos == notifyLiveVideos)&&(identical(other.notifyNewCampaigns, notifyNewCampaigns) || other.notifyNewCampaigns == notifyNewCampaigns)&&(identical(other.notifyLikes, notifyLikes) || other.notifyLikes == notifyLikes)&&(identical(other.notifyCommentReplies, notifyCommentReplies) || other.notifyCommentReplies == notifyCommentReplies)&&(identical(other.notifyMentions, notifyMentions) || other.notifyMentions == notifyMentions)&&(identical(other.notifyNewFollowers, notifyNewFollowers) || other.notifyNewFollowers == notifyNewFollowers)&&(identical(other.notifyDonationReceived, notifyDonationReceived) || other.notifyDonationReceived == notifyDonationReceived)&&(identical(other.notifyCampaignMilestone, notifyCampaignMilestone) || other.notifyCampaignMilestone == notifyCampaignMilestone)&&(identical(other.notifyCampaignUpdates, notifyCampaignUpdates) || other.notifyCampaignUpdates == notifyCampaignUpdates)&&(identical(other.notifyWithdrawalStatus, notifyWithdrawalStatus) || other.notifyWithdrawalStatus == notifyWithdrawalStatus)&&(identical(other.notifyDirectMessages, notifyDirectMessages) || other.notifyDirectMessages == notifyDirectMessages)&&(identical(other.notifyMessageRequests, notifyMessageRequests) || other.notifyMessageRequests == notifyMessageRequests)&&(identical(other.notifyGroupInvites, notifyGroupInvites) || other.notifyGroupInvites == notifyGroupInvites)&&(identical(other.summaryFrequency, summaryFrequency) || other.summaryFrequency == summaryFrequency)&&(identical(other.emailNotifications, emailNotifications) || other.emailNotifications == emailNotifications)&&(identical(other.smsNotifications, smsNotifications) || other.smsNotifications == smsNotifications)&&(identical(other.message, message) || other.message == message)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hashAll([runtimeType,isLoading,languageCode,languageRegion,themeMode,dynamicColor,colorPalette,cornerRadius,fontSize,fontFamily,textAlignment,lineSpacing,highContrast,motionReduced,pauseAllNotifications,sleepModeEnabled,sleepStartHour,sleepStartMinute,sleepEndHour,sleepEndMinute,notifyPostsAndStories,notifyLiveVideos,notifyNewCampaigns,notifyLikes,notifyCommentReplies,notifyMentions,notifyNewFollowers,notifyDonationReceived,notifyCampaignMilestone,notifyCampaignUpdates,notifyWithdrawalStatus,notifyDirectMessages,notifyMessageRequests,notifyGroupInvites,summaryFrequency,emailNotifications,smsNotifications,message,errorMessage]);

@override
String toString() {
  return 'SettingsState(isLoading: $isLoading, languageCode: $languageCode, languageRegion: $languageRegion, themeMode: $themeMode, dynamicColor: $dynamicColor, colorPalette: $colorPalette, cornerRadius: $cornerRadius, fontSize: $fontSize, fontFamily: $fontFamily, textAlignment: $textAlignment, lineSpacing: $lineSpacing, highContrast: $highContrast, motionReduced: $motionReduced, pauseAllNotifications: $pauseAllNotifications, sleepModeEnabled: $sleepModeEnabled, sleepStartHour: $sleepStartHour, sleepStartMinute: $sleepStartMinute, sleepEndHour: $sleepEndHour, sleepEndMinute: $sleepEndMinute, notifyPostsAndStories: $notifyPostsAndStories, notifyLiveVideos: $notifyLiveVideos, notifyNewCampaigns: $notifyNewCampaigns, notifyLikes: $notifyLikes, notifyCommentReplies: $notifyCommentReplies, notifyMentions: $notifyMentions, notifyNewFollowers: $notifyNewFollowers, notifyDonationReceived: $notifyDonationReceived, notifyCampaignMilestone: $notifyCampaignMilestone, notifyCampaignUpdates: $notifyCampaignUpdates, notifyWithdrawalStatus: $notifyWithdrawalStatus, notifyDirectMessages: $notifyDirectMessages, notifyMessageRequests: $notifyMessageRequests, notifyGroupInvites: $notifyGroupInvites, summaryFrequency: $summaryFrequency, emailNotifications: $emailNotifications, smsNotifications: $smsNotifications, message: $message, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String languageCode, String? languageRegion, String themeMode, bool dynamicColor, String colorPalette, double cornerRadius, double fontSize, String fontFamily, String textAlignment, double lineSpacing, bool highContrast, bool motionReduced, bool pauseAllNotifications, bool sleepModeEnabled, int sleepStartHour, int sleepStartMinute, int sleepEndHour, int sleepEndMinute, bool notifyPostsAndStories, bool notifyLiveVideos, bool notifyNewCampaigns, bool notifyLikes, bool notifyCommentReplies, bool notifyMentions, bool notifyNewFollowers, bool notifyDonationReceived, bool notifyCampaignMilestone, bool notifyCampaignUpdates, bool notifyWithdrawalStatus, bool notifyDirectMessages, bool notifyMessageRequests, bool notifyGroupInvites, String summaryFrequency, bool emailNotifications, bool smsNotifications, String? message, String? errorMessage
});




}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? languageCode = null,Object? languageRegion = freezed,Object? themeMode = null,Object? dynamicColor = null,Object? colorPalette = null,Object? cornerRadius = null,Object? fontSize = null,Object? fontFamily = null,Object? textAlignment = null,Object? lineSpacing = null,Object? highContrast = null,Object? motionReduced = null,Object? pauseAllNotifications = null,Object? sleepModeEnabled = null,Object? sleepStartHour = null,Object? sleepStartMinute = null,Object? sleepEndHour = null,Object? sleepEndMinute = null,Object? notifyPostsAndStories = null,Object? notifyLiveVideos = null,Object? notifyNewCampaigns = null,Object? notifyLikes = null,Object? notifyCommentReplies = null,Object? notifyMentions = null,Object? notifyNewFollowers = null,Object? notifyDonationReceived = null,Object? notifyCampaignMilestone = null,Object? notifyCampaignUpdates = null,Object? notifyWithdrawalStatus = null,Object? notifyDirectMessages = null,Object? notifyMessageRequests = null,Object? notifyGroupInvites = null,Object? summaryFrequency = null,Object? emailNotifications = null,Object? smsNotifications = null,Object? message = freezed,Object? errorMessage = freezed,}) {
  return _then(_SettingsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,languageRegion: freezed == languageRegion ? _self.languageRegion : languageRegion // ignore: cast_nullable_to_non_nullable
as String?,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as String,dynamicColor: null == dynamicColor ? _self.dynamicColor : dynamicColor // ignore: cast_nullable_to_non_nullable
as bool,colorPalette: null == colorPalette ? _self.colorPalette : colorPalette // ignore: cast_nullable_to_non_nullable
as String,cornerRadius: null == cornerRadius ? _self.cornerRadius : cornerRadius // ignore: cast_nullable_to_non_nullable
as double,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,fontFamily: null == fontFamily ? _self.fontFamily : fontFamily // ignore: cast_nullable_to_non_nullable
as String,textAlignment: null == textAlignment ? _self.textAlignment : textAlignment // ignore: cast_nullable_to_non_nullable
as String,lineSpacing: null == lineSpacing ? _self.lineSpacing : lineSpacing // ignore: cast_nullable_to_non_nullable
as double,highContrast: null == highContrast ? _self.highContrast : highContrast // ignore: cast_nullable_to_non_nullable
as bool,motionReduced: null == motionReduced ? _self.motionReduced : motionReduced // ignore: cast_nullable_to_non_nullable
as bool,pauseAllNotifications: null == pauseAllNotifications ? _self.pauseAllNotifications : pauseAllNotifications // ignore: cast_nullable_to_non_nullable
as bool,sleepModeEnabled: null == sleepModeEnabled ? _self.sleepModeEnabled : sleepModeEnabled // ignore: cast_nullable_to_non_nullable
as bool,sleepStartHour: null == sleepStartHour ? _self.sleepStartHour : sleepStartHour // ignore: cast_nullable_to_non_nullable
as int,sleepStartMinute: null == sleepStartMinute ? _self.sleepStartMinute : sleepStartMinute // ignore: cast_nullable_to_non_nullable
as int,sleepEndHour: null == sleepEndHour ? _self.sleepEndHour : sleepEndHour // ignore: cast_nullable_to_non_nullable
as int,sleepEndMinute: null == sleepEndMinute ? _self.sleepEndMinute : sleepEndMinute // ignore: cast_nullable_to_non_nullable
as int,notifyPostsAndStories: null == notifyPostsAndStories ? _self.notifyPostsAndStories : notifyPostsAndStories // ignore: cast_nullable_to_non_nullable
as bool,notifyLiveVideos: null == notifyLiveVideos ? _self.notifyLiveVideos : notifyLiveVideos // ignore: cast_nullable_to_non_nullable
as bool,notifyNewCampaigns: null == notifyNewCampaigns ? _self.notifyNewCampaigns : notifyNewCampaigns // ignore: cast_nullable_to_non_nullable
as bool,notifyLikes: null == notifyLikes ? _self.notifyLikes : notifyLikes // ignore: cast_nullable_to_non_nullable
as bool,notifyCommentReplies: null == notifyCommentReplies ? _self.notifyCommentReplies : notifyCommentReplies // ignore: cast_nullable_to_non_nullable
as bool,notifyMentions: null == notifyMentions ? _self.notifyMentions : notifyMentions // ignore: cast_nullable_to_non_nullable
as bool,notifyNewFollowers: null == notifyNewFollowers ? _self.notifyNewFollowers : notifyNewFollowers // ignore: cast_nullable_to_non_nullable
as bool,notifyDonationReceived: null == notifyDonationReceived ? _self.notifyDonationReceived : notifyDonationReceived // ignore: cast_nullable_to_non_nullable
as bool,notifyCampaignMilestone: null == notifyCampaignMilestone ? _self.notifyCampaignMilestone : notifyCampaignMilestone // ignore: cast_nullable_to_non_nullable
as bool,notifyCampaignUpdates: null == notifyCampaignUpdates ? _self.notifyCampaignUpdates : notifyCampaignUpdates // ignore: cast_nullable_to_non_nullable
as bool,notifyWithdrawalStatus: null == notifyWithdrawalStatus ? _self.notifyWithdrawalStatus : notifyWithdrawalStatus // ignore: cast_nullable_to_non_nullable
as bool,notifyDirectMessages: null == notifyDirectMessages ? _self.notifyDirectMessages : notifyDirectMessages // ignore: cast_nullable_to_non_nullable
as bool,notifyMessageRequests: null == notifyMessageRequests ? _self.notifyMessageRequests : notifyMessageRequests // ignore: cast_nullable_to_non_nullable
as bool,notifyGroupInvites: null == notifyGroupInvites ? _self.notifyGroupInvites : notifyGroupInvites // ignore: cast_nullable_to_non_nullable
as bool,summaryFrequency: null == summaryFrequency ? _self.summaryFrequency : summaryFrequency // ignore: cast_nullable_to_non_nullable
as String,emailNotifications: null == emailNotifications ? _self.emailNotifications : emailNotifications // ignore: cast_nullable_to_non_nullable
as bool,smsNotifications: null == smsNotifications ? _self.smsNotifications : smsNotifications // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
