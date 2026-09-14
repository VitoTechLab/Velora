// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_gallery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MediaGalleryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaGalleryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaGalleryEvent()';
}


}

/// @nodoc
class $MediaGalleryEventCopyWith<$Res>  {
$MediaGalleryEventCopyWith(MediaGalleryEvent _, $Res Function(MediaGalleryEvent) __);
}


/// Adds pattern-matching-related methods to [MediaGalleryEvent].
extension MediaGalleryEventPatterns on MediaGalleryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RequestPermission value)?  requestPermission,TResult Function( _LoadInitialMedia value)?  loadInitialMedia,TResult Function( _LoadMoreMedia value)?  loadMoreMedia,TResult Function( _ToggleSelection value)?  toggleSelection,TResult Function( _ClearSelection value)?  clearSelection,TResult Function( _ConvertAssetsToFiles value)?  convertAssetsToFiles,TResult Function( _ResetState value)?  resetState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestPermission() when requestPermission != null:
return requestPermission(_that);case _LoadInitialMedia() when loadInitialMedia != null:
return loadInitialMedia(_that);case _LoadMoreMedia() when loadMoreMedia != null:
return loadMoreMedia(_that);case _ToggleSelection() when toggleSelection != null:
return toggleSelection(_that);case _ClearSelection() when clearSelection != null:
return clearSelection(_that);case _ConvertAssetsToFiles() when convertAssetsToFiles != null:
return convertAssetsToFiles(_that);case _ResetState() when resetState != null:
return resetState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RequestPermission value)  requestPermission,required TResult Function( _LoadInitialMedia value)  loadInitialMedia,required TResult Function( _LoadMoreMedia value)  loadMoreMedia,required TResult Function( _ToggleSelection value)  toggleSelection,required TResult Function( _ClearSelection value)  clearSelection,required TResult Function( _ConvertAssetsToFiles value)  convertAssetsToFiles,required TResult Function( _ResetState value)  resetState,}){
final _that = this;
switch (_that) {
case _RequestPermission():
return requestPermission(_that);case _LoadInitialMedia():
return loadInitialMedia(_that);case _LoadMoreMedia():
return loadMoreMedia(_that);case _ToggleSelection():
return toggleSelection(_that);case _ClearSelection():
return clearSelection(_that);case _ConvertAssetsToFiles():
return convertAssetsToFiles(_that);case _ResetState():
return resetState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RequestPermission value)?  requestPermission,TResult? Function( _LoadInitialMedia value)?  loadInitialMedia,TResult? Function( _LoadMoreMedia value)?  loadMoreMedia,TResult? Function( _ToggleSelection value)?  toggleSelection,TResult? Function( _ClearSelection value)?  clearSelection,TResult? Function( _ConvertAssetsToFiles value)?  convertAssetsToFiles,TResult? Function( _ResetState value)?  resetState,}){
final _that = this;
switch (_that) {
case _RequestPermission() when requestPermission != null:
return requestPermission(_that);case _LoadInitialMedia() when loadInitialMedia != null:
return loadInitialMedia(_that);case _LoadMoreMedia() when loadMoreMedia != null:
return loadMoreMedia(_that);case _ToggleSelection() when toggleSelection != null:
return toggleSelection(_that);case _ClearSelection() when clearSelection != null:
return clearSelection(_that);case _ConvertAssetsToFiles() when convertAssetsToFiles != null:
return convertAssetsToFiles(_that);case _ResetState() when resetState != null:
return resetState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  requestPermission,TResult Function()?  loadInitialMedia,TResult Function()?  loadMoreMedia,TResult Function( GalleryMediaAsset asset)?  toggleSelection,TResult Function()?  clearSelection,TResult Function()?  convertAssetsToFiles,TResult Function()?  resetState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestPermission() when requestPermission != null:
return requestPermission();case _LoadInitialMedia() when loadInitialMedia != null:
return loadInitialMedia();case _LoadMoreMedia() when loadMoreMedia != null:
return loadMoreMedia();case _ToggleSelection() when toggleSelection != null:
return toggleSelection(_that.asset);case _ClearSelection() when clearSelection != null:
return clearSelection();case _ConvertAssetsToFiles() when convertAssetsToFiles != null:
return convertAssetsToFiles();case _ResetState() when resetState != null:
return resetState();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  requestPermission,required TResult Function()  loadInitialMedia,required TResult Function()  loadMoreMedia,required TResult Function( GalleryMediaAsset asset)  toggleSelection,required TResult Function()  clearSelection,required TResult Function()  convertAssetsToFiles,required TResult Function()  resetState,}) {final _that = this;
switch (_that) {
case _RequestPermission():
return requestPermission();case _LoadInitialMedia():
return loadInitialMedia();case _LoadMoreMedia():
return loadMoreMedia();case _ToggleSelection():
return toggleSelection(_that.asset);case _ClearSelection():
return clearSelection();case _ConvertAssetsToFiles():
return convertAssetsToFiles();case _ResetState():
return resetState();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  requestPermission,TResult? Function()?  loadInitialMedia,TResult? Function()?  loadMoreMedia,TResult? Function( GalleryMediaAsset asset)?  toggleSelection,TResult? Function()?  clearSelection,TResult? Function()?  convertAssetsToFiles,TResult? Function()?  resetState,}) {final _that = this;
switch (_that) {
case _RequestPermission() when requestPermission != null:
return requestPermission();case _LoadInitialMedia() when loadInitialMedia != null:
return loadInitialMedia();case _LoadMoreMedia() when loadMoreMedia != null:
return loadMoreMedia();case _ToggleSelection() when toggleSelection != null:
return toggleSelection(_that.asset);case _ClearSelection() when clearSelection != null:
return clearSelection();case _ConvertAssetsToFiles() when convertAssetsToFiles != null:
return convertAssetsToFiles();case _ResetState() when resetState != null:
return resetState();case _:
  return null;

}
}

}

/// @nodoc


class _RequestPermission implements MediaGalleryEvent {
  const _RequestPermission();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestPermission);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaGalleryEvent.requestPermission()';
}


}




/// @nodoc


class _LoadInitialMedia implements MediaGalleryEvent {
  const _LoadInitialMedia();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadInitialMedia);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaGalleryEvent.loadInitialMedia()';
}


}




/// @nodoc


class _LoadMoreMedia implements MediaGalleryEvent {
  const _LoadMoreMedia();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreMedia);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaGalleryEvent.loadMoreMedia()';
}


}




/// @nodoc


class _ToggleSelection implements MediaGalleryEvent {
  const _ToggleSelection(this.asset);
  

 final  GalleryMediaAsset asset;

/// Create a copy of MediaGalleryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleSelectionCopyWith<_ToggleSelection> get copyWith => __$ToggleSelectionCopyWithImpl<_ToggleSelection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleSelection&&(identical(other.asset, asset) || other.asset == asset));
}


@override
int get hashCode => Object.hash(runtimeType,asset);

@override
String toString() {
  return 'MediaGalleryEvent.toggleSelection(asset: $asset)';
}


}

/// @nodoc
abstract mixin class _$ToggleSelectionCopyWith<$Res> implements $MediaGalleryEventCopyWith<$Res> {
  factory _$ToggleSelectionCopyWith(_ToggleSelection value, $Res Function(_ToggleSelection) _then) = __$ToggleSelectionCopyWithImpl;
@useResult
$Res call({
 GalleryMediaAsset asset
});


$GalleryMediaAssetCopyWith<$Res> get asset;

}
/// @nodoc
class __$ToggleSelectionCopyWithImpl<$Res>
    implements _$ToggleSelectionCopyWith<$Res> {
  __$ToggleSelectionCopyWithImpl(this._self, this._then);

  final _ToggleSelection _self;
  final $Res Function(_ToggleSelection) _then;

/// Create a copy of MediaGalleryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? asset = null,}) {
  return _then(_ToggleSelection(
null == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as GalleryMediaAsset,
  ));
}

/// Create a copy of MediaGalleryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GalleryMediaAssetCopyWith<$Res> get asset {
  
  return $GalleryMediaAssetCopyWith<$Res>(_self.asset, (value) {
    return _then(_self.copyWith(asset: value));
  });
}
}

/// @nodoc


class _ClearSelection implements MediaGalleryEvent {
  const _ClearSelection();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearSelection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaGalleryEvent.clearSelection()';
}


}




/// @nodoc


class _ConvertAssetsToFiles implements MediaGalleryEvent {
  const _ConvertAssetsToFiles();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConvertAssetsToFiles);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaGalleryEvent.convertAssetsToFiles()';
}


}




/// @nodoc


class _ResetState implements MediaGalleryEvent {
  const _ResetState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaGalleryEvent.resetState()';
}


}




/// @nodoc
mixin _$MediaGalleryState {

 List<GalleryMediaAsset> get mediaList; List<GalleryMediaAsset> get selectedMedia; Set<String> get selectedIds; int get currentPage; int get totalCount; bool get hasMore; bool get isLoading; bool get isLoadingMore; bool get isConvertingFiles; bool get convertedFilesReady; bool get permissionGranted; String? get errorMessage; List<File> get convertedFiles;
/// Create a copy of MediaGalleryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaGalleryStateCopyWith<MediaGalleryState> get copyWith => _$MediaGalleryStateCopyWithImpl<MediaGalleryState>(this as MediaGalleryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaGalleryState&&const DeepCollectionEquality().equals(other.mediaList, mediaList)&&const DeepCollectionEquality().equals(other.selectedMedia, selectedMedia)&&const DeepCollectionEquality().equals(other.selectedIds, selectedIds)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isConvertingFiles, isConvertingFiles) || other.isConvertingFiles == isConvertingFiles)&&(identical(other.convertedFilesReady, convertedFilesReady) || other.convertedFilesReady == convertedFilesReady)&&(identical(other.permissionGranted, permissionGranted) || other.permissionGranted == permissionGranted)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.convertedFiles, convertedFiles));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(mediaList),const DeepCollectionEquality().hash(selectedMedia),const DeepCollectionEquality().hash(selectedIds),currentPage,totalCount,hasMore,isLoading,isLoadingMore,isConvertingFiles,convertedFilesReady,permissionGranted,errorMessage,const DeepCollectionEquality().hash(convertedFiles));

@override
String toString() {
  return 'MediaGalleryState(mediaList: $mediaList, selectedMedia: $selectedMedia, selectedIds: $selectedIds, currentPage: $currentPage, totalCount: $totalCount, hasMore: $hasMore, isLoading: $isLoading, isLoadingMore: $isLoadingMore, isConvertingFiles: $isConvertingFiles, convertedFilesReady: $convertedFilesReady, permissionGranted: $permissionGranted, errorMessage: $errorMessage, convertedFiles: $convertedFiles)';
}


}

/// @nodoc
abstract mixin class $MediaGalleryStateCopyWith<$Res>  {
  factory $MediaGalleryStateCopyWith(MediaGalleryState value, $Res Function(MediaGalleryState) _then) = _$MediaGalleryStateCopyWithImpl;
@useResult
$Res call({
 List<GalleryMediaAsset> mediaList, List<GalleryMediaAsset> selectedMedia, Set<String> selectedIds, int currentPage, int totalCount, bool hasMore, bool isLoading, bool isLoadingMore, bool isConvertingFiles, bool convertedFilesReady, bool permissionGranted, String? errorMessage, List<File> convertedFiles
});




}
/// @nodoc
class _$MediaGalleryStateCopyWithImpl<$Res>
    implements $MediaGalleryStateCopyWith<$Res> {
  _$MediaGalleryStateCopyWithImpl(this._self, this._then);

  final MediaGalleryState _self;
  final $Res Function(MediaGalleryState) _then;

/// Create a copy of MediaGalleryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mediaList = null,Object? selectedMedia = null,Object? selectedIds = null,Object? currentPage = null,Object? totalCount = null,Object? hasMore = null,Object? isLoading = null,Object? isLoadingMore = null,Object? isConvertingFiles = null,Object? convertedFilesReady = null,Object? permissionGranted = null,Object? errorMessage = freezed,Object? convertedFiles = null,}) {
  return _then(_self.copyWith(
mediaList: null == mediaList ? _self.mediaList : mediaList // ignore: cast_nullable_to_non_nullable
as List<GalleryMediaAsset>,selectedMedia: null == selectedMedia ? _self.selectedMedia : selectedMedia // ignore: cast_nullable_to_non_nullable
as List<GalleryMediaAsset>,selectedIds: null == selectedIds ? _self.selectedIds : selectedIds // ignore: cast_nullable_to_non_nullable
as Set<String>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isConvertingFiles: null == isConvertingFiles ? _self.isConvertingFiles : isConvertingFiles // ignore: cast_nullable_to_non_nullable
as bool,convertedFilesReady: null == convertedFilesReady ? _self.convertedFilesReady : convertedFilesReady // ignore: cast_nullable_to_non_nullable
as bool,permissionGranted: null == permissionGranted ? _self.permissionGranted : permissionGranted // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,convertedFiles: null == convertedFiles ? _self.convertedFiles : convertedFiles // ignore: cast_nullable_to_non_nullable
as List<File>,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaGalleryState].
extension MediaGalleryStatePatterns on MediaGalleryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaGalleryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaGalleryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaGalleryState value)  $default,){
final _that = this;
switch (_that) {
case _MediaGalleryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaGalleryState value)?  $default,){
final _that = this;
switch (_that) {
case _MediaGalleryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GalleryMediaAsset> mediaList,  List<GalleryMediaAsset> selectedMedia,  Set<String> selectedIds,  int currentPage,  int totalCount,  bool hasMore,  bool isLoading,  bool isLoadingMore,  bool isConvertingFiles,  bool convertedFilesReady,  bool permissionGranted,  String? errorMessage,  List<File> convertedFiles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaGalleryState() when $default != null:
return $default(_that.mediaList,_that.selectedMedia,_that.selectedIds,_that.currentPage,_that.totalCount,_that.hasMore,_that.isLoading,_that.isLoadingMore,_that.isConvertingFiles,_that.convertedFilesReady,_that.permissionGranted,_that.errorMessage,_that.convertedFiles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GalleryMediaAsset> mediaList,  List<GalleryMediaAsset> selectedMedia,  Set<String> selectedIds,  int currentPage,  int totalCount,  bool hasMore,  bool isLoading,  bool isLoadingMore,  bool isConvertingFiles,  bool convertedFilesReady,  bool permissionGranted,  String? errorMessage,  List<File> convertedFiles)  $default,) {final _that = this;
switch (_that) {
case _MediaGalleryState():
return $default(_that.mediaList,_that.selectedMedia,_that.selectedIds,_that.currentPage,_that.totalCount,_that.hasMore,_that.isLoading,_that.isLoadingMore,_that.isConvertingFiles,_that.convertedFilesReady,_that.permissionGranted,_that.errorMessage,_that.convertedFiles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GalleryMediaAsset> mediaList,  List<GalleryMediaAsset> selectedMedia,  Set<String> selectedIds,  int currentPage,  int totalCount,  bool hasMore,  bool isLoading,  bool isLoadingMore,  bool isConvertingFiles,  bool convertedFilesReady,  bool permissionGranted,  String? errorMessage,  List<File> convertedFiles)?  $default,) {final _that = this;
switch (_that) {
case _MediaGalleryState() when $default != null:
return $default(_that.mediaList,_that.selectedMedia,_that.selectedIds,_that.currentPage,_that.totalCount,_that.hasMore,_that.isLoading,_that.isLoadingMore,_that.isConvertingFiles,_that.convertedFilesReady,_that.permissionGranted,_that.errorMessage,_that.convertedFiles);case _:
  return null;

}
}

}

/// @nodoc


class _MediaGalleryState implements MediaGalleryState {
  const _MediaGalleryState({final  List<GalleryMediaAsset> mediaList = const [], final  List<GalleryMediaAsset> selectedMedia = const [], final  Set<String> selectedIds = const {}, this.currentPage = 0, this.totalCount = 0, this.hasMore = true, this.isLoading = false, this.isLoadingMore = false, this.isConvertingFiles = false, this.convertedFilesReady = false, this.permissionGranted = false, this.errorMessage, final  List<File> convertedFiles = const []}): _mediaList = mediaList,_selectedMedia = selectedMedia,_selectedIds = selectedIds,_convertedFiles = convertedFiles;
  

 final  List<GalleryMediaAsset> _mediaList;
@override@JsonKey() List<GalleryMediaAsset> get mediaList {
  if (_mediaList is EqualUnmodifiableListView) return _mediaList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mediaList);
}

 final  List<GalleryMediaAsset> _selectedMedia;
@override@JsonKey() List<GalleryMediaAsset> get selectedMedia {
  if (_selectedMedia is EqualUnmodifiableListView) return _selectedMedia;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedMedia);
}

 final  Set<String> _selectedIds;
@override@JsonKey() Set<String> get selectedIds {
  if (_selectedIds is EqualUnmodifiableSetView) return _selectedIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedIds);
}

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  int totalCount;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  bool isConvertingFiles;
@override@JsonKey() final  bool convertedFilesReady;
@override@JsonKey() final  bool permissionGranted;
@override final  String? errorMessage;
 final  List<File> _convertedFiles;
@override@JsonKey() List<File> get convertedFiles {
  if (_convertedFiles is EqualUnmodifiableListView) return _convertedFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_convertedFiles);
}


/// Create a copy of MediaGalleryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaGalleryStateCopyWith<_MediaGalleryState> get copyWith => __$MediaGalleryStateCopyWithImpl<_MediaGalleryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaGalleryState&&const DeepCollectionEquality().equals(other._mediaList, _mediaList)&&const DeepCollectionEquality().equals(other._selectedMedia, _selectedMedia)&&const DeepCollectionEquality().equals(other._selectedIds, _selectedIds)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isConvertingFiles, isConvertingFiles) || other.isConvertingFiles == isConvertingFiles)&&(identical(other.convertedFilesReady, convertedFilesReady) || other.convertedFilesReady == convertedFilesReady)&&(identical(other.permissionGranted, permissionGranted) || other.permissionGranted == permissionGranted)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._convertedFiles, _convertedFiles));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_mediaList),const DeepCollectionEquality().hash(_selectedMedia),const DeepCollectionEquality().hash(_selectedIds),currentPage,totalCount,hasMore,isLoading,isLoadingMore,isConvertingFiles,convertedFilesReady,permissionGranted,errorMessage,const DeepCollectionEquality().hash(_convertedFiles));

@override
String toString() {
  return 'MediaGalleryState(mediaList: $mediaList, selectedMedia: $selectedMedia, selectedIds: $selectedIds, currentPage: $currentPage, totalCount: $totalCount, hasMore: $hasMore, isLoading: $isLoading, isLoadingMore: $isLoadingMore, isConvertingFiles: $isConvertingFiles, convertedFilesReady: $convertedFilesReady, permissionGranted: $permissionGranted, errorMessage: $errorMessage, convertedFiles: $convertedFiles)';
}


}

/// @nodoc
abstract mixin class _$MediaGalleryStateCopyWith<$Res> implements $MediaGalleryStateCopyWith<$Res> {
  factory _$MediaGalleryStateCopyWith(_MediaGalleryState value, $Res Function(_MediaGalleryState) _then) = __$MediaGalleryStateCopyWithImpl;
@override @useResult
$Res call({
 List<GalleryMediaAsset> mediaList, List<GalleryMediaAsset> selectedMedia, Set<String> selectedIds, int currentPage, int totalCount, bool hasMore, bool isLoading, bool isLoadingMore, bool isConvertingFiles, bool convertedFilesReady, bool permissionGranted, String? errorMessage, List<File> convertedFiles
});




}
/// @nodoc
class __$MediaGalleryStateCopyWithImpl<$Res>
    implements _$MediaGalleryStateCopyWith<$Res> {
  __$MediaGalleryStateCopyWithImpl(this._self, this._then);

  final _MediaGalleryState _self;
  final $Res Function(_MediaGalleryState) _then;

/// Create a copy of MediaGalleryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mediaList = null,Object? selectedMedia = null,Object? selectedIds = null,Object? currentPage = null,Object? totalCount = null,Object? hasMore = null,Object? isLoading = null,Object? isLoadingMore = null,Object? isConvertingFiles = null,Object? convertedFilesReady = null,Object? permissionGranted = null,Object? errorMessage = freezed,Object? convertedFiles = null,}) {
  return _then(_MediaGalleryState(
mediaList: null == mediaList ? _self._mediaList : mediaList // ignore: cast_nullable_to_non_nullable
as List<GalleryMediaAsset>,selectedMedia: null == selectedMedia ? _self._selectedMedia : selectedMedia // ignore: cast_nullable_to_non_nullable
as List<GalleryMediaAsset>,selectedIds: null == selectedIds ? _self._selectedIds : selectedIds // ignore: cast_nullable_to_non_nullable
as Set<String>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isConvertingFiles: null == isConvertingFiles ? _self.isConvertingFiles : isConvertingFiles // ignore: cast_nullable_to_non_nullable
as bool,convertedFilesReady: null == convertedFilesReady ? _self.convertedFilesReady : convertedFilesReady // ignore: cast_nullable_to_non_nullable
as bool,permissionGranted: null == permissionGranted ? _self.permissionGranted : permissionGranted // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,convertedFiles: null == convertedFiles ? _self._convertedFiles : convertedFiles // ignore: cast_nullable_to_non_nullable
as List<File>,
  ));
}


}

// dart format on
