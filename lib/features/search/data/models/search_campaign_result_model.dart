import 'package:meta/meta.dart';

/// Raw model for search_campaigns() RPC result
@immutable
class SearchCampaignResultModel {
  const SearchCampaignResultModel({
    required this.id,
    required this.title,
    required this.coverImageUrl,
    required this.amountRaised,
    required this.targetAmount,
    required this.organizerUsername,
    required this.categoryName,
  });

  final String id;
  final String title;
  final String? coverImageUrl;
  final double amountRaised;
  final double targetAmount;
  final String organizerUsername;
  final String? categoryName;

  factory SearchCampaignResultModel.fromJson(Map<String, dynamic> json) {
    final dynamic amountRaisedRaw = json['amount_raised'];
    final dynamic targetAmountRaw = json['target_amount'];

    double toDouble(dynamic value) {
      if (value == null) return 0;
      if (value is num) return value.toDouble();
      if (value is String) return double.tryParse(value) ?? 0;
      return 0;
    }

    return SearchCampaignResultModel(
      id: json['id'] as String,
      title: json['title'] as String,
      coverImageUrl: json['cover_image_url'] as String?,
      amountRaised: toDouble(amountRaisedRaw),
      targetAmount: toDouble(targetAmountRaw),
      organizerUsername: (json['organizer_username'] as String?) ?? '',
      categoryName: json['category_name'] as String?,
    );
  }
}
