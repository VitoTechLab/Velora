import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/utils/cloudinary_url_builder.dart';
import 'package:velora/features/media/domain/entities/media_asset.dart';
import 'package:velora/features/media/presentation/cubit/media_upload_cubit.dart';
import 'package:velora/features/media/presentation/cubit/media_upload_state.dart';

class CreateCampaignScreen extends StatefulWidget {
  final String userId;
  final String campaignId;

  const CreateCampaignScreen({
    super.key,
    required this.userId,
    required this.campaignId,
  });

  @override
  State<CreateCampaignScreen> createState() => _CreateCampaignScreenState();
}

class _CreateCampaignScreenState extends State<CreateCampaignScreen> {
  File? _selectedFile;

  Future<void> _pickImage() async {
    // TODO: Integrate with your image picker implementation
    // setState(() => _selectedFile = pickedFile);
  }

  void _onUpload() {
    final file = _selectedFile;
    if (file == null) return;

    context.read<MediaUploadCubit>().uploadForCampaign(
      files: [file], // ✅ selalu list (walau cuma 1)
      userId: widget.userId,
      campaignId: widget.campaignId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Campaign Cover')),
      body: BlocConsumer<MediaUploadCubit, MediaUploadState>(
        listener: (context, state) {
          state.whenOrNull(
            failure: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.red),
              );
            },
            success: (assets) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    assets.isEmpty
                        ? 'Upload success (no assets returned)'
                        : 'Cover image uploaded successfully',
                  ),
                ),
              );
            },
          );
        },
        builder: (context, state) {
          final isUploading = state is MediaUploadLoading;

          // ✅ karena success sekarang list, ambil cover = first
          final MediaAsset? asset = state.maybeWhen(
            success: (assets) => assets.isNotEmpty ? assets.first : null,
            orElse: () => null,
          );

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                GestureDetector(
                  onTap: isUploading ? null : _pickImage,
                  child: Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade100,
                    ),
                    child: _selectedFile == null
                        ? const Center(
                            child: Text(
                              'Tap to pick cover image',
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        : Image.file(_selectedFile!, fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _selectedFile == null || isUploading
                        ? null
                        : _onUpload,
                    child: isUploading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Upload Cover for Campaign'),
                  ),
                ),
                const SizedBox(height: 24),
                if (asset != null) _buildResultSection(asset),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildResultSection(MediaAsset asset) {
    final detailUrl = CloudinaryUrlBuilder.detailImage(asset.secureUrl);
    final thumbUrl = CloudinaryUrlBuilder.thumbnail(asset.secureUrl);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Upload Result',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        SelectableText('secure_url:\n${asset.secureUrl}'),
        const SizedBox(height: 8),
        SelectableText('detail image URL:\n$detailUrl'),
        const SizedBox(height: 8),
        SelectableText('thumbnail URL:\n$thumbUrl'),
      ],
    );
  }
}
