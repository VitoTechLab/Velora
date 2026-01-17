import 'dart:io';

import 'package:velora/features/media/data/models/media_asset_model.dart';
import 'package:velora/features/media/data/models/upload_signature_model.dart';

abstract class MediaRemoteDataSource {
  Future<UploadSignatureModel> getUploadSignature({
    required String publicId,
    required String folder,
    String resourceType = 'image',
  });

  Future<MediaAssetModel> uploadImageToCloudinary({
    required File file,
    required UploadSignatureModel signature,
  });

  Future<MediaAssetModel> uploadVideoToCloudinary({
    required File file,
    required UploadSignatureModel signature,
  });

  Future<MediaAssetModel> uploadRawToCloudinary({
    required File file,
    required UploadSignatureModel signature,
  });
}
