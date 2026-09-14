import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/search/data/models/search_campaign_result_model.dart';

extension CampaignSearchResultMapper on CampaignEntity {
  SearchCampaignResultModel toSearchResultModel() {
    return SearchCampaignResultModel(
      id: id,
      title: title,
      coverImageUrl: coverImageUrl,
      amountRaised: amountRaised,
      targetAmount: targetAmount,
      organizerUsername: organizerUsername ?? '',
      categoryName: categoryName,
    );
  }
}
