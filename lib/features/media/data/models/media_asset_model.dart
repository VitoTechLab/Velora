import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/media/domain/entities/media_asset_entity.dart';

part 'media_asset_model.freezed.dart';
part 'media_asset_model.g.dart';

@freezed
abstract class MediaAssetModel with _$MediaAssetModel {
  const factory MediaAssetModel({
    @JsonKey(name: 'public_id') required String publicId,
    @JsonKey(name: 'secure_url') required String secureUrl,
    @JsonKey(name: 'resource_type') required String resourceType,
    @JsonKey(name: 'format') required String format,
    @JsonKey(name: 'bytes') required int bytes,
    @JsonKey(name: 'width') @Default(0) int width,
    @JsonKey(name: 'height') @Default(0) int height,
    @JsonKey(name: 'duration')
    double? duration, // Duration in seconds for audio/video
  }) = _MediaAssetModel;

  factory MediaAssetModel.fromJson(Map<String, dynamic> json) =>
      _$MediaAssetModelFromJson(json);
}

extension MediaAssetModelX on MediaAssetModel {
  MediaAsset toEntity() {
    return MediaAsset(
      publicId: publicId,
      secureUrl: secureUrl,
      resourceType: resourceType,
      format: format,
      bytes: bytes,
      width: width,
      height: height,
      duration: duration,
    );
  }
}
