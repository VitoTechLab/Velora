import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:velora/features/media/domain/entities/gallery_media_asset.dart';
import 'package:velora/features/media/domain/usecases/get_file_from_asset.dart';
import 'package:velora/features/media/domain/usecases/load_media_assets.dart';
import 'package:velora/features/media/domain/usecases/request_media_permission.dart';

part 'media_gallery_event.dart';
part 'media_gallery_state.dart';
part 'media_gallery_bloc.freezed.dart';

class MediaGalleryBloc extends Bloc<MediaGalleryEvent, MediaGalleryState> {
  final RequestMediaPermission requestMediaPermission;
  final LoadMediaAssets loadMediaAssets;
  final GetFileFromAsset getFileFromAsset;

  static const int _pageSize = 40;

  MediaGalleryBloc({
    required this.requestMediaPermission,
    required this.loadMediaAssets,
    required this.getFileFromAsset,
  }) : super(const MediaGalleryState()) {
    on<_RequestPermission>(_onRequestPermission);
    on<_LoadInitialMedia>(_onLoadInitialMedia);
    on<_LoadMoreMedia>(_onLoadMoreMedia);
    on<_ToggleSelection>(_onToggleSelection);
    on<_ClearSelection>(_onClearSelection);
    on<_ConvertAssetsToFiles>(_onConvertAssetsToFiles);
    on<_ResetState>(_onResetState);
  }

  Future<void> _onRequestPermission(
    _RequestPermission event,
    Emitter<MediaGalleryState> emit,
  ) async {
    final result = await requestMediaPermission();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            permissionGranted: false,
            errorMessage: failure.message,
          ),
        );
      },
      (permissionState) {
        if (permissionState.isAuth) {
          emit(state.copyWith(permissionGranted: true));
          add(const MediaGalleryEvent.loadInitialMedia());
        } else {
          emit(state.copyWith(permissionGranted: false));
        }
      },
    );
  }

  Future<void> _onLoadInitialMedia(
    _LoadInitialMedia event,
    Emitter<MediaGalleryState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final result = await loadMediaAssets(page: 0, pageSize: _pageSize);

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure.message));
      },
      (galleryMediaList) {
        emit(
          state.copyWith(
            isLoading: false,
            mediaList: galleryMediaList.assets,
            currentPage: galleryMediaList.currentPage,
            totalCount: galleryMediaList.totalCount,
            hasMore: galleryMediaList.hasMore,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreMedia(
    _LoadMoreMedia event,
    Emitter<MediaGalleryState> emit,
  ) async {
    if (state.isLoadingMore || !state.hasMore) return;

    emit(state.copyWith(isLoadingMore: true));

    final nextPage = state.currentPage + 1;
    final result = await loadMediaAssets(page: nextPage, pageSize: _pageSize);

    result.fold(
      (failure) {
        emit(
          state.copyWith(isLoadingMore: false, errorMessage: failure.message),
        );
      },
      (galleryMediaList) {
        final updatedList = List<GalleryMediaAsset>.from(state.mediaList)
          ..addAll(galleryMediaList.assets);

        emit(
          state.copyWith(
            isLoadingMore: false,
            mediaList: updatedList,
            currentPage: galleryMediaList.currentPage,
            totalCount: galleryMediaList.totalCount,
            hasMore: galleryMediaList.hasMore,
          ),
        );
      },
    );
  }

  void _onToggleSelection(
    _ToggleSelection event,
    Emitter<MediaGalleryState> emit,
  ) {
    final selectedList = List<GalleryMediaAsset>.from(state.selectedMedia);
    final selectedIds = Set<String>.from(state.selectedIds);
    final assetId = event.asset.id;

    if (selectedIds.contains(assetId)) {
      selectedList.removeWhere((a) => a.id == assetId);
      selectedIds.remove(assetId);
    } else {
      if (selectedList.length < 10) {
        selectedList.add(event.asset);
        selectedIds.add(assetId);
      } else {
        emit(state.copyWith(errorMessage: 'Maximum 10 images allowed'));
        return;
      }
    }

    emit(
      state.copyWith(
        selectedMedia: selectedList,
        selectedIds: selectedIds,
        errorMessage: null,
        convertedFilesReady: false,
      ),
    );
  }

  void _onClearSelection(
    _ClearSelection event,
    Emitter<MediaGalleryState> emit,
  ) {
    emit(
      state.copyWith(
        selectedMedia: [],
        selectedIds: {},
        convertedFiles: [],
        convertedFilesReady: false,
      ),
    );
  }

  Future<void> _onConvertAssetsToFiles(
    _ConvertAssetsToFiles event,
    Emitter<MediaGalleryState> emit,
  ) async {
    emit(state.copyWith(isConvertingFiles: true, convertedFilesReady: false));

    final List<File> files = [];

    for (final asset in state.selectedMedia) {
      final result = await getFileFromAsset(asset.assetEntity);
      result.fold(
        (_) {}, // Ignore failure
        (file) => files.add(file),
      );
    }

    emit(
      state.copyWith(
        convertedFiles: files,
        isConvertingFiles: false,
        convertedFilesReady: true,
      ),
    );
  }

  void _onResetState(_ResetState event, Emitter<MediaGalleryState> emit) {
    emit(const MediaGalleryState());
  }
}
