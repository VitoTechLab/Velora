// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String scope, int limit)
        searchUsers,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String query) searchAll,
    required TResult Function() clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, String scope, int limit)? searchUsers,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String query)? searchAll,
    TResult? Function()? clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String scope, int limit)? searchUsers,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String query)? searchAll,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchUsersEvent value) searchUsers,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(SearchAllEvent value) searchAll,
    required TResult Function(ClearSearchEvent value) clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchUsersEvent value)? searchUsers,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(SearchAllEvent value)? searchAll,
    TResult? Function(ClearSearchEvent value)? clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchUsersEvent value)? searchUsers,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(SearchAllEvent value)? searchAll,
    TResult Function(ClearSearchEvent value)? clearSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchUsersEventImplCopyWith<$Res> {
  factory _$$SearchUsersEventImplCopyWith(_$SearchUsersEventImpl value,
          $Res Function(_$SearchUsersEventImpl) then) =
      __$$SearchUsersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, String scope, int limit});
}

/// @nodoc
class __$$SearchUsersEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchUsersEventImpl>
    implements _$$SearchUsersEventImplCopyWith<$Res> {
  __$$SearchUsersEventImplCopyWithImpl(_$SearchUsersEventImpl _value,
      $Res Function(_$SearchUsersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? scope = null,
    Object? limit = null,
  }) {
    return _then(_$SearchUsersEventImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchUsersEventImpl implements SearchUsersEvent {
  const _$SearchUsersEventImpl(
      {required this.query, this.scope = 'global', this.limit = 20});

  @override
  final String query;
  @override
  @JsonKey()
  final String scope;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'SearchEvent.searchUsers(query: $query, scope: $scope, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUsersEventImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, scope, limit);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUsersEventImplCopyWith<_$SearchUsersEventImpl> get copyWith =>
      __$$SearchUsersEventImplCopyWithImpl<_$SearchUsersEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String scope, int limit)
        searchUsers,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String query) searchAll,
    required TResult Function() clearSearch,
  }) {
    return searchUsers(query, scope, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, String scope, int limit)? searchUsers,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String query)? searchAll,
    TResult? Function()? clearSearch,
  }) {
    return searchUsers?.call(query, scope, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String scope, int limit)? searchUsers,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String query)? searchAll,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(query, scope, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchUsersEvent value) searchUsers,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(SearchAllEvent value) searchAll,
    required TResult Function(ClearSearchEvent value) clearSearch,
  }) {
    return searchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchUsersEvent value)? searchUsers,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(SearchAllEvent value)? searchAll,
    TResult? Function(ClearSearchEvent value)? clearSearch,
  }) {
    return searchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchUsersEvent value)? searchUsers,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(SearchAllEvent value)? searchAll,
    TResult Function(ClearSearchEvent value)? clearSearch,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(this);
    }
    return orElse();
  }
}

abstract class SearchUsersEvent implements SearchEvent {
  const factory SearchUsersEvent(
      {required final String query,
      final String scope,
      final int limit}) = _$SearchUsersEventImpl;

  String get query;
  String get scope;
  int get limit;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchUsersEventImplCopyWith<_$SearchUsersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCampaignsEventImplCopyWith<$Res> {
  factory _$$SearchCampaignsEventImplCopyWith(_$SearchCampaignsEventImpl value,
          $Res Function(_$SearchCampaignsEventImpl) then) =
      __$$SearchCampaignsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, String? categoryId, int limit});
}

/// @nodoc
class __$$SearchCampaignsEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchCampaignsEventImpl>
    implements _$$SearchCampaignsEventImplCopyWith<$Res> {
  __$$SearchCampaignsEventImplCopyWithImpl(_$SearchCampaignsEventImpl _value,
      $Res Function(_$SearchCampaignsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? categoryId = freezed,
    Object? limit = null,
  }) {
    return _then(_$SearchCampaignsEventImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchCampaignsEventImpl implements SearchCampaignsEvent {
  const _$SearchCampaignsEventImpl(
      {required this.query, this.categoryId, this.limit = 20});

  @override
  final String query;
  @override
  final String? categoryId;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'SearchEvent.searchCampaigns(query: $query, categoryId: $categoryId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCampaignsEventImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, categoryId, limit);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCampaignsEventImplCopyWith<_$SearchCampaignsEventImpl>
      get copyWith =>
          __$$SearchCampaignsEventImplCopyWithImpl<_$SearchCampaignsEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String scope, int limit)
        searchUsers,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String query) searchAll,
    required TResult Function() clearSearch,
  }) {
    return searchCampaigns(query, categoryId, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, String scope, int limit)? searchUsers,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String query)? searchAll,
    TResult? Function()? clearSearch,
  }) {
    return searchCampaigns?.call(query, categoryId, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String scope, int limit)? searchUsers,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String query)? searchAll,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (searchCampaigns != null) {
      return searchCampaigns(query, categoryId, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchUsersEvent value) searchUsers,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(SearchAllEvent value) searchAll,
    required TResult Function(ClearSearchEvent value) clearSearch,
  }) {
    return searchCampaigns(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchUsersEvent value)? searchUsers,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(SearchAllEvent value)? searchAll,
    TResult? Function(ClearSearchEvent value)? clearSearch,
  }) {
    return searchCampaigns?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchUsersEvent value)? searchUsers,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(SearchAllEvent value)? searchAll,
    TResult Function(ClearSearchEvent value)? clearSearch,
    required TResult orElse(),
  }) {
    if (searchCampaigns != null) {
      return searchCampaigns(this);
    }
    return orElse();
  }
}

abstract class SearchCampaignsEvent implements SearchEvent {
  const factory SearchCampaignsEvent(
      {required final String query,
      final String? categoryId,
      final int limit}) = _$SearchCampaignsEventImpl;

  String get query;
  String? get categoryId;
  int get limit;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCampaignsEventImplCopyWith<_$SearchCampaignsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAllEventImplCopyWith<$Res> {
  factory _$$SearchAllEventImplCopyWith(_$SearchAllEventImpl value,
          $Res Function(_$SearchAllEventImpl) then) =
      __$$SearchAllEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchAllEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchAllEventImpl>
    implements _$$SearchAllEventImplCopyWith<$Res> {
  __$$SearchAllEventImplCopyWithImpl(
      _$SearchAllEventImpl _value, $Res Function(_$SearchAllEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchAllEventImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchAllEventImpl implements SearchAllEvent {
  const _$SearchAllEventImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchAll(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAllEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAllEventImplCopyWith<_$SearchAllEventImpl> get copyWith =>
      __$$SearchAllEventImplCopyWithImpl<_$SearchAllEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String scope, int limit)
        searchUsers,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String query) searchAll,
    required TResult Function() clearSearch,
  }) {
    return searchAll(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, String scope, int limit)? searchUsers,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String query)? searchAll,
    TResult? Function()? clearSearch,
  }) {
    return searchAll?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String scope, int limit)? searchUsers,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String query)? searchAll,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (searchAll != null) {
      return searchAll(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchUsersEvent value) searchUsers,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(SearchAllEvent value) searchAll,
    required TResult Function(ClearSearchEvent value) clearSearch,
  }) {
    return searchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchUsersEvent value)? searchUsers,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(SearchAllEvent value)? searchAll,
    TResult? Function(ClearSearchEvent value)? clearSearch,
  }) {
    return searchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchUsersEvent value)? searchUsers,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(SearchAllEvent value)? searchAll,
    TResult Function(ClearSearchEvent value)? clearSearch,
    required TResult orElse(),
  }) {
    if (searchAll != null) {
      return searchAll(this);
    }
    return orElse();
  }
}

abstract class SearchAllEvent implements SearchEvent {
  const factory SearchAllEvent({required final String query}) =
      _$SearchAllEventImpl;

  String get query;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchAllEventImplCopyWith<_$SearchAllEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSearchEventImplCopyWith<$Res> {
  factory _$$ClearSearchEventImplCopyWith(_$ClearSearchEventImpl value,
          $Res Function(_$ClearSearchEventImpl) then) =
      __$$ClearSearchEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ClearSearchEventImpl>
    implements _$$ClearSearchEventImplCopyWith<$Res> {
  __$$ClearSearchEventImplCopyWithImpl(_$ClearSearchEventImpl _value,
      $Res Function(_$ClearSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearSearchEventImpl implements ClearSearchEvent {
  const _$ClearSearchEventImpl();

  @override
  String toString() {
    return 'SearchEvent.clearSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearSearchEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String scope, int limit)
        searchUsers,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String query) searchAll,
    required TResult Function() clearSearch,
  }) {
    return clearSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, String scope, int limit)? searchUsers,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String query)? searchAll,
    TResult? Function()? clearSearch,
  }) {
    return clearSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String scope, int limit)? searchUsers,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String query)? searchAll,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchUsersEvent value) searchUsers,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(SearchAllEvent value) searchAll,
    required TResult Function(ClearSearchEvent value) clearSearch,
  }) {
    return clearSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchUsersEvent value)? searchUsers,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(SearchAllEvent value)? searchAll,
    TResult? Function(ClearSearchEvent value)? clearSearch,
  }) {
    return clearSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchUsersEvent value)? searchUsers,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(SearchAllEvent value)? searchAll,
    TResult Function(ClearSearchEvent value)? clearSearch,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch(this);
    }
    return orElse();
  }
}

abstract class ClearSearchEvent implements SearchEvent {
  const factory ClearSearchEvent() = _$ClearSearchEventImpl;
}
