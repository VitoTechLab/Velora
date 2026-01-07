import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_signature_model.freezed.dart';
part 'upload_signature_model.g.dart';

@freezed
abstract class UploadSignatureModel with _$UploadSignatureModel {
  const factory UploadSignatureModel({
    @JsonKey(name: 'api_key') required String apiKey,
    @JsonKey(name: 'timestamp') required int timestamp,
    @JsonKey(name: 'signature') required String signature,
    @JsonKey(name: 'public_id') required String publicId,
    @JsonKey(name: 'folder') required String folder,
  }) = _UploadSignatureModel;

  factory UploadSignatureModel.fromJson(Map<String, dynamic> json) =>
      _$UploadSignatureModelFromJson(json);
}
