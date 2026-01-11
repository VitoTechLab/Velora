import 'package:flutter/material.dart';

/// Campaign category entity with UI metadata
class CampaignCategory {
  final String id;
  final String name;
  final IconData icon;
  final Color color;
  final String imageAsset;

  const CampaignCategory({
    required this.id,
    required this.name,
    required this.icon,
    required this.color,
    required this.imageAsset,
  });
}

/// Predefined campaign categories with colors and icons
final List<CampaignCategory> campaignCategories = [
  const CampaignCategory(
    id: 'emergency',
    name: 'Emergencies',
    icon: Icons.emergency,
    color: Color(0xFFE91E63),
    imageAsset: 'emergency',
  ),
  const CampaignCategory(
    id: 'medical',
    name: 'Medical',
    icon: Icons.medical_services,
    color: Color(0xFF2196F3),
    imageAsset: 'medical',
  ),
  const CampaignCategory(
    id: 'memorial',
    name: 'Funerals & Memorials',
    icon: Icons.favorite,
    color: Color(0xFF9C27B0),
    imageAsset: 'memorial',
  ),
  const CampaignCategory(
    id: 'education',
    name: 'Education',
    icon: Icons.school,
    color: Color(0xFFFF9800),
    imageAsset: 'education',
  ),
  const CampaignCategory(
    id: 'community',
    name: 'Community',
    icon: Icons.people,
    color: Color(0xFF4CAF50),
    imageAsset: 'community',
  ),
  const CampaignCategory(
    id: 'environment',
    name: 'Environment',
    icon: Icons.eco,
    color: Color(0xFF8BC34A),
    imageAsset: 'environment',
  ),
  const CampaignCategory(
    id: 'social_impact',
    name: 'Social Impact',
    icon: Icons.volunteer_activism,
    color: Color(0xFFE65100),
    imageAsset: 'social_impact',
  ),
  const CampaignCategory(
    id: 'technology',
    name: 'Technology',
    icon: Icons.computer,
    color: Color(0xFF00BCD4),
    imageAsset: 'technology',
  ),
  const CampaignCategory(
    id: 'fashion',
    name: 'Fashion',
    icon: Icons.checkroom,
    color: Color(0xFFFF4081),
    imageAsset: 'fashion',
  ),
  const CampaignCategory(
    id: 'food_beverage',
    name: 'Food & Beverage',
    icon: Icons.restaurant,
    color: Color(0xFFFF5722),
    imageAsset: 'food_beverage',
  ),
  const CampaignCategory(
    id: 'sports',
    name: 'Sports',
    icon: Icons.sports_soccer,
    color: Color(0xFF3F51B5),
    imageAsset: 'sports',
  ),
  const CampaignCategory(
    id: 'faith',
    name: 'Faith',
    icon: Icons.church,
    color: Color(0xFF795548),
    imageAsset: 'faith',
  ),
  const CampaignCategory(
    id: 'family',
    name: 'Family',
    icon: Icons.family_restroom,
    color: Color(0xFFFFC107),
    imageAsset: 'family',
  ),
  const CampaignCategory(
    id: 'volunteer',
    name: 'Volunteer',
    icon: Icons.volunteer_activism,
    color: Color(0xFF009688),
    imageAsset: 'volunteer',
  ),
  const CampaignCategory(
    id: 'travel',
    name: 'Travel',
    icon: Icons.flight,
    color: Color(0xFF03A9F4),
    imageAsset: 'travel',
  ),
  const CampaignCategory(
    id: 'creative',
    name: 'Creative',
    icon: Icons.palette,
    color: Color(0xFFE91E63),
    imageAsset: 'creative',
  ),
  const CampaignCategory(
    id: 'business',
    name: 'Business',
    icon: Icons.business_center,
    color: Color(0xFF607D8B),
    imageAsset: 'business',
  ),
  const CampaignCategory(
    id: 'wishes',
    name: 'Wishes',
    color: Color(0xFFFF6B9D),
    icon: Icons.stars,
    imageAsset: 'wishes',
  ),
  const CampaignCategory(
    id: 'newlyweds',
    name: 'Newlyweds',
    icon: Icons.favorite_border,
    color: Color(0xFFFF80AB),
    imageAsset: 'newlyweds',
  ),
  const CampaignCategory(
    id: 'other',
    name: 'Other',
    icon: Icons.more_horiz,
    color: Color(0xFF757575),
    imageAsset: 'other',
  ),
];
