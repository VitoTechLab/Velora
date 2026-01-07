part of 'media_gallery_bloc.dart';

@freezed
class MediaGalleryEvent with _$MediaGalleryEvent {
  const factory MediaGalleryEvent.requestPermission() = _RequestPermission;
  const factory MediaGalleryEvent.loadInitialMedia() = _LoadInitialMedia;
  const factory MediaGalleryEvent.loadMoreMedia() = _LoadMoreMedia;
  const factory MediaGalleryEvent.toggleSelection(GalleryMediaAsset asset) =
      _ToggleSelection;
  const factory MediaGalleryEvent.clearSelection() = _ClearSelection;
  const factory MediaGalleryEvent.convertAssetsToFiles() =
      _ConvertAssetsToFiles;
  const factory MediaGalleryEvent.resetState() = _ResetState;
}
