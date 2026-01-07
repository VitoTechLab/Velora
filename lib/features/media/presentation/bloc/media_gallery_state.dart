part of 'media_gallery_bloc.dart';

@freezed
abstract class MediaGalleryState with _$MediaGalleryState {
  const factory MediaGalleryState({
    @Default([]) List<GalleryMediaAsset> mediaList,
    @Default([]) List<GalleryMediaAsset> selectedMedia,
    @Default({}) Set<String> selectedIds,
    @Default(0) int currentPage,
    @Default(0) int totalCount,
    @Default(true) bool hasMore,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(false) bool isConvertingFiles,
    @Default(false) bool convertedFilesReady,
    @Default(false) bool permissionGranted,
    String? errorMessage,
    @Default([]) List<File> convertedFiles,
  }) = _MediaGalleryState;
}
