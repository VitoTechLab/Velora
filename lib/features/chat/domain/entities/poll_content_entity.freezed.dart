// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_content_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PollPayloadEntity {
  String get id => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  bool get multipleChoice => throw _privateConstructorUsedError;
  DateTime? get closesAt => throw _privateConstructorUsedError;
  List<PollOptionEntity> get options => throw _privateConstructorUsedError;

  /// Create a copy of PollPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PollPayloadEntityCopyWith<PollPayloadEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollPayloadEntityCopyWith<$Res> {
  factory $PollPayloadEntityCopyWith(
          PollPayloadEntity value, $Res Function(PollPayloadEntity) then) =
      _$PollPayloadEntityCopyWithImpl<$Res, PollPayloadEntity>;
  @useResult
  $Res call(
      {String id,
      String messageId,
      String question,
      bool multipleChoice,
      DateTime? closesAt,
      List<PollOptionEntity> options});
}

/// @nodoc
class _$PollPayloadEntityCopyWithImpl<$Res, $Val extends PollPayloadEntity>
    implements $PollPayloadEntityCopyWith<$Res> {
  _$PollPayloadEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PollPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? messageId = null,
    Object? question = null,
    Object? multipleChoice = null,
    Object? closesAt = freezed,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      closesAt: freezed == closesAt
          ? _value.closesAt
          : closesAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PollOptionEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PollPayloadEntityImplCopyWith<$Res>
    implements $PollPayloadEntityCopyWith<$Res> {
  factory _$$PollPayloadEntityImplCopyWith(_$PollPayloadEntityImpl value,
          $Res Function(_$PollPayloadEntityImpl) then) =
      __$$PollPayloadEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String messageId,
      String question,
      bool multipleChoice,
      DateTime? closesAt,
      List<PollOptionEntity> options});
}

/// @nodoc
class __$$PollPayloadEntityImplCopyWithImpl<$Res>
    extends _$PollPayloadEntityCopyWithImpl<$Res, _$PollPayloadEntityImpl>
    implements _$$PollPayloadEntityImplCopyWith<$Res> {
  __$$PollPayloadEntityImplCopyWithImpl(_$PollPayloadEntityImpl _value,
      $Res Function(_$PollPayloadEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PollPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? messageId = null,
    Object? question = null,
    Object? multipleChoice = null,
    Object? closesAt = freezed,
    Object? options = null,
  }) {
    return _then(_$PollPayloadEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      closesAt: freezed == closesAt
          ? _value.closesAt
          : closesAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PollOptionEntity>,
    ));
  }
}

/// @nodoc

class _$PollPayloadEntityImpl implements _PollPayloadEntity {
  const _$PollPayloadEntityImpl(
      {required this.id,
      required this.messageId,
      required this.question,
      required this.multipleChoice,
      this.closesAt,
      required final List<PollOptionEntity> options})
      : _options = options;

  @override
  final String id;
  @override
  final String messageId;
  @override
  final String question;
  @override
  final bool multipleChoice;
  @override
  final DateTime? closesAt;
  final List<PollOptionEntity> _options;
  @override
  List<PollOptionEntity> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'PollPayloadEntity(id: $id, messageId: $messageId, question: $question, multipleChoice: $multipleChoice, closesAt: $closesAt, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PollPayloadEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.multipleChoice, multipleChoice) ||
                other.multipleChoice == multipleChoice) &&
            (identical(other.closesAt, closesAt) ||
                other.closesAt == closesAt) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, messageId, question,
      multipleChoice, closesAt, const DeepCollectionEquality().hash(_options));

  /// Create a copy of PollPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PollPayloadEntityImplCopyWith<_$PollPayloadEntityImpl> get copyWith =>
      __$$PollPayloadEntityImplCopyWithImpl<_$PollPayloadEntityImpl>(
          this, _$identity);
}

abstract class _PollPayloadEntity implements PollPayloadEntity {
  const factory _PollPayloadEntity(
      {required final String id,
      required final String messageId,
      required final String question,
      required final bool multipleChoice,
      final DateTime? closesAt,
      required final List<PollOptionEntity> options}) = _$PollPayloadEntityImpl;

  @override
  String get id;
  @override
  String get messageId;
  @override
  String get question;
  @override
  bool get multipleChoice;
  @override
  DateTime? get closesAt;
  @override
  List<PollOptionEntity> get options;

  /// Create a copy of PollPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PollPayloadEntityImplCopyWith<_$PollPayloadEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PollOptionEntity {
  String get id => throw _privateConstructorUsedError;
  String get pollMessageId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  int get voteCount => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Create a copy of PollOptionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PollOptionEntityCopyWith<PollOptionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollOptionEntityCopyWith<$Res> {
  factory $PollOptionEntityCopyWith(
          PollOptionEntity value, $Res Function(PollOptionEntity) then) =
      _$PollOptionEntityCopyWithImpl<$Res, PollOptionEntity>;
  @useResult
  $Res call(
      {String id,
      String pollMessageId,
      String text,
      int position,
      int voteCount,
      bool isSelected});
}

/// @nodoc
class _$PollOptionEntityCopyWithImpl<$Res, $Val extends PollOptionEntity>
    implements $PollOptionEntityCopyWith<$Res> {
  _$PollOptionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PollOptionEntity
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
abstract class _$$PollOptionEntityImplCopyWith<$Res>
    implements $PollOptionEntityCopyWith<$Res> {
  factory _$$PollOptionEntityImplCopyWith(_$PollOptionEntityImpl value,
          $Res Function(_$PollOptionEntityImpl) then) =
      __$$PollOptionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String pollMessageId,
      String text,
      int position,
      int voteCount,
      bool isSelected});
}

/// @nodoc
class __$$PollOptionEntityImplCopyWithImpl<$Res>
    extends _$PollOptionEntityCopyWithImpl<$Res, _$PollOptionEntityImpl>
    implements _$$PollOptionEntityImplCopyWith<$Res> {
  __$$PollOptionEntityImplCopyWithImpl(_$PollOptionEntityImpl _value,
      $Res Function(_$PollOptionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PollOptionEntity
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
    return _then(_$PollOptionEntityImpl(
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

class _$PollOptionEntityImpl implements _PollOptionEntity {
  const _$PollOptionEntityImpl(
      {required this.id,
      required this.pollMessageId,
      required this.text,
      required this.position,
      required this.voteCount,
      required this.isSelected});

  @override
  final String id;
  @override
  final String pollMessageId;
  @override
  final String text;
  @override
  final int position;
  @override
  final int voteCount;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'PollOptionEntity(id: $id, pollMessageId: $pollMessageId, text: $text, position: $position, voteCount: $voteCount, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PollOptionEntityImpl &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType, id, pollMessageId, text, position, voteCount, isSelected);

  /// Create a copy of PollOptionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PollOptionEntityImplCopyWith<_$PollOptionEntityImpl> get copyWith =>
      __$$PollOptionEntityImplCopyWithImpl<_$PollOptionEntityImpl>(
          this, _$identity);
}

abstract class _PollOptionEntity implements PollOptionEntity {
  const factory _PollOptionEntity(
      {required final String id,
      required final String pollMessageId,
      required final String text,
      required final int position,
      required final int voteCount,
      required final bool isSelected}) = _$PollOptionEntityImpl;

  @override
  String get id;
  @override
  String get pollMessageId;
  @override
  String get text;
  @override
  int get position;
  @override
  int get voteCount;
  @override
  bool get isSelected;

  /// Create a copy of PollOptionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PollOptionEntityImplCopyWith<_$PollOptionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
