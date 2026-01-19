import 'dart:io';

abstract class CampaignPostEvent {
  const CampaignPostEvent();
}

class SubmitCampaignPostEvent extends CampaignPostEvent {
  const SubmitCampaignPostEvent({
    required this.userId,
    required this.title,
    required this.description,
    required this.targetAmount,
    this.categoryId,
    this.locationCity,
    this.endDate,
    this.mediaFiles = const <File>[],
  });

  final String userId;
  final String title;
  final String description;
  final double targetAmount;
  final String? categoryId;
  final String? locationCity;
  final DateTime? endDate;
  final List<File> mediaFiles;
}

class ClearCampaignPostTransientEvent extends CampaignPostEvent {
  const ClearCampaignPostTransientEvent();
}
