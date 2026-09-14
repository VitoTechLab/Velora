// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_content_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PollPayloadEntity {

 String get messageId; String get question; bool get multipleChoice; int get maxUserVotes; DateTime? get closesAt; List<PollOptionEntity> get options;
/// Create a copy of PollPayloadEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollPayloadEntityCopyWith<PollPayloadEntity> get copyWith => _$PollPayloadEntityCopyWithImpl<PollPayloadEntity>(this as PollPayloadEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollPayloadEntity&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.question, question) || other.question == question)&&(identical(other.multipleChoice, multipleChoice) || other.multipleChoice == multipleChoice)&&(identical(other.maxUserVotes, maxUserVotes) || other.maxUserVotes == maxUserVotes)&&(identical(other.closesAt, closesAt) || other.closesAt == closesAt)&&const DeepCollectionEquality().equals(other.options, options));
}


@override
int get hashCode => Object.hash(runtimeType,messageId,question,multipleChoice,maxUserVotes,closesAt,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'PollPayloadEntity(messageId: $messageId, question: $question, multipleChoice: $multipleChoice, maxUserVotes: $maxUserVotes, closesAt: $closesAt, options: $options)';
}


}

/// @nodoc
abstract mixin class $PollPayloadEntityCopyWith<$Res>  {
  factory $PollPayloadEntityCopyWith(PollPayloadEntity value, $Res Function(PollPayloadEntity) _then) = _$PollPayloadEntityCopyWithImpl;
@useResult
$Res call({
 String messageId, String question, bool multipleChoice, int maxUserVotes, DateTime? closesAt, List<PollOptionEntity> options
});




}
/// @nodoc
class _$PollPayloadEntityCopyWithImpl<$Res>
    implements $PollPayloadEntityCopyWith<$Res> {
  _$PollPayloadEntityCopyWithImpl(this._self, this._then);

  final PollPayloadEntity _self;
  final $Res Function(PollPayloadEntity) _then;

/// Create a copy of PollPayloadEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = null,Object? question = null,Object? multipleChoice = null,Object? maxUserVotes = null,Object? closesAt = freezed,Object? options = null,}) {
  return _then(_self.copyWith(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,multipleChoice: null == multipleChoice ? _self.multipleChoice : multipleChoice // ignore: cast_nullable_to_non_nullable
as bool,maxUserVotes: null == maxUserVotes ? _self.maxUserVotes : maxUserVotes // ignore: cast_nullable_to_non_nullable
as int,closesAt: freezed == closesAt ? _self.closesAt : closesAt // ignore: cast_nullable_to_non_nullable
as DateTime?,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<PollOptionEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [PollPayloadEntity].
extension PollPayloadEntityPatterns on PollPayloadEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollPayloadEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollPayloadEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollPayloadEntity value)  $default,){
final _that = this;
switch (_that) {
case _PollPayloadEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollPayloadEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PollPayloadEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String messageId,  String question,  bool multipleChoice,  int maxUserVotes,  DateTime? closesAt,  List<PollOptionEntity> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollPayloadEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String messageId,  String question,  bool multipleChoice,  int maxUserVotes,  DateTime? closesAt,  List<PollOptionEntity> options)  $default,) {final _that = this;
switch (_that) {
case _PollPayloadEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String messageId,  String question,  bool multipleChoice,  int maxUserVotes,  DateTime? closesAt,  List<PollOptionEntity> options)?  $default,) {final _that = this;
switch (_that) {
case _PollPayloadEntity() when $default != null:
return $default(_that.messageId,_that.question,_that.multipleChoice,_that.maxUserVotes,_that.closesAt,_that.options);case _:
  return null;

}
}

}

/// @nodoc


class _PollPayloadEntity implements PollPayloadEntity {
  const _PollPayloadEntity({required this.messageId, required this.question, this.multipleChoice = false, this.maxUserVotes = 1, this.closesAt, final  List<PollOptionEntity> options = const []}): _options = options;
  

@override final  String messageId;
@override final  String question;
@override@JsonKey() final  bool multipleChoice;
@override@JsonKey() final  int maxUserVotes;
@override final  DateTime? closesAt;
 final  List<PollOptionEntity> _options;
@override@JsonKey() List<PollOptionEntity> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of PollPayloadEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollPayloadEntityCopyWith<_PollPayloadEntity> get copyWith => __$PollPayloadEntityCopyWithImpl<_PollPayloadEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollPayloadEntity&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.question, question) || other.question == question)&&(identical(other.multipleChoice, multipleChoice) || other.multipleChoice == multipleChoice)&&(identical(other.maxUserVotes, maxUserVotes) || other.maxUserVotes == maxUserVotes)&&(identical(other.closesAt, closesAt) || other.closesAt == closesAt)&&const DeepCollectionEquality().equals(other._options, _options));
}


@override
int get hashCode => Object.hash(runtimeType,messageId,question,multipleChoice,maxUserVotes,closesAt,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'PollPayloadEntity(messageId: $messageId, question: $question, multipleChoice: $multipleChoice, maxUserVotes: $maxUserVotes, closesAt: $closesAt, options: $options)';
}


}

/// @nodoc
abstract mixin class _$PollPayloadEntityCopyWith<$Res> implements $PollPayloadEntityCopyWith<$Res> {
  factory _$PollPayloadEntityCopyWith(_PollPayloadEntity value, $Res Function(_PollPayloadEntity) _then) = __$PollPayloadEntityCopyWithImpl;
@override @useResult
$Res call({
 String messageId, String question, bool multipleChoice, int maxUserVotes, DateTime? closesAt, List<PollOptionEntity> options
});




}
/// @nodoc
class __$PollPayloadEntityCopyWithImpl<$Res>
    implements _$PollPayloadEntityCopyWith<$Res> {
  __$PollPayloadEntityCopyWithImpl(this._self, this._then);

  final _PollPayloadEntity _self;
  final $Res Function(_PollPayloadEntity) _then;

/// Create a copy of PollPayloadEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? question = null,Object? multipleChoice = null,Object? maxUserVotes = null,Object? closesAt = freezed,Object? options = null,}) {
  return _then(_PollPayloadEntity(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,multipleChoice: null == multipleChoice ? _self.multipleChoice : multipleChoice // ignore: cast_nullable_to_non_nullable
as bool,maxUserVotes: null == maxUserVotes ? _self.maxUserVotes : maxUserVotes // ignore: cast_nullable_to_non_nullable
as int,closesAt: freezed == closesAt ? _self.closesAt : closesAt // ignore: cast_nullable_to_non_nullable
as DateTime?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<PollOptionEntity>,
  ));
}


}

/// @nodoc
mixin _$PollOptionEntity {

 String get id; String get pollMessageId; String get text; int get position; int get voteCount; bool get isSelected;
/// Create a copy of PollOptionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollOptionEntityCopyWith<PollOptionEntity> get copyWith => _$PollOptionEntityCopyWithImpl<PollOptionEntity>(this as PollOptionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollOptionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.pollMessageId, pollMessageId) || other.pollMessageId == pollMessageId)&&(identical(other.text, text) || other.text == text)&&(identical(other.position, position) || other.position == position)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,id,pollMessageId,text,position,voteCount,isSelected);

@override
String toString() {
  return 'PollOptionEntity(id: $id, pollMessageId: $pollMessageId, text: $text, position: $position, voteCount: $voteCount, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $PollOptionEntityCopyWith<$Res>  {
  factory $PollOptionEntityCopyWith(PollOptionEntity value, $Res Function(PollOptionEntity) _then) = _$PollOptionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String pollMessageId, String text, int position, int voteCount, bool isSelected
});




}
/// @nodoc
class _$PollOptionEntityCopyWithImpl<$Res>
    implements $PollOptionEntityCopyWith<$Res> {
  _$PollOptionEntityCopyWithImpl(this._self, this._then);

  final PollOptionEntity _self;
  final $Res Function(PollOptionEntity) _then;

/// Create a copy of PollOptionEntity
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


/// Adds pattern-matching-related methods to [PollOptionEntity].
extension PollOptionEntityPatterns on PollOptionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollOptionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollOptionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollOptionEntity value)  $default,){
final _that = this;
switch (_that) {
case _PollOptionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollOptionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PollOptionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String pollMessageId,  String text,  int position,  int voteCount,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollOptionEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String pollMessageId,  String text,  int position,  int voteCount,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _PollOptionEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String pollMessageId,  String text,  int position,  int voteCount,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _PollOptionEntity() when $default != null:
return $default(_that.id,_that.pollMessageId,_that.text,_that.position,_that.voteCount,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class _PollOptionEntity implements PollOptionEntity {
  const _PollOptionEntity({required this.id, required this.pollMessageId, required this.text, required this.position, required this.voteCount, required this.isSelected});
  

@override final  String id;
@override final  String pollMessageId;
@override final  String text;
@override final  int position;
@override final  int voteCount;
@override final  bool isSelected;

/// Create a copy of PollOptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollOptionEntityCopyWith<_PollOptionEntity> get copyWith => __$PollOptionEntityCopyWithImpl<_PollOptionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollOptionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.pollMessageId, pollMessageId) || other.pollMessageId == pollMessageId)&&(identical(other.text, text) || other.text == text)&&(identical(other.position, position) || other.position == position)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,id,pollMessageId,text,position,voteCount,isSelected);

@override
String toString() {
  return 'PollOptionEntity(id: $id, pollMessageId: $pollMessageId, text: $text, position: $position, voteCount: $voteCount, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$PollOptionEntityCopyWith<$Res> implements $PollOptionEntityCopyWith<$Res> {
  factory _$PollOptionEntityCopyWith(_PollOptionEntity value, $Res Function(_PollOptionEntity) _then) = __$PollOptionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String pollMessageId, String text, int position, int voteCount, bool isSelected
});




}
/// @nodoc
class __$PollOptionEntityCopyWithImpl<$Res>
    implements _$PollOptionEntityCopyWith<$Res> {
  __$PollOptionEntityCopyWithImpl(this._self, this._then);

  final _PollOptionEntity _self;
  final $Res Function(_PollOptionEntity) _then;

/// Create a copy of PollOptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? pollMessageId = null,Object? text = null,Object? position = null,Object? voteCount = null,Object? isSelected = null,}) {
  return _then(_PollOptionEntity(
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
