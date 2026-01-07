import '../domain/entities/campaign_detail_model.dart';
import '../domain/entities/campaign_type.dart';

// Mock data untuk campaign detail
final mockDonationCampaign = CampaignDetailModel(
  id: '1',
  title: 'Help Build Clean Water Wells in Rural Indonesia',
  creatorName: 'Water for Life Foundation',
  isVerified: true,
  type: CampaignType.donation,
  category: 'Social Impact',
  raised: 125000000,
  target: 200000000,
  timeLeftLabel: 'D-12',
  donorsCount: 342,
  updatesCount: 8,
  milestonesCount: 3,
  commentsCount: 45,
);

final mockEquityCampaign = CampaignDetailModel(
  id: '2',
  title: 'Revolutionary AI-Powered Smart Garden System',
  creatorName: 'GreenTech Innovations',
  isVerified: true,
  type: CampaignType.equity,
  category: 'Technology',
  raised: 850000000,
  target: 1000000000,
  timeLeftLabel: 'D-45',
  donorsCount: 67,
  updatesCount: 12,
  milestonesCount: 2,
  commentsCount: 89,
  unitPrice: 50000,
  minBuyUnits: 10,
  riskGrade: 'B',
  projectedReturn: 18.5,
  equityChangePct: 6.2,
);

final mockUpdates = [
  UpdateModel(
    id: '1',
    title: 'First Well Completed! 🎉',
    dateLabel: '2 days ago',
    body:
        'We are thrilled to announce that the first water well has been successfully completed and is now serving 150 families in the village of Kampung Harapan. The community gathered for a celebration ceremony where the village elder blessed the well...',
  ),
  UpdateModel(
    id: '2',
    title: 'Site Survey for Second Location',
    dateLabel: '5 days ago',
    body:
        'Our team has completed the geological survey for the second well location. The water table is at a favorable depth, and we expect drilling to begin next week. Special thanks to local volunteers who helped with the assessment...',
  ),
  UpdateModel(
    id: '3',
    title: 'Partnership with Local Government',
    dateLabel: '1 week ago',
    body:
        'Great news! The district government has agreed to provide ongoing maintenance support for all wells we build. This partnership ensures long-term sustainability and community ownership of the water infrastructure...',
  ),
];

final mockComments = [
  CommentModel(
    id: '1',
    userName: 'Sarah Johnson',
    body:
        'This is such an inspiring project! I have donated and shared with my network. Keep up the amazing work!',
    timeAgo: '3 hours ago',
    likesCount: 24,
  ),
  CommentModel(
    id: '2',
    userName: 'Ahmad Rizki',
    body:
        'Saya dari desa sebelah dan melihat langsung dampaknya. Terima kasih banyak untuk bantuan yang diberikan!',
    timeAgo: '1 day ago',
    likesCount: 18,
  ),
  CommentModel(
    id: '3',
    userName: 'Michael Chen',
    body:
        'Could you provide more details about the maintenance plan? How will the wells be serviced long-term?',
    timeAgo: '2 days ago',
    likesCount: 12,
  ),
];

final mockDocuments = [
  DocumentModel(
    id: '1',
    title: 'Environmental Impact Assessment',
    typeLabel: 'PDF',
    status: 'Verified',
  ),
  DocumentModel(
    id: '2',
    title: 'Site Survey Report',
    typeLabel: 'PDF',
    status: 'Verified',
  ),
  DocumentModel(
    id: '3',
    title: 'Government Permit',
    typeLabel: 'Legal',
    status: 'Verified',
  ),
  DocumentModel(
    id: '4',
    title: 'Vendor Invoices Q1',
    typeLabel: 'Invoice',
    status: 'Pending',
  ),
];

final mockMilestones = [
  MilestoneModel(
    id: '1',
    title: 'First Well Completion',
    dueLabel: 'Completed',
    amount: 50000000,
    status: 'completed',
  ),
  MilestoneModel(
    id: '2',
    title: 'Second & Third Wells',
    dueLabel: 'Due: Jan 15, 2026',
    amount: 100000000,
    status: 'in_progress',
  ),
  MilestoneModel(
    id: '3',
    title: 'Community Training Program',
    dueLabel: 'Due: Feb 2026',
    amount: 50000000,
    status: 'pending',
  ),
];

final mockFundBreakdown = [
  BreakdownItem(
    label: 'Drilling & Construction',
    amount: 120000000,
    percent: 60,
  ),
  BreakdownItem(label: 'Equipment & Materials', amount: 40000000, percent: 20),
  BreakdownItem(label: 'Community Training', amount: 20000000, percent: 10),
  BreakdownItem(label: 'Maintenance Reserve', amount: 12000000, percent: 6),
  BreakdownItem(label: 'Administrative', amount: 8000000, percent: 4),
];

final mockProofItems = [
  ProofItem(id: '1', caption: 'Well drilling in progress'),
  ProofItem(id: '2', caption: 'Water quality testing'),
  ProofItem(id: '3', caption: 'Community celebration'),
  ProofItem(id: '4', caption: 'Training session'),
  ProofItem(id: '5', caption: 'Site documentation'),
];
