// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  List<SearchUserResultModel> get users => throw _privateConstructorUsedError;
  List<SearchCampaignResultModel> get campaigns =>
      throw _privateConstructorUsedError;
  bool get isLoadingUsers => throw _privateConstructorUsedError;
  bool get isLoadingCampaigns => throw _privateConstructorUsedError;
  String? get errorUsers => throw _privateConstructorUsedError;
  String? get errorCampaigns => throw _privateConstructorUsedError;
  String? get lastQuery => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<SearchUserResultModel> users,
      List<SearchCampaignResultModel> campaigns,
      bool isLoadingUsers,
      bool isLoadingCampaigns,
      String? errorUsers,
      String? errorCampaigns,
      String? lastQuery});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? campaigns = null,
    Object? isLoadingUsers = null,
    Object? isLoadingCampaigns = null,
    Object? errorUsers = freezed,
    Object? errorCampaigns = freezed,
    Object? lastQuery = freezed,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<SearchUserResultModel>,
      campaigns: null == campaigns
          ? _value.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<SearchCampaignResultModel>,
      isLoadingUsers: null == isLoadingUsers
          ? _value.isLoadingUsers
          : isLoadingUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCampaigns: null == isLoadingCampaigns
          ? _value.isLoadingCampaigns
          : isLoadingCampaigns // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUsers: freezed == errorUsers
          ? _value.errorUsers
          : errorUsers // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCampaigns: freezed == errorCampaigns
          ? _value.errorCampaigns
          : errorCampaigns // ignore: cast_nullable_to_non_nullable
              as String?,
      lastQuery: freezed == lastQuery
          ? _value.lastQuery
          : lastQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SearchUserResultModel> users,
      List<SearchCampaignResultModel> campaigns,
      bool isLoadingUsers,
      bool isLoadingCampaigns,
      String? errorUsers,
      String? errorCampaigns,
      String? lastQuery});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? campaigns = null,
    Object? isLoadingUsers = null,
    Object? isLoadingCampaigns = null,
    Object? errorUsers = freezed,
    Object? errorCampaigns = freezed,
    Object? lastQuery = freezed,
  }) {
    return _then(_$SearchStateImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<SearchUserResultModel>,
      campaigns: null == campaigns
          ? _value._campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<SearchCampaignResultModel>,
      isLoadingUsers: null == isLoadingUsers
          ? _value.isLoadingUsers
          : isLoadingUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCampaigns: null == isLoadingCampaigns
          ? _value.isLoadingCampaigns
          : isLoadingCampaigns // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUsers: freezed == errorUsers
          ? _value.errorUsers
          : errorUsers // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCampaigns: freezed == errorCampaigns
          ? _value.errorCampaigns
          : errorCampaigns // ignore: cast_nullable_to_non_nullable
              as String?,
      lastQuery: freezed == lastQuery
          ? _value.lastQuery
          : lastQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {final List<SearchUserResultModel> users = const [],
      final List<SearchCampaignResultModel> campaigns = const [],
      this.isLoadingUsers = false,
      this.isLoadingCampaigns = false,
      this.errorUsers,
      this.errorCampaigns,
      this.lastQuery})
      : _users = users,
        _campaigns = campaigns;

  final List<SearchUserResultModel> _users;
  @override
  @JsonKey()
  List<SearchUserResultModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<SearchCampaignResultModel> _campaigns;
  @override
  @JsonKey()
  List<SearchCampaignResultModel> get campaigns {
    if (_campaigns is EqualUnmodifiableListView) return _campaigns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_campaigns);
  }

  @override
  @JsonKey()
  final bool isLoadingUsers;
  @override
  @JsonKey()
  final bool isLoadingCampaigns;
  @override
  final String? errorUsers;
  @override
  final String? errorCampaigns;
  @override
  final String? lastQuery;

  @override
  String toString() {
    return 'SearchState(users: $users, campaigns: $campaigns, isLoadingUsers: $isLoadingUsers, isLoadingCampaigns: $isLoadingCampaigns, errorUsers: $errorUsers, errorCampaigns: $errorCampaigns, lastQuery: $lastQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality()
                .equals(other._campaigns, _campaigns) &&
            (identical(other.isLoadingUsers, isLoadingUsers) ||
                other.isLoadingUsers == isLoadingUsers) &&
            (identical(other.isLoadingCampaigns, isLoadingCampaigns) ||
                other.isLoadingCampaigns == isLoadingCampaigns) &&
            (identical(other.errorUsers, errorUsers) ||
                other.errorUsers == errorUsers) &&
            (identical(other.errorCampaigns, errorCampaigns) ||
                other.errorCampaigns == errorCampaigns) &&
            (identical(other.lastQuery, lastQuery) ||
                other.lastQuery == lastQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_campaigns),
      isLoadingUsers,
      isLoadingCampaigns,
      errorUsers,
      errorCampaigns,
      lastQuery);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final List<SearchUserResultModel> users,
      final List<SearchCampaignResultModel> campaigns,
      final bool isLoadingUsers,
      final bool isLoadingCampaigns,
      final String? errorUsers,
      final String? errorCampaigns,
      final String? lastQuery}) = _$SearchStateImpl;

  @override
  List<SearchUserResultModel> get users;
  @override
  List<SearchCampaignResultModel> get campaigns;
  @override
  bool get isLoadingUsers;
  @override
  bool get isLoadingCampaigns;
  @override
  String? get errorUsers;
  @override
  String? get errorCampaigns;
  @override
  String? get lastQuery;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
