// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PollPayloadModel _$PollPayloadModelFromJson(Map<String, dynamic> json) {
  return _PollPayloadModel.fromJson(json);
}

/// @nodoc
mixin _$PollPayloadModel {
<<<<<<< HEAD
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
=======
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
  @JsonKey(name: 'message_id')
  String get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'question')
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'multiple_choice')
  bool get multipleChoice => throw _privateConstructorUsedError;
<<<<<<< HEAD
=======
  @JsonKey(name: 'max_user_votes')
  int get maxUserVotes => throw _privateConstructorUsedError;
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
  @NullableUtcDateTimeConverter()
  @JsonKey(name: 'closes_at')
  DateTime? get closesAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'poll_options')
  List<PollOptionModel> get options => throw _privateConstructorUsedError;

  /// Serializes this PollPayloadModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PollPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PollPayloadModelCopyWith<PollPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollPayloadModelCopyWith<$Res> {
  factory $PollPayloadModelCopyWith(
          PollPayloadModel value, $Res Function(PollPayloadModel) then) =
      _$PollPayloadModelCopyWithImpl<$Res, PollPayloadModel>;
  @useResult
  $Res call(
<<<<<<< HEAD
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'message_id') String messageId,
      @JsonKey(name: 'question') String question,
      @JsonKey(name: 'multiple_choice') bool multipleChoice,
=======
      {@JsonKey(name: 'message_id') String messageId,
      @JsonKey(name: 'question') String question,
      @JsonKey(name: 'multiple_choice') bool multipleChoice,
      @JsonKey(name: 'max_user_votes') int maxUserVotes,
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
      @NullableUtcDateTimeConverter()
      @JsonKey(name: 'closes_at')
      DateTime? closesAt,
      @JsonKey(name: 'poll_options') List<PollOptionModel> options});
}

/// @nodoc
class _$PollPayloadModelCopyWithImpl<$Res, $Val extends PollPayloadModel>
    implements $PollPayloadModelCopyWith<$Res> {
  _$PollPayloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PollPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
<<<<<<< HEAD
    Object? id = null,
    Object? messageId = null,
    Object? question = null,
    Object? multipleChoice = null,
=======
    Object? messageId = null,
    Object? question = null,
    Object? multipleChoice = null,
    Object? maxUserVotes = null,
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
    Object? closesAt = freezed,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
<<<<<<< HEAD
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
=======
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      multipleChoice: null == multipleChoice
          ? _value.multipleChoice
          : multipleChoice // ignore: cast_nullable_to_non_nullable
              as bool,
<<<<<<< HEAD
=======
      maxUserVotes: null == maxUserVotes
          ? _value.maxUserVotes
          : maxUserVotes // ignore: cast_nullable_to_non_nullable
              as int,
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
      closesAt: freezed == closesAt
          ? _value.closesAt
          : closesAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PollOptionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PollPayloadModelImplCopyWith<$Res>
    implements $PollPayloadModelCopyWith<$Res> {
  factory _$$PollPayloadModelImplCopyWith(_$PollPayloadModelImpl value,
          $Res Function(_$PollPayloadModelImpl) then) =
      __$$PollPayloadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
<<<<<<< HEAD
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'message_id') String messageId,
      @JsonKey(name: 'question') String question,
      @JsonKey(name: 'multiple_choice') bool multipleChoice,
=======
      {@JsonKey(name: 'message_id') String messageId,
      @JsonKey(name: 'question') String question,
      @JsonKey(name: 'multiple_choice') bool multipleChoice,
      @JsonKey(name: 'max_user_votes') int maxUserVotes,
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
      @NullableUtcDateTimeConverter()
      @JsonKey(name: 'closes_at')
      DateTime? closesAt,
      @JsonKey(name: 'poll_options') List<PollOptionModel> options});
}

/// @nodoc
class __$$PollPayloadModelImplCopyWithImpl<$Res>
    extends _$PollPayloadModelCopyWithImpl<$Res, _$PollPayloadModelImpl>
    implements _$$PollPayloadModelImplCopyWith<$Res> {
  __$$PollPayloadModelImplCopyWithImpl(_$PollPayloadModelImpl _value,
      $Res Function(_$PollPayloadModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PollPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
<<<<<<< HEAD
    Object? id = null,
    Object? messageId = null,
    Object? question = null,
    Object? multipleChoice = null,
=======
    Object? messageId = null,
    Object? question = null,
    Object? multipleChoice = null,
    Object? maxUserVotes = null,
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
    Object? closesAt = freezed,
    Object? options = null,
  }) {
    return _then(_$PollPayloadModelImpl(
<<<<<<< HEAD
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
=======
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      multipleChoice: null == multipleChoice
          ? _value.multipleChoice
          : multipleChoice // ignore: cast_nullable_to_non_nullable
              as bool,
<<<<<<< HEAD
=======
      maxUserVotes: null == maxUserVotes
          ? _value.maxUserVotes
          : maxUserVotes // ignore: cast_nullable_to_non_nullable
              as int,
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
      closesAt: freezed == closesAt
          ? _value.closesAt
          : closesAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PollOptionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PollPayloadModelImpl implements _PollPayloadModel {
  const _$PollPayloadModelImpl(
<<<<<<< HEAD
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'message_id') required this.messageId,
      @JsonKey(name: 'question') required this.question,
      @JsonKey(name: 'multiple_choice') required this.multipleChoice,
=======
      {@JsonKey(name: 'message_id') required this.messageId,
      @JsonKey(name: 'question') required this.question,
      @JsonKey(name: 'multiple_choice') this.multipleChoice = false,
      @JsonKey(name: 'max_user_votes') this.maxUserVotes = 1,
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
      @NullableUtcDateTimeConverter() @JsonKey(name: 'closes_at') this.closesAt,
      @JsonKey(name: 'poll_options')
      final List<PollOptionModel> options = const []})
      : _options = options;

  factory _$PollPayloadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PollPayloadModelImplFromJson(json);

  @override
<<<<<<< HEAD
  @JsonKey(name: 'id')
  final String id;
  @override
=======
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
  @JsonKey(name: 'message_id')
  final String messageId;
  @override
  @JsonKey(name: 'question')
  final String question;
  @override
  @JsonKey(name: 'multiple_choice')
  final bool multipleChoice;
  @override
<<<<<<< HEAD
=======
  @JsonKey(name: 'max_user_votes')
  final int maxUserVotes;
  @override
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
  @NullableUtcDateTimeConverter()
  @JsonKey(name: 'closes_at')
  final DateTime? closesAt;
  final List<PollOptionModel> _options;
  @override
  @JsonKey(name: 'poll_options')
  List<PollOptionModel> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
<<<<<<< HEAD
    return 'PollPayloadModel(id: $id, messageId: $messageId, question: $question, multipleChoice: $multipleChoice, closesAt: $closesAt, options: $options)';
=======
    return 'PollPayloadModel(messageId: $messageId, question: $question, multipleChoice: $multipleChoice, maxUserVotes: $maxUserVotes, closesAt: $closesAt, options: $options)';
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PollPayloadModelImpl &&
<<<<<<< HEAD
            (identical(other.id, id) || other.id == id) &&
=======
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.multipleChoice, multipleChoice) ||
                other.multipleChoice == multipleChoice) &&
<<<<<<< HEAD
=======
            (identical(other.maxUserVotes, maxUserVotes) ||
                other.maxUserVotes == maxUserVotes) &&
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
            (identical(other.closesAt, closesAt) ||
                other.closesAt == closesAt) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
<<<<<<< HEAD
  int get hashCode => Object.hash(runtimeType, id, messageId, question,
      multipleChoice, closesAt, const DeepCollectionEquality().hash(_options));
=======
  int get hashCode => Object.hash(
      runtimeType,
      messageId,
      question,
      multipleChoice,
      maxUserVotes,
      closesAt,
      const DeepCollectionEquality().hash(_options));
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33

  /// Create a copy of PollPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PollPayloadModelImplCopyWith<_$PollPayloadModelImpl> get copyWith =>
      __$$PollPayloadModelImplCopyWithImpl<_$PollPayloadModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PollPayloadModelImplToJson(
      this,
    );
  }
}

abstract class _PollPayloadModel implements PollPayloadModel {
  const factory _PollPayloadModel(
<<<<<<< HEAD
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'message_id') required final String messageId,
          @JsonKey(name: 'question') required final String question,
          @JsonKey(name: 'multiple_choice') required final bool multipleChoice,
=======
          {@JsonKey(name: 'message_id') required final String messageId,
          @JsonKey(name: 'question') required final String question,
          @JsonKey(name: 'multiple_choice') final bool multipleChoice,
          @JsonKey(name: 'max_user_votes') final int maxUserVotes,
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
          @NullableUtcDateTimeConverter()
          @JsonKey(name: 'closes_at')
          final DateTime? closesAt,
          @JsonKey(name: 'poll_options') final List<PollOptionModel> options}) =
      _$PollPayloadModelImpl;

  factory _PollPayloadModel.fromJson(Map<String, dynamic> json) =
      _$PollPayloadModelImpl.fromJson;

  @override
<<<<<<< HEAD
  @JsonKey(name: 'id')
  String get id;
  @override
=======
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
  @JsonKey(name: 'message_id')
  String get messageId;
  @override
  @JsonKey(name: 'question')
  String get question;
  @override
  @JsonKey(name: 'multiple_choice')
  bool get multipleChoice;
  @override
<<<<<<< HEAD
=======
  @JsonKey(name: 'max_user_votes')
  int get maxUserVotes;
  @override
>>>>>>> d6108cdc17b8ed6763b0d804cd62da1e2da1cf33
  @NullableUtcDateTimeConverter()
  @JsonKey(name: 'closes_at')
  DateTime? get closesAt;
  @override
  @JsonKey(name: 'poll_options')
  List<PollOptionModel> get options;

  /// Create a copy of PollPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PollPayloadModelImplCopyWith<_$PollPayloadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PollOptionModel _$PollOptionModelFromJson(Map<String, dynamic> json) {
  return _PollOptionModel.fromJson(json);
}

/// @nodoc
mixin _$PollOptionModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'poll_message_id')
  String get pollMessageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'position')
  int get position => throw _privateConstructorUsedError;

  /// Vote count from v_poll_options_with_votes view
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;

  /// Whether current user has voted for this option
  @JsonKey(name: 'is_selected')
  bool get isSelected => throw _privateConstructorUsedError;

  /// Serializes this PollOptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PollOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PollOptionModelCopyWith<PollOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollOptionModelCopyWith<$Res> {
  factory $PollOptionModelCopyWith(
          PollOptionModel value, $Res Function(PollOptionModel) then) =
      _$PollOptionModelCopyWithImpl<$Res, PollOptionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'poll_message_id') String pollMessageId,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'position') int position,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'is_selected') bool isSelected});
}

/// @nodoc
class _$PollOptionModelCopyWithImpl<$Res, $Val extends PollOptionModel>
    implements $PollOptionModelCopyWith<$Res> {
  _$PollOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PollOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pollMessageId = null,
    Object? text = null,
    Object? position = null,
    Object? voteCount = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pollMessageId: null == pollMessageId
          ? _value.pollMessageId
          : pollMessageId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PollOptionModelImplCopyWith<$Res>
    implements $PollOptionModelCopyWith<$Res> {
  factory _$$PollOptionModelImplCopyWith(_$PollOptionModelImpl value,
          $Res Function(_$PollOptionModelImpl) then) =
      __$$PollOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'poll_message_id') String pollMessageId,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'position') int position,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'is_selected') bool isSelected});
}

/// @nodoc
class __$$PollOptionModelImplCopyWithImpl<$Res>
    extends _$PollOptionModelCopyWithImpl<$Res, _$PollOptionModelImpl>
    implements _$$PollOptionModelImplCopyWith<$Res> {
  __$$PollOptionModelImplCopyWithImpl(
      _$PollOptionModelImpl _value, $Res Function(_$PollOptionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PollOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pollMessageId = null,
    Object? text = null,
    Object? position = null,
    Object? voteCount = null,
    Object? isSelected = null,
  }) {
    return _then(_$PollOptionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pollMessageId: null == pollMessageId
          ? _value.pollMessageId
          : pollMessageId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PollOptionModelImpl implements _PollOptionModel {
  const _$PollOptionModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'poll_message_id') required this.pollMessageId,
      @JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'position') required this.position,
      @JsonKey(name: 'vote_count') this.voteCount = 0,
      @JsonKey(name: 'is_selected') this.isSelected = false});

  factory _$PollOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PollOptionModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'poll_message_id')
  final String pollMessageId;
  @override
  @JsonKey(name: 'text')
  final String text;
  @override
  @JsonKey(name: 'position')
  final int position;

  /// Vote count from v_poll_options_with_votes view
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;

  /// Whether current user has voted for this option
  @override
  @JsonKey(name: 'is_selected')
  final bool isSelected;

  @override
  String toString() {
    return 'PollOptionModel(id: $id, pollMessageId: $pollMessageId, text: $text, position: $position, voteCount: $voteCount, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PollOptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pollMessageId, pollMessageId) ||
                other.pollMessageId == pollMessageId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, pollMessageId, text, position, voteCount, isSelected);

  /// Create a copy of PollOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PollOptionModelImplCopyWith<_$PollOptionModelImpl> get copyWith =>
      __$$PollOptionModelImplCopyWithImpl<_$PollOptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PollOptionModelImplToJson(
      this,
    );
  }
}

abstract class _PollOptionModel implements PollOptionModel {
  const factory _PollOptionModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'poll_message_id') required final String pollMessageId,
          @JsonKey(name: 'text') required final String text,
          @JsonKey(name: 'position') required final int position,
          @JsonKey(name: 'vote_count') final int voteCount,
          @JsonKey(name: 'is_selected') final bool isSelected}) =
      _$PollOptionModelImpl;

  factory _PollOptionModel.fromJson(Map<String, dynamic> json) =
      _$PollOptionModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'poll_message_id')
  String get pollMessageId;
  @override
  @JsonKey(name: 'text')
  String get text;
  @override
  @JsonKey(name: 'position')
  int get position;

  /// Vote count from v_poll_options_with_votes view
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;

  /// Whether current user has voted for this option
  @override
  @JsonKey(name: 'is_selected')
  bool get isSelected;

  /// Create a copy of PollOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PollOptionModelImplCopyWith<_$PollOptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
