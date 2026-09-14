// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PollPayloadModel {

@JsonKey(name: 'message_id') String get messageId;@JsonKey(name: 'question') String get question;@JsonKey(name: 'multiple_choice') bool get multipleChoice;@JsonKey(name: 'max_user_votes') int get maxUserVotes;@NullableUtcDateTimeConverter()@JsonKey(name: 'closes_at') DateTime? get closesAt;@JsonKey(name: 'poll_options') List<PollOptionModel> get options;
/// Create a copy of PollPayloadModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollPayloadModelCopyWith<PollPayloadModel> get copyWith => _$PollPayloadModelCopyWithImpl<PollPayloadModel>(this as PollPayloadModel, _$identity);

  /// Serializes this PollPayloadModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollPayloadModel&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.question, question) || other.question == question)&&(identical(other.multipleChoice, multipleChoice) || other.multipleChoice == multipleChoice)&&(identical(other.maxUserVotes, maxUserVotes) || other.maxUserVotes == maxUserVotes)&&(identical(other.closesAt, closesAt) || other.closesAt == closesAt)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,question,multipleChoice,maxUserVotes,closesAt,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'PollPayloadModel(messageId: $messageId, question: $question, multipleChoice: $multipleChoice, maxUserVotes: $maxUserVotes, closesAt: $closesAt, options: $options)';
}


}

/// @nodoc
abstract mixin class $PollPayloadModelCopyWith<$Res>  {
  factory $PollPayloadModelCopyWith(PollPayloadModel value, $Res Function(PollPayloadModel) _then) = _$PollPayloadModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'question') String question,@JsonKey(name: 'multiple_choice') bool multipleChoice,@JsonKey(name: 'max_user_votes') int maxUserVotes,@NullableUtcDateTimeConverter()@JsonKey(name: 'closes_at') DateTime? closesAt,@JsonKey(name: 'poll_options') List<PollOptionModel> options
});




}
/// @nodoc
class _$PollPayloadModelCopyWithImpl<$Res>
    implements $PollPayloadModelCopyWith<$Res> {
  _$PollPayloadModelCopyWithImpl(this._self, this._then);

  final PollPayloadModel _self;
  final $Res Function(PollPayloadModel) _then;

/// Create a copy of PollPayloadModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = null,Object? question = null,Object? multipleChoice = null,Object? maxUserVotes = null,Object? closesAt = freezed,Object? options = null,}) {
  return _then(_self.copyWith(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,multipleChoice: null == multipleChoice ? _self.multipleChoice : multipleChoice // ignore: cast_nullable_to_non_nullable
as bool,maxUserVotes: null == maxUserVotes ? _self.maxUserVotes : maxUserVotes // ignore: cast_nullable_to_non_nullable
as int,closesAt: freezed == closesAt ? _self.closesAt : closesAt // ignore: cast_nullable_to_non_nullable
as DateTime?,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<PollOptionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PollPayloadModel].
extension PollPayloadModelPatterns on PollPayloadModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollPayloadModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollPayloadModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollPayloadModel value)  $default,){
final _that = this;
switch (_that) {
case _PollPayloadModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollPayloadModel value)?  $default,){
final _that = this;
switch (_that) {
case _PollPayloadModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'question')  String question, @JsonKey(name: 'multiple_choice')  bool multipleChoice, @JsonKey(name: 'max_user_votes')  int maxUserVotes, @NullableUtcDateTimeConverter()@JsonKey(name: 'closes_at')  DateTime? closesAt, @JsonKey(name: 'poll_options')  List<PollOptionModel> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollPayloadModel() when $default != null:
return $default(_that.messageId,_that.question,_that.multipleChoice,_that.maxUserVotes,_that.closesAt,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'question')  String question, @JsonKey(name: 'multiple_choice')  bool multipleChoice, @JsonKey(name: 'max_user_votes')  int maxUserVotes, @NullableUtcDateTimeConverter()@JsonKey(name: 'closes_at')  DateTime? closesAt, @JsonKey(name: 'poll_options')  List<PollOptionModel> options)  $default,) {final _that = this;
switch (_that) {
case _PollPayloadModel():
return $default(_that.messageId,_that.question,_that.multipleChoice,_that.maxUserVotes,_that.closesAt,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'question')  String question, @JsonKey(name: 'multiple_choice')  bool multipleChoice, @JsonKey(name: 'max_user_votes')  int maxUserVotes, @NullableUtcDateTimeConverter()@JsonKey(name: 'closes_at')  DateTime? closesAt, @JsonKey(name: 'poll_options')  List<PollOptionModel> options)?  $default,) {final _that = this;
switch (_that) {
case _PollPayloadModel() when $default != null:
return $default(_that.messageId,_that.question,_that.multipleChoice,_that.maxUserVotes,_that.closesAt,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PollPayloadModel implements PollPayloadModel {
  const _PollPayloadModel({@JsonKey(name: 'message_id') required this.messageId, @JsonKey(name: 'question') required this.question, @JsonKey(name: 'multiple_choice') this.multipleChoice = false, @JsonKey(name: 'max_user_votes') this.maxUserVotes = 1, @NullableUtcDateTimeConverter()@JsonKey(name: 'closes_at') this.closesAt, @JsonKey(name: 'poll_options') final  List<PollOptionModel> options = const []}): _options = options;
  factory _PollPayloadModel.fromJson(Map<String, dynamic> json) => _$PollPayloadModelFromJson(json);

@override@JsonKey(name: 'message_id') final  String messageId;
@override@JsonKey(name: 'question') final  String question;
@override@JsonKey(name: 'multiple_choice') final  bool multipleChoice;
@override@JsonKey(name: 'max_user_votes') final  int maxUserVotes;
@override@NullableUtcDateTimeConverter()@JsonKey(name: 'closes_at') final  DateTime? closesAt;
 final  List<PollOptionModel> _options;
@override@JsonKey(name: 'poll_options') List<PollOptionModel> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of PollPayloadModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollPayloadModelCopyWith<_PollPayloadModel> get copyWith => __$PollPayloadModelCopyWithImpl<_PollPayloadModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PollPayloadModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollPayloadModel&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.question, question) || other.question == question)&&(identical(other.multipleChoice, multipleChoice) || other.multipleChoice == multipleChoice)&&(identical(other.maxUserVotes, maxUserVotes) || other.maxUserVotes == maxUserVotes)&&(identical(other.closesAt, closesAt) || other.closesAt == closesAt)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,question,multipleChoice,maxUserVotes,closesAt,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'PollPayloadModel(messageId: $messageId, question: $question, multipleChoice: $multipleChoice, maxUserVotes: $maxUserVotes, closesAt: $closesAt, options: $options)';
}


}

/// @nodoc
abstract mixin class _$PollPayloadModelCopyWith<$Res> implements $PollPayloadModelCopyWith<$Res> {
  factory _$PollPayloadModelCopyWith(_PollPayloadModel value, $Res Function(_PollPayloadModel) _then) = __$PollPayloadModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'question') String question,@JsonKey(name: 'multiple_choice') bool multipleChoice,@JsonKey(name: 'max_user_votes') int maxUserVotes,@NullableUtcDateTimeConverter()@JsonKey(name: 'closes_at') DateTime? closesAt,@JsonKey(name: 'poll_options') List<PollOptionModel> options
});




}
/// @nodoc
class __$PollPayloadModelCopyWithImpl<$Res>
    implements _$PollPayloadModelCopyWith<$Res> {
  __$PollPayloadModelCopyWithImpl(this._self, this._then);

  final _PollPayloadModel _self;
  final $Res Function(_PollPayloadModel) _then;

/// Create a copy of PollPayloadModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? question = null,Object? multipleChoice = null,Object? maxUserVotes = null,Object? closesAt = freezed,Object? options = null,}) {
  return _then(_PollPayloadModel(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,multipleChoice: null == multipleChoice ? _self.multipleChoice : multipleChoice // ignore: cast_nullable_to_non_nullable
as bool,maxUserVotes: null == maxUserVotes ? _self.maxUserVotes : maxUserVotes // ignore: cast_nullable_to_non_nullable
as int,closesAt: freezed == closesAt ? _self.closesAt : closesAt // ignore: cast_nullable_to_non_nullable
as DateTime?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<PollOptionModel>,
  ));
}


}


/// @nodoc
mixin _$PollOptionModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'poll_message_id') String get pollMessageId;@JsonKey(name: 'text') String get text;@JsonKey(name: 'position') int get position;/// Vote count from v_poll_options_with_votes view
@JsonKey(name: 'vote_count') int get voteCount;/// Whether current user has voted for this option
@JsonKey(name: 'is_selected') bool get isSelected;
/// Create a copy of PollOptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollOptionModelCopyWith<PollOptionModel> get copyWith => _$PollOptionModelCopyWithImpl<PollOptionModel>(this as PollOptionModel, _$identity);

  /// Serializes this PollOptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollOptionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.pollMessageId, pollMessageId) || other.pollMessageId == pollMessageId)&&(identical(other.text, text) || other.text == text)&&(identical(other.position, position) || other.position == position)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,pollMessageId,text,position,voteCount,isSelected);

@override
String toString() {
  return 'PollOptionModel(id: $id, pollMessageId: $pollMessageId, text: $text, position: $position, voteCount: $voteCount, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $PollOptionModelCopyWith<$Res>  {
  factory $PollOptionModelCopyWith(PollOptionModel value, $Res Function(PollOptionModel) _then) = _$PollOptionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'poll_message_id') String pollMessageId,@JsonKey(name: 'text') String text,@JsonKey(name: 'position') int position,@JsonKey(name: 'vote_count') int voteCount,@JsonKey(name: 'is_selected') bool isSelected
});




}
/// @nodoc
class _$PollOptionModelCopyWithImpl<$Res>
    implements $PollOptionModelCopyWith<$Res> {
  _$PollOptionModelCopyWithImpl(this._self, this._then);

  final PollOptionModel _self;
  final $Res Function(PollOptionModel) _then;

/// Create a copy of PollOptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? pollMessageId = null,Object? text = null,Object? position = null,Object? voteCount = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pollMessageId: null == pollMessageId ? _self.pollMessageId : pollMessageId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PollOptionModel].
extension PollOptionModelPatterns on PollOptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollOptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollOptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollOptionModel value)  $default,){
final _that = this;
switch (_that) {
case _PollOptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollOptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _PollOptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'poll_message_id')  String pollMessageId, @JsonKey(name: 'text')  String text, @JsonKey(name: 'position')  int position, @JsonKey(name: 'vote_count')  int voteCount, @JsonKey(name: 'is_selected')  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollOptionModel() when $default != null:
return $default(_that.id,_that.pollMessageId,_that.text,_that.position,_that.voteCount,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'poll_message_id')  String pollMessageId, @JsonKey(name: 'text')  String text, @JsonKey(name: 'position')  int position, @JsonKey(name: 'vote_count')  int voteCount, @JsonKey(name: 'is_selected')  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _PollOptionModel():
return $default(_that.id,_that.pollMessageId,_that.text,_that.position,_that.voteCount,_that.isSelected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'poll_message_id')  String pollMessageId, @JsonKey(name: 'text')  String text, @JsonKey(name: 'position')  int position, @JsonKey(name: 'vote_count')  int voteCount, @JsonKey(name: 'is_selected')  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _PollOptionModel() when $default != null:
return $default(_that.id,_that.pollMessageId,_that.text,_that.position,_that.voteCount,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PollOptionModel implements PollOptionModel {
  const _PollOptionModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'poll_message_id') required this.pollMessageId, @JsonKey(name: 'text') required this.text, @JsonKey(name: 'position') required this.position, @JsonKey(name: 'vote_count') this.voteCount = 0, @JsonKey(name: 'is_selected') this.isSelected = false});
  factory _PollOptionModel.fromJson(Map<String, dynamic> json) => _$PollOptionModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'poll_message_id') final  String pollMessageId;
@override@JsonKey(name: 'text') final  String text;
@override@JsonKey(name: 'position') final  int position;
/// Vote count from v_poll_options_with_votes view
@override@JsonKey(name: 'vote_count') final  int voteCount;
/// Whether current user has voted for this option
@override@JsonKey(name: 'is_selected') final  bool isSelected;

/// Create a copy of PollOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollOptionModelCopyWith<_PollOptionModel> get copyWith => __$PollOptionModelCopyWithImpl<_PollOptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PollOptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollOptionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.pollMessageId, pollMessageId) || other.pollMessageId == pollMessageId)&&(identical(other.text, text) || other.text == text)&&(identical(other.position, position) || other.position == position)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,pollMessageId,text,position,voteCount,isSelected);

@override
String toString() {
  return 'PollOptionModel(id: $id, pollMessageId: $pollMessageId, text: $text, position: $position, voteCount: $voteCount, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$PollOptionModelCopyWith<$Res> implements $PollOptionModelCopyWith<$Res> {
  factory _$PollOptionModelCopyWith(_PollOptionModel value, $Res Function(_PollOptionModel) _then) = __$PollOptionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'poll_message_id') String pollMessageId,@JsonKey(name: 'text') String text,@JsonKey(name: 'position') int position,@JsonKey(name: 'vote_count') int voteCount,@JsonKey(name: 'is_selected') bool isSelected
});




}
/// @nodoc
class __$PollOptionModelCopyWithImpl<$Res>
    implements _$PollOptionModelCopyWith<$Res> {
  __$PollOptionModelCopyWithImpl(this._self, this._then);

  final _PollOptionModel _self;
  final $Res Function(_PollOptionModel) _then;

/// Create a copy of PollOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? pollMessageId = null,Object? text = null,Object? position = null,Object? voteCount = null,Object? isSelected = null,}) {
  return _then(_PollOptionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pollMessageId: null == pollMessageId ? _self.pollMessageId : pollMessageId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
