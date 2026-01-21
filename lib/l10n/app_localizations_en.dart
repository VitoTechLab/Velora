// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Velora';

  @override
  String get authSignInFormLabel => 'Sign in form';

  @override
  String get authLogoLabel => 'Velora logo';

  @override
  String get authWelcomeBackTitle => 'Welcome back';

  @override
  String get authSignInSubtitle => 'Sign in to continue';

  @override
  String get fieldEmailLabel => 'Email';

  @override
  String get fieldEmailHint => 'your@email.com';

  @override
  String get fieldPasswordLabel => 'Password';

  @override
  String get authForgotPassword => 'Forgot password?';

  @override
  String get authForgotPasswordHint =>
      'Forgot password. Navigate to reset password screen';

  @override
  String get authSignInButton => 'Sign In';

  @override
  String get authDividerText => 'or continue with';

  @override
  String authContinueWith(String brand) {
    return 'Continue with $brand';
  }

  @override
  String get authNoAccount => 'Don\'t have an account?';

  @override
  String get authSignUpLink => 'Sign up';

  @override
  String get authAgreeTermsError => 'Please agree to Terms & Privacy Policy';

  @override
  String get authGoogleUnavailable => 'Google sign-in is not available yet.';

  @override
  String get authSignUpFormLabel => 'Create account form';

  @override
  String get authCreateAccountTitle => 'Create account';

  @override
  String get authJoinCommunitySubtitle => 'Join Velora community';

  @override
  String get authAgreeTermsLabel =>
      'Agree to Terms of Service and Privacy Policy';

  @override
  String get authAgreeTermsPrefix => 'I agree to ';

  @override
  String get authTermsOfService => 'Terms of Service';

  @override
  String get authAnd => ' and ';

  @override
  String get authPrivacyPolicy => 'Privacy Policy';

  @override
  String get authCreateAccountButton => 'Create Account';

  @override
  String get authAlreadyHaveAccount => 'Already have an account?';

  @override
  String get authSignInLink => 'Sign in';

  @override
  String get commonGoBack => 'Go back';

  @override
  String get commonCancel => 'Cancel';

  @override
  String get commonError => 'Something went wrong';

  @override
  String get commonRetry => 'Retry';

  @override
  String get authResetPasswordFormLabel => 'Reset password form';

  @override
  String get authEmailIllustrationLabel => 'Email illustration';

  @override
  String get authResetPasswordTitle => 'Reset password';

  @override
  String get authResetPasswordSubtitle =>
      'Enter your registered email and we\'ll send you a link to reset your password.';

  @override
  String get authSendResetLink => 'Send reset link';

  @override
  String get authRememberPasswordLabel =>
      'Remember password? Go back to sign in';

  @override
  String get authRememberPasswordAction => 'Remember password? Sign in';

  @override
  String get authResetEmailSentLabel => 'Reset email sent';

  @override
  String get authCheckEmailTitle => 'Check your email';

  @override
  String get authBackToSignIn => 'Back to Sign In';

  @override
  String get authEmailVerificationLabel => 'Email verification instructions';

  @override
  String get authAnimatedEmailLabel => 'Animated email illustration';

  @override
  String get authVerificationInstructions =>
      'We\'ve sent you a verification link. Please check your inbox and click the link to verify your account.';

  @override
  String get authVerifiedCta => 'I\'ve verified my email';

  @override
  String get authResendVerificationLabel => 'Resend verification email';

  @override
  String get authVerificationEmailResent => 'Verification email resent';

  @override
  String get authWrongEmail => 'Wrong email? Sign out';

  @override
  String get authSignOutHint => 'Sign out and go back to sign in screen';

  @override
  String get authPasswordStrengthWeak => 'Weak';

  @override
  String get authPasswordStrengthStrong => 'Strong';

  @override
  String get authPasswordStrengthMedium => 'Medium';

  @override
  String get authPasswordStrengthFair => 'Fair';

  @override
  String get authPasswordStrengthLabel => 'Password Strength';

  @override
  String get authPasswordShow => 'Show password';

  @override
  String get authPasswordHide => 'Hide password';

  @override
  String get authPasswordRequirementsTitle => 'Password must contain:';

  @override
  String get authPasswordRequirementLength => 'At least 8 characters';

  @override
  String get authPasswordRequirementCase => 'Uppercase & lowercase letters';

  @override
  String get authPasswordRequirementNumber => 'At least one number';

  @override
  String get authPasswordRequirementSpecial => 'Special character (!@#\$%^&*)';

  @override
  String get feedTitle => 'Feed';

  @override
  String get feedCreatePostTooltip => 'Create post';

  @override
  String get feedNotificationsTooltip => 'Notifications';

  @override
  String get feedErrorLoading => 'Error loading feed';

  @override
  String get feedEmptyMessage => 'No posts yet';

  @override
  String get feedEmptySubtitle => 'Pull to refresh or check back later';

  @override
  String feedEmptyHint(String subtitle) {
    return '$subtitle. Double tap refresh button.';
  }

  @override
  String get feedRefreshButtonSemantic => 'Refresh feed';

  @override
  String get feedRefreshButton => 'Refresh';

  @override
  String get feedLoadingLabel => 'Loading feed';

  @override
  String get feedCommentsTitle => 'Comments';

  @override
  String feedReplyingTo(String name) {
    return 'Replying to $name';
  }

  @override
  String feedAddCommentHint(String name) {
    return 'Add a comment for $name';
  }

  @override
  String get feedNoCommentsTitle => 'No comments yet';

  @override
  String get feedNoCommentsSubtitle => 'Be the first to comment!';

  @override
  String get feedReplyAction => 'Reply';

  @override
  String get feedDeleteAction => 'Delete';

  @override
  String get feedSeeTranslation => 'See translation';

  @override
  String get feedSeeOriginal => 'See original';

  @override
  String get feedTranslating => 'Loading…';

  @override
  String feedCommentAsUser(String username) {
    return 'Comment as $username';
  }

  @override
  String feedViewReplies(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count replies',
      one: '$count reply',
    );
    return 'View $_temp0';
  }

  @override
  String get feedHideReplies => 'Hide replies';

  @override
  String get feedUnknownUser => 'Unknown user';

  @override
  String get feedPostSummaryFallback => 'post';

  @override
  String feedPostSemantics(String author, String summary, String time) {
    return '$author posted $summary $time';
  }

  @override
  String get feedOpenPostHint => 'Double tap to open post details';

  @override
  String get feedPostImageLabel => 'Post image';

  @override
  String feedPostImagePositionLabel(int index, int total) {
    return 'Post image $index of $total';
  }

  @override
  String get feedCampaignFallback => 'Campaign';

  @override
  String feedOpenCampaignLabel(String title) {
    return 'Open campaign $title';
  }

  @override
  String get feedLikeLabel => 'Like post';

  @override
  String get feedUnlikeLabel => 'Unlike post';

  @override
  String get feedLikeHint => 'Double tap to like this post';

  @override
  String get feedUnlikeHint => 'Double tap to remove your like';

  @override
  String get feedViewCommentsLabel => 'View comments';

  @override
  String get feedViewCommentsHint => 'Double tap to open comments';

  @override
  String get feedShareComingSoon => 'Share feature coming soon';

  @override
  String get feedShareLabel => 'Share post';

  @override
  String get feedShareHint => 'Double tap to share';

  @override
  String get feedRemoveBookmarkLabel => 'Remove bookmark';

  @override
  String get feedAddBookmarkLabel => 'Bookmark this post';

  @override
  String get timeAgoNow => 'now';

  @override
  String timeAgoMinutes(int count) {
    return '${count}m';
  }

  @override
  String timeAgoHours(int count) {
    return '${count}h';
  }

  @override
  String timeAgoDays(int count) {
    return '${count}d';
  }

  @override
  String timeAgoMonths(int count) {
    return '${count}mo';
  }

  @override
  String timeAgoYears(int count) {
    return '${count}y';
  }

  @override
  String countThousands(String value) {
    return '${value}K';
  }

  @override
  String countMillions(String value) {
    return '${value}M';
  }

  @override
  String get settingsAccountsCenterTitle => 'Accounts Center';

  @override
  String get settingsAccountsCenterSubtitle =>
      'Manage connected experiences, identity, and privacy';

  @override
  String get settingsSearchTooltip => 'Search settings';

  @override
  String get settingsConnectedTitle => 'Connected experiences';

  @override
  String get settingsConnectedSubtitle =>
      'Control how your Velora identity works across platforms.';

  @override
  String get settingsTileProfilesTitle => 'Profiles';

  @override
  String get settingsTileProfilesSubtitle => 'Vito • Velora, Forum, Community';

  @override
  String get settingsTileSharingTitle => 'Sharing across profiles';

  @override
  String get settingsTileSharingSubtitle =>
      'Choose what gets synced automatically';

  @override
  String get settingsTileActivityTitle => 'Activity history';

  @override
  String get settingsTileActivitySubtitle =>
      'View your recent activities and interactions';

  @override
  String get settingsTileLoggingTitle => 'Logging in with accounts';

  @override
  String get settingsTileLoggingSubtitle =>
      'Review devices and login approvals';

  @override
  String get settingsTileAccountStatusTitle => 'Account Status';

  @override
  String get settingsTileAccountStatusSubtitle =>
      'View verification status and account activity';

  @override
  String get settingsAccountTitle => 'Account settings';

  @override
  String get settingsTilePasswordSecurityTitle => 'Password and security';

  @override
  String get settingsTilePasswordSecuritySubtitle =>
      '2FA, trusted devices, security alerts';

  @override
  String get settingsTilePersonalDetailsTitle => 'Personal details';

  @override
  String get settingsTilePersonalDetailsSubtitle =>
      'Name, username, profile links';

  @override
  String get settingsTileInfoPermissionsTitle =>
      'Your information & permissions';

  @override
  String get settingsTileInfoPermissionsSubtitle =>
      'Data download, permissions, audience';

  @override
  String get settingsTileAdPreferencesTitle => 'Ad preferences';

  @override
  String get settingsTileAdPreferencesSubtitle => 'Topics you see more often';

  @override
  String get settingsTileVeloraPayTitle => 'Velora Pay';

  @override
  String get settingsTileVeloraPaySubtitle => 'Payment methods and protections';

  @override
  String get settingsWalletTitle => 'Wallet';

  @override
  String get campaignCreateRequiredFields => 'Please fill all required fields';

  @override
  String get campaignCreateInvalidTarget => 'Target amount must be > 0';

  @override
  String get campaignCreateSuccess => 'Campaign created successfully';

  @override
  String get campaignCreateTitle => 'Create Campaign';

  @override
  String get campaignCreateSubtitle =>
      'Tell your story clearly and set a transparent goal.';

  @override
  String get campaignCreateBasicInfo => 'Basic information';

  @override
  String get campaignCreateTitleLabel => 'Title';

  @override
  String get campaignCreateTitleHint => 'Save a local cafe';

  @override
  String get campaignCreateDescriptionLabel => 'Description';

  @override
  String get campaignCreateDescriptionHint =>
      'Share the background, impact, and how funds will be used.';

  @override
  String get campaignCreateGoalSection => 'Goal & duration';

  @override
  String get campaignCreateTargetLabel => 'Target amount';

  @override
  String get campaignCreateTargetHint => 'e.g. 5000000';

  @override
  String get campaignCreateEndDateLabel => 'End date (optional)';

  @override
  String get campaignCreateContextSection => 'Context';

  @override
  String get campaignCreateLocationLabel => 'City (optional)';

  @override
  String get campaignCreateLocationHint => 'Where is this campaign located?';

  @override
  String get campaignCreateLoadingCategories => 'Loading categories...';

  @override
  String get campaignCreateCategoryLabel => 'Category';

  @override
  String get campaignCreateCTA => 'Publish campaign';

  @override
  String get walletDashboardTitle => 'Wallet Dashboard';

  @override
  String get walletDashboardWalletId => 'Wallet ID';

  @override
  String get walletDashboardTotalBalance => 'Total Balance';

  @override
  String get walletDashboardQuickActions => 'Quick Actions';

  @override
  String get walletDashboardDonationHistory => 'Donation History';

  @override
  String get walletDashboardDonationHistorySubtitle =>
      'View all your donation transactions';

  @override
  String get walletDashboardMyCampaigns => 'My Campaigns';

  @override
  String get walletDashboardMyCampaignsSubtitle =>
      'Manage your fundraising campaigns';

  @override
  String get walletDashboardMyDonations => 'My Donations';

  @override
  String get walletDashboardMyDonationsSubtitle => 'Track your contributions';

  @override
  String get walletDashboardAnalytics => 'Analytics';

  @override
  String get walletDashboardAnalyticsSubtitle => 'View insights and statistics';

  @override
  String get walletDashboardRecentActivity => 'Recent Activity';

  @override
  String get walletDashboardNoActivity => 'No activity yet';

  @override
  String get walletDashboardNoActivitySubtitle =>
      'Your wallet transactions will appear here';

  @override
  String get walletDashboardUnderDevelopmentTitle => 'Under Development';

  @override
  String get walletDashboardUnderDevelopmentMessage =>
      'This feature is currently under development and will be available soon.';

  @override
  String get walletDashboardUnderDevelopmentButton => 'OK';

  @override
  String get walletDashboardMainWallet => 'Main Wallet';

  @override
  String get walletDashboardCampaignWallets => 'Campaign Wallets';

  @override
  String get walletDashboardAvailableBalance => 'Available Balance';

  @override
  String get walletDashboardTopUp => 'Top Up';

  @override
  String get walletDashboardWithdraw => 'Withdraw';

  @override
  String get walletDashboardSetupBank => 'Setup Bank';

  @override
  String get walletDashboardBankDetails => 'Bank Details';

  @override
  String get walletDashboardBankName => 'Bank Name';

  @override
  String get walletDashboardAccountNumber => 'Account Number';

  @override
  String get walletDashboardAccountHolder => 'Account Holder Name';

  @override
  String get walletDashboardAmount => 'Amount';

  @override
  String get walletDashboardTo => 'To';

  @override
  String get walletDashboardNoMainWallet => 'No wallet yet';

  @override
  String get walletDashboardCreateWallet => 'Create Wallet';

  @override
  String get walletDashboardNoCampaignWallets =>
      'No campaign wallets yet. Start a campaign to receive donations!';

  @override
  String get walletDashboardStartCampaign => 'Start a Campaign';

  @override
  String get settingsPersonalizationTitle => 'Personalization';

  @override
  String get settingsTileNotificationsTitle => 'Notifications';

  @override
  String get settingsTileNotificationsSubtitle =>
      'Push, email, and SMS preferences';

  @override
  String get settingsTileThemeTitle => 'Theme';

  @override
  String get settingsTileThemeSubtitle => 'App appearance, dark mode, contrast';

  @override
  String get settingsTileLanguageTitle => 'Language';

  @override
  String get settingsTileLanguageSubtitle => 'Choose the language Velora uses';

  @override
  String get settingsTileAccessibilityTitle => 'Accessibility';

  @override
  String get settingsTileAccessibilitySubtitle => 'Font, contrast, captions';

  @override
  String get settingsHelpTitle => 'Help & resources';

  @override
  String get settingsTileHelpCenterTitle => 'Help center';

  @override
  String get settingsTileHelpCenterSubtitle =>
      'Guides, tutorials, and quick answers';

  @override
  String get settingsTileFaqTitle => 'FAQ';

  @override
  String get settingsTileFaqSubtitle => 'Most asked topics in one place';

  @override
  String get settingsTileAboutTitle => 'About Velora';

  @override
  String get settingsTileAboutSubtitle =>
      'Version, licenses, and acknowledgements';

  @override
  String get settingsHeroSemanticsLabel =>
      'Meta ID profile summary and security status';

  @override
  String get settingsHeroMetaId => 'Meta ID';

  @override
  String get settingsHeroLearnMore => 'Learn more';

  @override
  String get settingsHeroNetworks => 'Facebook • Instagram • Velora';

  @override
  String get settingsHeroSwitchButton => 'Switch';

  @override
  String get settingsHeroPasswordUpdated => 'Password updated 2 days ago';

  @override
  String get settingsHeroPasswordSubtitle =>
      'Keep your account secure with alerts & approvals.';

  @override
  String get settingsHeroReviewButton => 'Review';

  @override
  String get settingsHeroAccountType => 'Personal Account';

  @override
  String get settingsHeroAccountTypeSubtitle =>
      'Tap to view account type details';

  @override
  String get accountTypeScreenTitle => 'Account Type';

  @override
  String get accountTypeScreenCurrentType => 'Current Account Type';

  @override
  String get accountTypeScreenPersonal => 'Personal Account';

  @override
  String get accountTypeScreenPersonalDescription =>
      'Perfect for individual users who want to connect with friends and family.';

  @override
  String get accountTypeScreenPersonalBenefitsTitle =>
      'Personal Account Benefits';

  @override
  String get accountTypeScreenBenefit1Title => 'Personal Profile';

  @override
  String get accountTypeScreenBenefit1Subtitle =>
      'Maintain your personal identity and privacy';

  @override
  String get accountTypeScreenBenefit2Title => 'Privacy Controls';

  @override
  String get accountTypeScreenBenefit2Subtitle =>
      'Full control over your personal data';

  @override
  String get accountTypeScreenBenefit3Title => 'Social Connection';

  @override
  String get accountTypeScreenBenefit3Subtitle =>
      'Connect with friends and family easily';

  @override
  String get accountTypeScreenOrganization => 'Organization Account';

  @override
  String get accountTypeScreenOrganizationDescription =>
      'Upgrade to organization account to access advanced business features and verification.';

  @override
  String get accountTypeScreenOrganizationBenefitsTitle =>
      'Organization Benefits:';

  @override
  String get accountTypeScreenOrgBenefit1 => 'Verified badge for authenticity';

  @override
  String get accountTypeScreenOrgBenefit2 => 'Advanced analytics and insights';

  @override
  String get accountTypeScreenOrgBenefit3 => 'Promotional tools and campaigns';

  @override
  String get accountTypeScreenOrgBenefit4 => 'Team collaboration features';

  @override
  String get accountTypeScreenUpgradeButton => 'Upgrade to Organization';

  @override
  String get accountTypeScreenVerificationTitle => 'Account Verification';

  @override
  String get accountTypeScreenVerificationSubtitle =>
      'To upgrade to organization account, please complete the verification process.';

  @override
  String get accountTypeScreenVerificationStep1 => 'ID Card Photo';

  @override
  String get accountTypeScreenVerificationStep1Subtitle =>
      'Take a clear photo of your ID card (KTP)';

  @override
  String get accountTypeScreenVerificationStep2 => 'Selfie Photo';

  @override
  String get accountTypeScreenVerificationStep2Subtitle =>
      'Take a selfie holding your ID card';

  @override
  String get accountTypeScreenVerificationSubmit => 'Submit Verification';

  @override
  String get accountTypeScreenVerificationCancel => 'Cancel';

  @override
  String get accountTypeScreenVerificationSuccess =>
      'Verification submitted successfully! We\'ll review your request within 1-3 business days.';

  @override
  String get settingsSearchProfiles => 'Profiles';

  @override
  String get settingsSearchPassword => 'Password';

  @override
  String get settingsSearchSecurity => 'Security';

  @override
  String get settingsSearchNotifications => 'Notifications';

  @override
  String get settingsSearchPrivacy => 'Privacy';

  @override
  String get settingsSearchLanguage => 'Language';

  @override
  String get settingsSearchTheme => 'Theme';

  @override
  String get settingsSearchHelp => 'Help';

  @override
  String get settingsSearchPayments => 'Payments';

  @override
  String get settingsProfileTitle => 'Profile';

  @override
  String get settingsProfileSubtitle => 'Update what people can see on Velora';

  @override
  String get settingsProfilePhotoLabelCover => 'cover photo';

  @override
  String get settingsProfilePhotoLabelProfile => 'profile photo';

  @override
  String get settingsProfilePhotoActionTake => 'Take photo';

  @override
  String get settingsProfilePhotoActionGallery => 'Choose from gallery';

  @override
  String get settingsProfilePhotoActionRemove => 'Remove photo';

  @override
  String get settingsProfilePhotoActionCancel => 'Cancel';

  @override
  String settingsProfilePhotoToastCamera(String target) {
    return 'Opening camera for $target...';
  }

  @override
  String settingsProfilePhotoToastGallery(String target) {
    return 'Opening gallery for $target...';
  }

  @override
  String settingsProfileFieldUpdated(String field) {
    return '$field updated';
  }

  @override
  String get settingsProfileInfoSectionTitle => 'Profile info';

  @override
  String get settingsProfileFieldName => 'Name';

  @override
  String get settingsProfileFieldNameHelper =>
      'You can only change your name twice within 14 days.';

  @override
  String get settingsProfileFieldUsername => 'Username';

  @override
  String get settingsProfileFieldUsernameHelper =>
      'Pick a unique username. People can find you with @username.';

  @override
  String get settingsProfileFieldBio => 'Bio';

  @override
  String get settingsProfileFieldBioHelper =>
      'Share a short description. Keep it under 150 characters.';

  @override
  String get settingsProfileFieldWebsite => 'Website';

  @override
  String get settingsProfileFieldWebsiteHelper =>
      'Enter a valid URL people can tap from your bio.';

  @override
  String get settingsProfileInfoSyncTitle =>
      'Profile info syncing is no longer available';

  @override
  String get settingsProfileInfoSyncDescription =>
      'Your name and username will no longer sync across apps. Manage synced profile pictures through Connected experiences.';

  @override
  String get settingsProfileAccountSectionTitle => 'Account';

  @override
  String get settingsProfileAccountTypeTitle => 'Account type';

  @override
  String get settingsProfileAccountTypeSubtitle => 'Choose how you use Velora';

  @override
  String get settingsProfileAccountTypePersonal => 'Personal';

  @override
  String get settingsProfileAccountTypeOrganization => 'Organization';

  @override
  String get settingsProfileAccountTypePersonalDescription =>
      'Personal accounts are for individual supporters.';

  @override
  String get settingsProfileAccountTypeOrganizationDescription =>
      'Organization accounts unlock verifications and analytics.';

  @override
  String get settingsProfileConnectedTitle => 'Connected accounts';

  @override
  String get settingsProfileConnectedNotConnected => 'Not connected';

  @override
  String get settingsProfileConnectedDisconnect => 'Disconnect';

  @override
  String get settingsProfileConnectedConnect => 'Connect';

  @override
  String get settingsProfileCrossTitle => 'Cross-platform';

  @override
  String get settingsProfileCrossSubtitle =>
      'Control how Velora syncs to other networks';

  @override
  String get settingsProfileCrossAutoShareTitle => 'Auto-share posts';

  @override
  String get settingsProfileCrossAutoShareSubtitle =>
      'Share to connected accounts';

  @override
  String get settingsProfileCrossSyncNotificationsTitle => 'Sync notifications';

  @override
  String get settingsProfileCrossSyncNotificationsSubtitle =>
      'Get notified across platforms';

  @override
  String get settingsProfileCrossFindFriendsTitle => 'Find friends';

  @override
  String get settingsProfileCrossFindFriendsSubtitle =>
      'Match people from other networks';

  @override
  String get settingsProfileEditTitle => 'Edit profile';

  @override
  String get settingsProfileEditSubtitle => 'Update your personal information';

  @override
  String get settingsProfileEditTabName => 'Name';

  @override
  String get settingsProfileEditTabBio => 'Bio & Details';

  @override
  String get settingsProfileEditUsedProfiles => 'Used for 2 profiles';

  @override
  String get settingsProfileEditFirstName => 'First name';

  @override
  String get settingsProfileEditMiddleName => 'Middle name';

  @override
  String get settingsProfileEditLastName => 'Last name';

  @override
  String get settingsProfileEditRequiredField => 'Required field';

  @override
  String get settingsProfileEditApplyTo => 'Apply to';

  @override
  String get settingsProfileEditApplyAllProfiles => 'All profiles';

  @override
  String get settingsProfileEditApplyFacebook => 'Facebook only';

  @override
  String get settingsProfileEditApplyInstagram => 'Instagram only';

  @override
  String get settingsProfileEditNameChangeInfo =>
      'If you change your name, you can\'t change it again for 60 days. Use your authentic name so friends know it\'s you.';

  @override
  String get settingsProfileEditOtherNamesTitle => 'Other names';

  @override
  String get settingsProfileEditOtherNamesDescription =>
      'Other names are always public and help people find you on Velora.';

  @override
  String get settingsProfileEditOtherNamesManage => 'Manage other names';

  @override
  String get settingsProfileEditReviewSchedule => 'Schedule review';

  @override
  String settingsProfileEditReviewScheduled(String date) {
    return 'Review on $date';
  }

  @override
  String get settingsProfileEditReviewChange => 'Review change';

  @override
  String get settingsProfileEditNameSubmitted =>
      'Name information sent for review';

  @override
  String get settingsProfileEditIdentitySection => 'Identity';

  @override
  String get settingsProfileEditContactSection => 'Contact preferences';

  @override
  String get settingsProfileEditContactEveryone => 'Everyone';

  @override
  String get settingsProfileEditContactFollowers => 'Followers';

  @override
  String get settingsProfileEditContactNoOne => 'No one';

  @override
  String get settingsProfileEditShowProfileInfo =>
      'Show profile info on donations';

  @override
  String get settingsProfileEditDisplayFollowerCount =>
      'Display follower count';

  @override
  String get settingsProfileEditProfileUpdated => 'Profile updated';

  @override
  String get settingsProfileEditSaveChanges => 'Save changes';

  @override
  String get settingsProfileEditPronounsLabel => 'Pronouns';

  @override
  String get settingsProfileEditProfileNotFound => 'Profile not found';

  @override
  String get settingsProfileEditTapToChangePhoto => 'Tap to change photo';

  @override
  String settingsProfileEditFailedToPickImage(String error) {
    return 'Failed to pick image: $error';
  }

  @override
  String settingsProfileEditUploadFailed(String error) {
    return 'Upload failed: $error';
  }

  @override
  String settingsProfileEditUploadError(String error) {
    return 'Upload error: $error';
  }

  @override
  String get settingsProfileEditUserNotAuthenticated =>
      'User not authenticated';

  @override
  String get settingsProfileEditNoChanges => 'No changes to save';

  @override
  String get settingsProfileFieldFullName => 'Full Name';

  @override
  String get settingsProfileFieldEmail => 'Email';

  @override
  String get settingsProfileFieldLocation => 'Location';

  @override
  String get settingsProfileFieldLocationHint => 'Where are you based?';

  @override
  String get settingsProfileFieldWebsiteHint => 'https://example.com';

  @override
  String get settingsProfileFieldBioHint => 'Tell us about yourself';

  @override
  String get settingsProfileFieldSave => 'Save';

  @override
  String get settingsProfileFieldEditFallbackTitle => 'Edit field';

  @override
  String get settingsProfileFieldEditFallbackLabel => 'Field';

  @override
  String get settingsSecurityPasswordSectionTitle => 'Password';

  @override
  String get settingsSecurityPasswordChange => 'Change password';

  @override
  String get settingsSecurityPasswordLastChanged => 'Last changed 2 months ago';

  @override
  String get settingsSecurityPasswordToast =>
      'Change password feature coming soon';

  @override
  String get settingsSecurityTwoFactorSectionTitle =>
      'Two-factor authentication';

  @override
  String get settingsSecurityTwoFactorTitle => 'Two-factor authentication';

  @override
  String get settingsSecurityTwoFactorSubtitle =>
      'Require a security code in addition to your password';

  @override
  String get settingsSecurityTwoFactorMethods =>
      'Authenticator app (Google Authenticator, Authy)\nSMS to +62 812-XXXX-5678';

  @override
  String get settingsSecurityBiometricSectionTitle => 'Biometric security';

  @override
  String get settingsSecurityBiometricTitle => 'Biometric unlock';

  @override
  String get settingsSecurityBiometricSubtitle =>
      'Use fingerprint or face recognition';

  @override
  String get settingsSecurityLoginActivityTitle => 'Login activity';

  @override
  String settingsSecurityLoginActivityEntry(String time) {
    return 'Today at $time';
  }

  @override
  String get settingsSecurityLoginActivityLocation =>
      'Jakarta, Indonesia • Android';

  @override
  String get settingsSecuritySessionsTitle => 'Active device sessions';

  @override
  String get settingsSecuritySessionsDevice1Title => 'Samsung Galaxy S23';

  @override
  String get settingsSecuritySessionsDevice1Subtitle =>
      'Jakarta, Indonesia • Active now';

  @override
  String get settingsSecuritySessionsBadgeCurrent => 'Current';

  @override
  String get settingsSecuritySessionsDetails => 'Details';

  @override
  String get settingsSecuritySessionsDevice2Title => 'Chrome on Windows';

  @override
  String get settingsSecuritySessionsDevice2Subtitle =>
      'Bandung, Indonesia • 2 days ago';

  @override
  String get settingsSecuritySessionsSignOut => 'Sign out';

  @override
  String get settingsSecurityAlertsTitle => 'Security alerts';

  @override
  String get settingsSecurityAlertsDeviceTitle => 'Device alerts';

  @override
  String get settingsSecurityAlertsDeviceSubtitle =>
      'Get notified when your account is accessed from a new device';

  @override
  String get settingsSecurityRecoveryTitle => 'Account recovery';

  @override
  String get settingsSecurityRecoveryTrustedTitle => 'Trusted contacts';

  @override
  String get settingsSecurityRecoveryTrustedSubtitle =>
      'Add people who can help you recover your account';

  @override
  String get settingsSecurityRecoveryCodesTitle => 'Download recovery codes';

  @override
  String get settingsSecurityRecoveryCodesSubtitle =>
      'Save backup codes in case you lose access';

  @override
  String get settingsPrivacyTitle => 'Privacy';

  @override
  String get settingsPrivacySubtitle => 'Control your visibility and data';

  @override
  String get settingsPrivacyAudienceTitle => 'Audience & visibility';

  @override
  String get settingsPrivacyPrivateAccountTitle => 'Private account';

  @override
  String get settingsPrivacyPrivateAccountSubtitle =>
      'Approve followers before they see your activity';

  @override
  String get settingsPrivacySearchTitle => 'Appear in search';

  @override
  String get settingsPrivacySearchSubtitle =>
      'Allow people to discover you by name or username';

  @override
  String get settingsPrivacyDirectMessagesTitle => 'Direct messages';

  @override
  String get settingsPrivacyDirectMessagesAllowTitle =>
      'Allow messages from everyone';

  @override
  String get settingsPrivacyDirectMessagesAllowSubtitle =>
      'Messages from non-followers go to requests';

  @override
  String get settingsPrivacyDataPermissionsTitle => 'Data & permissions';

  @override
  String get settingsPrivacyDownloadInfoTitle => 'Download your information';

  @override
  String get settingsPrivacyDownloadInfoSubtitle =>
      'Get a copy of your posts, donations, and messages';

  @override
  String get settingsPrivacyDeleteAccountTitle => 'Delete account';

  @override
  String get settingsPrivacyDeleteAccountSubtitle =>
      'Permanently remove your account and data';

  @override
  String get settingsPrivacyDataSharingTitle => 'Data sharing';

  @override
  String get settingsPrivacyDataSharingSubtitle =>
      'Control analytics and personalized experiences';

  @override
  String get settingsPrivacyAnalyticsTitle => 'Share usage analytics';

  @override
  String get settingsPrivacyAnalyticsSubtitle =>
      'Help us improve Velora by sharing anonymized usage';

  @override
  String get settingsPrivacyPersonalizedTitle => 'Personalized experiences';

  @override
  String get settingsPrivacyPersonalizedSubtitle =>
      'Use my activity to tailor content and ads';

  @override
  String get postCreateAppBarTitle => 'Create Post';

  @override
  String get postCreateAppBarNext => 'Next';

  @override
  String get postCreateTitle => 'New Post';

  @override
  String get postCreatePublishTooltip => 'Publish post';

  @override
  String get postCreatePublishHint => 'Double tap to publish your post';

  @override
  String get postCreatePublishLabel => 'Publish';

  @override
  String get postCreateMediaLabel => 'Selected media preview';

  @override
  String get postCreateMediaHint => 'Swipe to review your selected media';

  @override
  String get postCreateActionAddAudio => 'Add audio';

  @override
  String get postCreateActionTagPeople => 'Tag people';

  @override
  String get postCreateActionAddLocation => 'Add location';

  @override
  String get postCreateActionAudience => 'Audience';

  @override
  String get postCreateAudienceFollowers => 'Followers';

  @override
  String get postCreateActionMoreOptions => 'More options';

  @override
  String postCreateActionHintAdjust(String action) {
    return 'Double tap to adjust $action';
  }

  @override
  String postCreateActionHintOpen(String action) {
    return 'Double tap to $action';
  }

  @override
  String get postCreateSelectMediaError => 'Please select at least one image';

  @override
  String postCreateUploadFailed(String error) {
    return 'Upload failed: $error';
  }

  @override
  String get postCreateSuccess => 'Post created successfully!';

  @override
  String postCreateFailure(String error) {
    return 'Create post failed: $error';
  }

  @override
  String get postCreateDialogTitle => 'Publishing Post';

  @override
  String get postCreateDialogPreparing => 'Preparing to upload...';

  @override
  String get postCreateDialogUploading => 'Uploading media...';

  @override
  String get postCreateDialogCreating => 'Creating post...';

  @override
  String postCreateDialogError(String error) {
    return 'Error: $error';
  }

  @override
  String get postCaptionHint => 'Write a caption...';

  @override
  String get postMediaPreviewLabel => 'Media preview carousel';

  @override
  String get postMediaPreviewHint =>
      'Swipe left or right to preview selected media';

  @override
  String get postMediaRemoveLabel => 'Remove current media';

  @override
  String postMediaRemoveHint(int index) {
    return 'Double tap to remove media $index';
  }

  @override
  String postGalleryLoadError(String error) {
    return 'Error loading images: $error';
  }

  @override
  String get postGalleryImageLabel => 'Gallery image';

  @override
  String postGalleryImageHintSelected(int position) {
    return 'Selected at position $position';
  }

  @override
  String get postGalleryImageHintSelect => 'Double tap to select this image';

  @override
  String get postGalleryEmptyTitle => 'No photos selected';

  @override
  String get postGalleryEmptySubtitle =>
      'Tap the button below to select photos from your gallery';

  @override
  String get postGallerySelectButton => 'Select photos';

  @override
  String get postToolbarLocation => 'Location';

  @override
  String get postToolbarLink => 'Link';

  @override
  String get postToolbarCampaign => 'Campaign';

  @override
  String get postMoreOptionsTitle => 'More options';

  @override
  String get postMoreOptionsHeader => 'How others can interact with your post';

  @override
  String get postMoreOptionsTurnOffCommentsTitle => 'Turn off commenting';

  @override
  String get postMoreOptionsTurnOffCommentsSubtitle =>
      'You can change this later by going to the ⋯ menu at the top of your post.';

  @override
  String get postMoreOptionsHideLikeCountTitle =>
      'Hide like count on this post';

  @override
  String get postMoreOptionsHideShareCountTitle =>
      'Hide share count on this post';

  @override
  String get postMoreOptionsHideShareCountSubtitle =>
      'Only you will see the total number of likes and shares on this post. You can change this later by going to the ⋯ menu at the top of your post. You can hide the number of likes and shares on posts from other accounts by going to Settings. Learn more';

  @override
  String get postMoreOptionsHideCommentCountTitle =>
      'Hide comment count on this post';

  @override
  String get postMoreOptionsHideLikesListTitle =>
      'Hide list of people who liked this post';

  @override
  String get postMoreOptionsHideLikesListSubtitle =>
      'Viewers will see the like count (unless hidden) but not who liked it.';

  @override
  String postToggleHintEnable(String action) {
    return 'Double tap to allow $action';
  }

  @override
  String postToggleHintDisable(String action) {
    return 'Double tap to disable $action';
  }

  @override
  String get chatScreenTitle => 'Chats';

  @override
  String get chatScreenNewChatLabel => 'Start new chat';

  @override
  String get chatScreenNewChatTooltip => 'New chat';

  @override
  String get chatScreenListLabel => 'Chats list';

  @override
  String get chatScreenListHint => 'Swipe up or down to browse conversations';

  @override
  String get chatScreenRetry => 'Retry';

  @override
  String get chatScreenNoChats => 'No Chat History';

  @override
  String get chatScreenNoChatsHint =>
      'Start a new conversation to see your chats here';

  @override
  String get chatScreenUnnamed => 'Unnamed';

  @override
  String get chatScreenUnnamedGroup => 'Unnamed Group';

  @override
  String get chatFilterAll => 'All';

  @override
  String get chatFilterUnread => 'Unread';

  @override
  String get chatFilterFavourites => 'Favourites';

  @override
  String get chatFilterGroups => 'Groups';

  @override
  String chatFilterSemanticsLabel(String filter) {
    return '$filter filter';
  }

  @override
  String chatFilterSemanticsHint(String filter) {
    return 'Double tap to filter chats by $filter';
  }

  @override
  String get chatSearchBarLabel => 'Search chats';

  @override
  String get chatSearchBarHint => 'Enter text to search conversations';

  @override
  String get chatSearchBarPlaceholder => 'Ask Meta AI or search';

  @override
  String chatListItemSemanticsLabel(String name) {
    return 'Chat with $name';
  }

  @override
  String get chatListItemSemanticsHint => 'Double tap to open conversation';

  @override
  String chatListItemPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count photos',
      one: '$count photo',
    );
    return '$_temp0';
  }

  @override
  String get chatListItemPhoto => 'Photo';

  @override
  String get chatListItemMissedCall => 'Missed voice call';

  @override
  String get chatBubbleYourLabel => 'Your message';

  @override
  String get chatBubbleReceivedLabel => 'Received message';

  @override
  String chatBubbleHint(String time) {
    return 'Message sent at $time';
  }

  @override
  String get chatMediaYourLabel => 'Your media message';

  @override
  String get chatMediaReceivedLabel => 'Received media message';

  @override
  String chatMediaHint(String time) {
    return 'Media sent at $time';
  }

  @override
  String chatDateSeparatorLabel(String date) {
    return 'Date separator: $date';
  }

  @override
  String get chatInputEmojiLabel => 'Emoji picker';

  @override
  String get chatInputEmojiHint => 'Double tap to open emoji picker';

  @override
  String get chatInputEmojiTooltip => 'Emoji';

  @override
  String get chatInputFieldLabel => 'Message input';

  @override
  String get chatInputFieldHint => 'Type your message here';

  @override
  String get chatInputFieldPlaceholder => 'Message';

  @override
  String get chatInputAttachLabel => 'Attach file';

  @override
  String get chatInputAttachHint => 'Double tap to attach file';

  @override
  String get chatInputAttachTooltip => 'Attach file';

  @override
  String get chatInputCameraLabel => 'Camera';

  @override
  String get chatInputCameraHint => 'Double tap to open camera';

  @override
  String get chatInputCameraTooltip => 'Camera';

  @override
  String get chatInputSendLabel => 'Send message';

  @override
  String get chatInputSendHint => 'Double tap to send message';

  @override
  String get chatInputVoiceLabel => 'Voice message';

  @override
  String get chatInputVoiceHint => 'Double tap to record voice message';

  @override
  String get chatAttachmentGallery => 'Gallery';

  @override
  String get chatAttachmentCamera => 'Camera';

  @override
  String get chatAttachmentLocation => 'Location';

  @override
  String get chatAttachmentContact => 'Contact';

  @override
  String get chatAttachmentDocument => 'Document';

  @override
  String get chatAttachmentAudio => 'Audio';

  @override
  String get chatAttachmentPoll => 'Poll';

  @override
  String get chatAttachmentEvent => 'Event';

  @override
  String get chatAttachmentAiImages => 'AI images';

  @override
  String chatAttachmentSelectHint(String label) {
    return 'Double tap to select $label';
  }

  @override
  String get chatDetailBackLabel => 'Go back';

  @override
  String chatDetailTitleLabel(String name) {
    return 'Conversation with $name';
  }

  @override
  String get chatDetailGroupSubtitle => 'Tap here for group info';

  @override
  String get chatDetailSelfSubtitle => 'Message yourself';

  @override
  String get chatDetailOptionsLabel => 'Conversation options';

  @override
  String get chatDetailMenuTooltip => 'More options';

  @override
  String get chatDetailHistoryLabel => 'Conversation history';

  @override
  String get chatDetailHistoryHint => 'Swipe up to review older messages';

  @override
  String get chatDetailNoMessages => 'No messages yet';

  @override
  String get chatDetailNoMessagesHint =>
      'Send a message to start the conversation';

  @override
  String get chatDetailMessageDeleted => 'This message was deleted';

  @override
  String get chatDetailSelectMediaTitle => 'Select media type';

  @override
  String get chatDetailSelectImages => 'Images';

  @override
  String get chatDetailSelectVideo => 'Video';

  @override
  String chatDetailImagesSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count images selected',
      one: '$count image selected',
    );
    return '$_temp0';
  }

  @override
  String get chatDetailVideoSelected => 'Video selected';

  @override
  String get chatDetailPickMediaError => 'Failed to pick media';

  @override
  String get chatDetailCameraModeTitle => 'Select camera mode';

  @override
  String get chatDetailCameraTakePhoto => 'Take photo';

  @override
  String get chatDetailCameraRecordVideo => 'Record video';

  @override
  String get chatDetailPhotoCaptured => 'Photo captured';

  @override
  String get chatDetailVideoRecorded => 'Video recorded';

  @override
  String get chatDetailPollCreated => 'Poll created';

  @override
  String get chatDetailEventCreated => 'Event created';

  @override
  String chatDetailDocumentsSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count documents selected',
      one: '$count document selected',
    );
    return '$_temp0';
  }

  @override
  String get chatDetailDocumentError => 'Failed to pick documents';

  @override
  String get chatDetailAudioSelected => 'Audio file selected';

  @override
  String get chatDetailAudioError => 'Failed to pick audio';

  @override
  String get chatDetailLocationSelected => 'Location selected';

  @override
  String get chatDetailContactSelected => 'Contact selected';

  @override
  String get chatDetailAiImagesSelected => 'AI images selected';

  @override
  String get chatDetailVoiceMessage => 'Voice message';

  @override
  String get chatDetailVoiceError => 'Failed to record voice message';

  @override
  String get chatDetailVoiceRecorded => 'Uploading voice message...';

  @override
  String get chatDetailDownloadFile => 'Download file';

  @override
  String get chatDetailDownloading => 'Downloading...';

  @override
  String get chatDetailDownloadSuccess => 'File downloaded successfully';

  @override
  String get chatDetailDownloadError => 'Failed to download file';

  @override
  String get chatDetailOpenFile => 'Open file';

  @override
  String get voiceRecorderTitle => 'Voice Message';

  @override
  String get voiceRecorderCheckingPermission =>
      'Checking microphone permission...';

  @override
  String get voiceRecorderNoPermission =>
      'Microphone permission is required to record voice messages';

  @override
  String get voiceRecorderRetryPermission => 'Grant Permission';

  @override
  String get voiceRecorderTapToStart => 'Tap to start recording';

  @override
  String get voiceRecorderRecording => 'Recording...';

  @override
  String get voiceRecorderPaused => 'Paused';

  @override
  String get voiceRecorderCancel => 'Cancel';

  @override
  String get voiceRecorderPause => 'Pause';

  @override
  String get voiceRecorderResume => 'Resume';

  @override
  String get voiceRecorderSend => 'Send';

  @override
  String get chatDetailAudioUnavailable => 'Audio unavailable';

  @override
  String get chatDetailFileDownloading => 'Downloading file...';

  @override
  String get chatDetailStatusOnline => 'Online';

  @override
  String get chatDetailTyping => 'typing';

  @override
  String get chatDetailLastSeenJustNow => 'last seen just now';

  @override
  String chatDetailLastSeenMinutes(int minutes) {
    return 'last seen $minutes min ago';
  }

  @override
  String chatDetailLastSeenHours(int hours) {
    return 'last seen ${hours}h ago';
  }

  @override
  String chatDetailLastSeenDays(int days) {
    return 'last seen ${days}d ago';
  }

  @override
  String chatDetailLastSeenDate(String date) {
    return 'last seen $date';
  }

  @override
  String get chatScreenTyping => 'typing...';

  @override
  String get chatSearchScreenTitle => 'Search';

  @override
  String get chatSearchScreenRecent => 'Recent searches';

  @override
  String get chatSearchScreenClearAll => 'Clear all';

  @override
  String get chatSearchGlobalLabel => 'Global search';

  @override
  String get chatSearchGlobalHint =>
      'Search across campaigns, posts, and people';

  @override
  String get chatSearchPlaceholder => 'Search…';

  @override
  String get chatSearchScopeCampaigns => 'Campaigns';

  @override
  String get chatSearchScopePosts => 'Posts';

  @override
  String get chatSearchScopePeople => 'People';

  @override
  String chatSearchScopeSemantics(String scope) {
    return '$scope scope';
  }

  @override
  String chatSearchRecentItemLabel(String query) {
    return 'Recent search: $query';
  }

  @override
  String get chatSearchRecentItemHint => 'Double tap to search again';

  @override
  String get chatSearchRecentDeleteLabel => 'Delete recent search';

  @override
  String get chatSearchRecentDeleteTooltip => 'Remove';

  @override
  String get chatPollLabel => 'POLL';

  @override
  String get chatPollSemanticsYour => 'Your poll';

  @override
  String get chatPollSemanticsReceived => 'Received poll';

  @override
  String chatPollSemanticsHint(int count) {
    return 'Poll with $count votes';
  }

  @override
  String chatPollTotalVotes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count votes',
      one: '$count vote',
    );
    return '$_temp0';
  }

  @override
  String chatPollOptionSemantics(String option, int votes, String percent) {
    return '$option, $votes votes, $percent percent';
  }

  @override
  String get chatPollVoteHint => 'Double tap to vote for this option';

  @override
  String get chatPollDialogTitle => 'Create poll';

  @override
  String get chatPollDialogQuestionLabel => 'Poll question';

  @override
  String get chatPollDialogQuestionHint => 'Ask a question…';

  @override
  String get chatPollDialogOptionsLabel => 'Options';

  @override
  String chatPollDialogOptionLabel(int index) {
    return 'Option $index';
  }

  @override
  String get chatPollDialogOptionHint => 'Enter option…';

  @override
  String get chatPollDialogAddOption => 'Add option';

  @override
  String get chatPollDialogQuestionError => 'Please enter a question';

  @override
  String get chatPollDialogOptionsError => 'Please add at least 2 options';

  @override
  String get chatPollDialogMultipleChoiceLabel => 'Multiple choice';

  @override
  String get chatPollDialogMultipleChoiceHint =>
      'Allow users to select multiple options';

  @override
  String get chatPollDialogMaxVotesLabel => 'Maximum votes';

  @override
  String chatPollDialogMaxVotesHint(int count) {
    return 'Users can vote for up to $count options';
  }

  @override
  String get chatPollDialogSend => 'Send poll';

  @override
  String get chatEventLabel => 'EVENT';

  @override
  String get chatEventSemanticsYour => 'Your event';

  @override
  String get chatEventSemanticsReceived => 'Received event';

  @override
  String chatEventHint(String date) {
    return 'Event on $date';
  }

  @override
  String get chatEventDialogTitle => 'Create event';

  @override
  String get chatEventDialogTitleLabel => 'Event title';

  @override
  String get chatEventDialogTitleHint => 'Enter event title…';

  @override
  String get chatEventDialogDescriptionLabel => 'Description';

  @override
  String get chatEventDialogDescriptionHint => 'Enter event description…';

  @override
  String get chatEventDialogLocationLabel => 'Location (optional)';

  @override
  String get chatEventDialogLocationHint => 'Enter location…';

  @override
  String get chatEventDialogAddressLabel => 'Address';

  @override
  String get chatEventDialogAddressHint => 'Enter full address…';

  @override
  String get chatEventDialogOnlineLabel => 'Online event';

  @override
  String get chatEventDialogOnlineHint => 'This event will be held virtually';

  @override
  String get chatEventDialogMeetingUrlLabel => 'Meeting URL';

  @override
  String get chatEventDialogMeetingUrlHint =>
      'Enter meeting link (Zoom, Google Meet, etc.)';

  @override
  String get chatEventDialogMeetingUrlError =>
      'Please enter a meeting URL for online events';

  @override
  String get chatEventDialogStartLabel => 'Start';

  @override
  String get chatEventDialogEndLabel => 'End';

  @override
  String get chatEventDialogTitleError => 'Please enter an event title';

  @override
  String get chatEventDialogEndTimeError => 'End time must be after start time';

  @override
  String get chatEventDialogSend => 'Send event';

  @override
  String get chatEventResponseTitle => 'Your response';

  @override
  String get chatEventResponseGoing => 'Going';

  @override
  String get chatEventResponseMaybe => 'Maybe';

  @override
  String get chatEventResponseNo => 'No';

  @override
  String chatEventResponseSummary(int going, int maybe, int notGoing) {
    return '$going going • $maybe maybe • $notGoing not going';
  }

  @override
  String chatEventResponseButtonLabel(String label) {
    return '$label response';
  }

  @override
  String chatEventResponseButtonHint(String label) {
    return 'Double tap to respond $label to event';
  }

  @override
  String get settingsAppearanceLanguageTitle => 'Language';

  @override
  String get settingsAppearanceLanguagePreviewSemantics =>
      'Current language preview';

  @override
  String get settingsAppearanceLanguageCurrentLabel => 'Current language';

  @override
  String get settingsAppearanceLanguageSearchHint => 'Search languages...';

  @override
  String get settingsAppearanceLanguageEmpty => 'No languages found';

  @override
  String settingsAppearanceLanguageToast(String language) {
    return 'Language changed to $language';
  }

  @override
  String get settingsAppearanceLanguageRestartNote =>
      'App will restart to apply language changes.';

  @override
  String get settingsAppearanceThemeTitle => 'Theme & appearance';

  @override
  String get settingsAppearanceThemeModeSection => 'Theme mode';

  @override
  String get settingsAppearanceThemeModeLight => 'Light';

  @override
  String get settingsAppearanceThemeModeDark => 'Dark';

  @override
  String get settingsAppearanceThemeModeAuto => 'Auto';

  @override
  String get settingsAppearanceThemeModeDescription =>
      'System mode automatically adjusts based on your device settings.';

  @override
  String get settingsAppearanceThemeColorSection => 'Color';

  @override
  String get settingsAppearanceThemeColorDynamic => 'Dynamic color';

  @override
  String get settingsAppearanceThemeShapeSection => 'Shape';

  @override
  String get settingsAppearanceThemeShapeCorner => 'Corner radius';

  @override
  String settingsAppearanceThemeShapeCornerValue(int px) {
    return '$px px';
  }

  @override
  String get settingsAppearanceThemeShapeSquare => 'Square';

  @override
  String get settingsAppearanceThemeShapeSmall => 'Small';

  @override
  String get settingsAppearanceThemeShapeMedium => 'Medium';

  @override
  String get settingsAppearanceThemeShapeLarge => 'Large';

  @override
  String get settingsAppearanceThemeShapeMax => 'Max';

  @override
  String get settingsAppearanceThemeAdvancedSection => 'Advanced';

  @override
  String get settingsAppearanceThemeAccentTitle => 'Accent color';

  @override
  String get settingsAppearanceThemeAccentSubtitle =>
      'Customize highlight color';

  @override
  String get settingsAppearanceThemeAccentToast => 'Color picker coming soon';

  @override
  String get settingsAppearanceThemeTypographyTitle => 'Typography';

  @override
  String get settingsAppearanceThemeTypographySubtitle =>
      'Font family and size';

  @override
  String get settingsAppearanceThemeTypographyToast =>
      'Typography settings coming soon';

  @override
  String get settingsAppearanceThemeAnimationsTitle => 'Animations';

  @override
  String get settingsAppearanceThemeAnimationsSubtitle =>
      'Transition effects and motion';

  @override
  String get settingsAppearanceThemeAnimationsToast =>
      'Animation settings coming soon';

  @override
  String get settingsAppearanceThemePreviewTitle => 'Live preview';

  @override
  String get settingsAppearanceThemePreviewSampleCard => 'Sample card';

  @override
  String settingsAppearanceThemeModeLabel(String mode) {
    return '$mode mode';
  }

  @override
  String get settingsAppearanceNotificationsTitle => 'Notifications';

  @override
  String get settingsAppearanceNotificationsQuick => 'Quick controls';

  @override
  String get settingsAppearanceNotificationsPauseAllTitle =>
      'Pause all notifications';

  @override
  String get settingsAppearanceNotificationsPauseAllSubtitle =>
      'Temporarily stop all alerts';

  @override
  String get settingsAppearanceNotificationsSleepModeTitle => 'Sleep mode';

  @override
  String get settingsAppearanceNotificationsSleepModeSubtitle =>
      'Mute notifications during these hours';

  @override
  String get settingsAppearanceNotificationsPostsSection => 'Posts & stories';

  @override
  String get settingsAppearanceNotificationsPostsPeople =>
      'Posts from people I follow';

  @override
  String get settingsAppearanceNotificationsPostsLive => 'Live videos';

  @override
  String get settingsAppearanceNotificationsPostsLiveSubtitle =>
      'When someone goes live';

  @override
  String get settingsAppearanceNotificationsPostsCampaigns => 'New campaigns';

  @override
  String get settingsAppearanceNotificationsPostsCampaignsSubtitle =>
      'From creators I follow';

  @override
  String get settingsAppearanceNotificationsEngagementSection => 'Engagement';

  @override
  String get settingsAppearanceNotificationsEngagementLikes =>
      'Likes on my posts';

  @override
  String get settingsAppearanceNotificationsEngagementReplies =>
      'Comment replies';

  @override
  String get settingsAppearanceNotificationsEngagementMentions => 'Mentions';

  @override
  String get settingsAppearanceNotificationsEngagementMentionsSubtitle =>
      'When someone tags me';

  @override
  String get settingsAppearanceNotificationsEngagementFollowers =>
      'New followers';

  @override
  String get settingsAppearanceNotificationsDonationsSection =>
      'Donations & campaigns';

  @override
  String get settingsAppearanceNotificationsDonationsReceivedTitle =>
      'Donation received';

  @override
  String get settingsAppearanceNotificationsDonationsReceivedSubtitle =>
      'When someone donates to my campaign';

  @override
  String get settingsAppearanceNotificationsDonationsMilestonesTitle =>
      'Campaign milestones';

  @override
  String get settingsAppearanceNotificationsDonationsMilestonesSubtitle =>
      '25%, 50%, 75%, 100% reached';

  @override
  String get settingsAppearanceNotificationsDonationsUpdatesTitle =>
      'Campaign updates';

  @override
  String get settingsAppearanceNotificationsDonationsUpdatesSubtitle =>
      'From campaigns I donated to';

  @override
  String get settingsAppearanceNotificationsDonationsWithdrawTitle =>
      'Withdrawal status';

  @override
  String get settingsAppearanceNotificationsDonationsWithdrawSubtitle =>
      'Processing, completed, or failed';

  @override
  String get settingsAppearanceNotificationsMessagesSection => 'Messages';

  @override
  String get settingsAppearanceNotificationsMessagesDirect => 'Direct messages';

  @override
  String get settingsAppearanceNotificationsMessagesRequests =>
      'Message requests';

  @override
  String get settingsAppearanceNotificationsMessagesRequestsSubtitle =>
      'From people I don’t follow';

  @override
  String get settingsAppearanceNotificationsMessagesGroups => 'Group invites';

  @override
  String get settingsAppearanceNotificationsSummaryTitle =>
      'Notification summary';

  @override
  String get settingsAppearanceNotificationsSummarySubtitle =>
      'Get a daily or weekly digest instead of real-time notifications';

  @override
  String get settingsAppearanceNotificationsSummaryOff => 'Off';

  @override
  String get settingsAppearanceNotificationsSummaryDaily => 'Daily';

  @override
  String get settingsAppearanceNotificationsSummaryWeekly => 'Weekly';

  @override
  String get settingsAppearanceNotificationsOtherSection => 'Other channels';

  @override
  String get settingsAppearanceNotificationsOtherEmailTitle =>
      'Email notifications';

  @override
  String get settingsAppearanceNotificationsOtherEmailSubtitle =>
      'Weekly digest and important updates';

  @override
  String get settingsAppearanceNotificationsOtherSmsTitle =>
      'SMS notifications';

  @override
  String get settingsAppearanceNotificationsOtherSmsSubtitle =>
      'Critical alerts only';

  @override
  String get settingsAppearanceAccessibilityTitle => 'Accessibility';

  @override
  String get settingsAppearanceAccessibilitySubtitle =>
      'Tune typography and layout';

  @override
  String get settingsAppearanceAccessibilityTabText => 'Text';

  @override
  String get settingsAppearanceAccessibilityTabAppearance => 'Appearance';

  @override
  String get settingsAppearanceAccessibilityTabLayout => 'Layout';

  @override
  String get settingsAppearanceAccessibilityFontSizeTitle => 'Font size';

  @override
  String get settingsAppearanceAccessibilityFontSizeSubtitle =>
      'Preview adjusts live across Velora';

  @override
  String settingsAppearanceAccessibilityFontSizeLabel(double points) {
    return '$points pt';
  }

  @override
  String settingsAppearanceAccessibilityFontSample(double points) {
    return 'Sample text at $points pt';
  }

  @override
  String get settingsAppearanceAccessibilityFontFamilyTitle => 'Font family';

  @override
  String get settingsAppearanceAccessibilityTextAlignmentTitle =>
      'Text alignment';

  @override
  String get settingsAppearanceAccessibilityPreviewTitle => 'Preview';

  @override
  String get settingsAppearanceAccessibilityPreviewBody =>
      'Velora makes cities more human by giving everyone a place to take action.';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastTitle =>
      'High contrast mode';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastSubtitle =>
      'Improve clarity for text and icons';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastToggle =>
      'Enable high contrast UI';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceTitle =>
      'Reduce motion';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceSubtitle =>
      'Limit parallax and large transitions';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceToggle =>
      'Minimize animations';

  @override
  String get settingsAppearanceAccessibilityLayoutLineSpacing => 'Line spacing';

  @override
  String get settingsAppearanceAccessibilityLayoutPreviewBody =>
      'Velora makes cities more human by giving everyone a place to take action.\nStories, fundraisers, and field reports appear here.';

  @override
  String get settingsAccountStatusTitle => 'Account status';

  @override
  String get settingsAccountStatusSubtitle =>
      'Your account health and verification';

  @override
  String get settingsAccountStatusInfoTitle => 'Account information';

  @override
  String get settingsAccountStatusStandingTitle => 'Account in good standing';

  @override
  String get settingsAccountStatusStandingSubtitle =>
      'No restrictions detected';

  @override
  String get settingsAccountStatusEmailTitle => 'Email verified';

  @override
  String get settingsAccountStatusPhoneTitle => 'Phone verified';

  @override
  String get settingsAccountStatusMetricsTitle => 'Account metrics';

  @override
  String get settingsAccountStatusMemberSinceTitle => 'Member since';

  @override
  String get settingsAccountStatusDonationsTitle => 'Total donations';

  @override
  String get settingsAccountStatusCampaignsTitle => 'Campaigns created';

  @override
  String get settingsAccountActivityTitle => 'Your activity';

  @override
  String get settingsAccountActivitySubtitle =>
      'Review your interactions and history';

  @override
  String get settingsAccountActivityTabLikes => 'Likes';

  @override
  String get settingsAccountActivityTabComments => 'Comments';

  @override
  String get settingsAccountActivityTabDonations => 'Donations';

  @override
  String get settingsAccountActivityTabArchive => 'Archive';

  @override
  String get settingsAccountActivityTabDeleted => 'Deleted';

  @override
  String get settingsAccountActivityRecentLikes => 'Recent likes';

  @override
  String get settingsAccountActivityRecentComments => 'Recent comments';

  @override
  String get settingsAccountActivityArchived => 'Archived';

  @override
  String get settingsAccountActivityRestoreButton => 'Restore';

  @override
  String get settingsAccountActivityDeletedEmptyTitle => 'No deleted items';

  @override
  String get settingsAccountActivityDeletedEmptySubtitle =>
      'Items you delete will appear here for 30 days before being permanently removed.';

  @override
  String get settingsAccountDonationsTitle => 'My donations';

  @override
  String get settingsAccountDonationsSubtitle =>
      'History and impact of your giving';

  @override
  String get settingsAccountDonationsImpactTitle => 'Impact overview';

  @override
  String get settingsAccountDonationsTotalLabel => 'Total donated';

  @override
  String get settingsAccountDonationsCampaignsLabel => 'Campaigns';

  @override
  String get settingsAccountDonationsThisMonthLabel => 'This month';

  @override
  String get settingsAccountDonationsRecurringLabel => 'Recurring';

  @override
  String get campaignSeeMore => 'See More';

  @override
  String get campaignFeaturedTitle => 'Featured Campaigns';

  @override
  String get campaignEmergencyTitle => 'Emergency Fundraisers';

  @override
  String get campaignSocialImpactTitle => 'Social Impact';

  @override
  String get campaignTechnologyTitle => 'Technology';

  @override
  String get campaignFashionTitle => 'Fashion';

  @override
  String get campaignFoodBeverageTitle => 'Food & Beverage';

  @override
  String get campaignFinanceTitle => 'Finance';

  @override
  String get campaignMemorialTitle => 'Memorial Fundraisers';

  @override
  String campaignRaisedOf(String target) {
    return 'raised of $target';
  }

  @override
  String get campaignEndOfList => 'No more campaigns';

  @override
  String get searchTitle => 'Search';

  @override
  String get searchHint => 'What do you want to find?';

  @override
  String get searchDiscoverTitle => 'Discover something new';

  @override
  String get searchBrowseAllTitle => 'Browse all';

  @override
  String settingsAccountDonationsRecurringValue(int count) {
    return '$count active';
  }

  @override
  String get settingsAccountDonationsMatchedLabel => 'Matched';

  @override
  String get settingsAccountDonationsFilterAll => 'All';

  @override
  String get settingsAccountDonationsFilterRecurring => 'Recurring';

  @override
  String get settingsAccountDonationsFilterMatched => 'Matched';

  @override
  String get settingsAccountDonationsExportButton => 'Export all receipts';

  @override
  String get settingsAccountDonationsExportingToast =>
      'Exporting donation history...';

  @override
  String get settingsAccountDonationsStatusRecurring => 'RECURRING';

  @override
  String get settingsAccountDonationsStatusMatched => 'MATCHED';

  @override
  String get settingsAccountDonationsEmptyTitle => 'No donations yet';

  @override
  String get settingsAccountDonationsEmptySubtitle =>
      'Start making a difference by supporting campaigns that matter to you.';

  @override
  String get settingsAccountDonationsEmptyButton => 'Explore campaigns';

  @override
  String get settingsHelpCenterTitle => 'Help center';

  @override
  String get settingsHelpCenterSubtitle => 'Support & safety resources';

  @override
  String get settingsHelpPrioritySemantics => 'Priority support highlight';

  @override
  String get settingsHelpPriorityTitle => 'Priority support';

  @override
  String get settingsHelpPrioritySubtitle =>
      'Our safety team typically replies within 2 hours for verified campaigners.';

  @override
  String get settingsHelpSupportOptionsTitle => 'Support options';

  @override
  String get settingsHelpFaqTileTitle => 'Frequently asked questions';

  @override
  String get settingsHelpFaqTileSubtitle => 'Instant answers curated for you';

  @override
  String get settingsHelpEmailTitle => 'Email support';

  @override
  String get settingsHelpEmailSubtitle => 'support@velora.app';

  @override
  String get settingsHelpReportTitle => 'Report a problem';

  @override
  String get settingsHelpReportSubtitle => 'Bug, abuse, harassment';

  @override
  String get settingsHelpGuidesTitle => 'Guides';

  @override
  String get settingsHelpCommunityGuidelinesTitle => 'Community guidelines';

  @override
  String get settingsHelpCommunityGuidelinesSubtitle => 'Updated February 2025';

  @override
  String get settingsHelpSecurityChecklistTitle => 'Security checklist';

  @override
  String get settingsHelpSecurityChecklistSubtitle => 'Keep your account safer';

  @override
  String get settingsHelpReportSheetTitle => 'Report a problem';

  @override
  String get settingsHelpReportHint => 'Describe what happened…';

  @override
  String get settingsHelpReportThanks => 'Thanks for the report';

  @override
  String get settingsHelpReportSendButton => 'Send';

  @override
  String get settingsHelpFaqTitle => 'FAQ';

  @override
  String get settingsHelpFaqSubtitle => 'Popular help topics';

  @override
  String get settingsHelpFaqQuestion1 => 'How does Velora verify campaigns?';

  @override
  String get settingsHelpFaqAnswer1 =>
      'Every campaign passes through a trust checklist, including beneficiary validation, identity documents, and transparency milestones.';

  @override
  String get settingsHelpFaqQuestion2 => 'Can I hide my donation amount?';

  @override
  String get settingsHelpFaqAnswer2 =>
      'Yes. When donating, choose the \"Anonymous amount\" option and only your avatar will be shown.';

  @override
  String get settingsHelpFaqQuestion3 => 'What if I lose access to my account?';

  @override
  String get settingsHelpFaqAnswer3 =>
      'Use the recovery kit inside Password & security. You can pre-authorize trusted contacts to approve your login.';

  @override
  String get settingsHelpFaqQuestion4 => 'How do I manage notifications?';

  @override
  String get settingsHelpFaqAnswer4 =>
      'Head to Notifications settings to configure push, email, and SMS alerts for each campaign type.';

  @override
  String get settingsHelpAboutTitle => 'About Velora';

  @override
  String get settingsHelpAboutSemantics => 'Velora brand summary';

  @override
  String get settingsHelpAboutBrandName => 'Velora';

  @override
  String get settingsHelpAboutTagline => 'Empowering generosity';

  @override
  String get settingsHelpAboutVersion => 'Version 1.0.0 (Build 1)';

  @override
  String get settingsHelpAboutWhyTitle => 'Why Velora';

  @override
  String get settingsHelpAboutWhyDescription =>
      'Velora is a social impact platform that connects generous people with meaningful causes. Together, we make the world kinder.';

  @override
  String get settingsHelpAboutStatCampaigns => '1M+ Campaigns';

  @override
  String get settingsHelpAboutStatSupporters => '5M+ Supporters';

  @override
  String get settingsHelpAboutStatTrust => 'Trust-first';

  @override
  String get settingsHelpAboutConnectTitle => 'Connect with us';

  @override
  String get settingsHelpAboutSocialWebsite => 'Website';

  @override
  String get settingsHelpAboutSocialInstagram => 'Instagram';

  @override
  String get settingsHelpAboutSocialThreads => 'Threads';

  @override
  String get settingsHelpAboutSocialFacebook => 'Facebook';

  @override
  String get settingsHelpAboutLegalTitle => 'Legal';

  @override
  String get settingsHelpAboutDevTitle => 'Development team';

  @override
  String get settingsHelpAboutDevOrgSubtitle =>
      'Product, design, and engineering';

  @override
  String get settingsHelpAboutDevFounderSubtitle => 'Founder & lead developer';

  @override
  String get settingsHelpAboutContactTitle => 'Contact & support';

  @override
  String get settingsHelpAboutLiveChatTitle => 'Live chat';

  @override
  String get settingsHelpAboutLiveChatSubtitle => 'Available 9 AM – 6 PM';

  @override
  String get settingsHelpAboutReportBugTitle => 'Report a bug';

  @override
  String get settingsHelpAboutReportBugSubtitle => 'Help us improve Velora';

  @override
  String get settingsHelpAboutSuggestFeatureTitle => 'Suggest a feature';

  @override
  String get settingsHelpAboutSuggestFeatureSubtitle =>
      'Share product ideas with us';

  @override
  String get settingsHelpAboutPrivacy => 'Privacy policy';

  @override
  String get settingsHelpAboutTerms => 'Terms of service';

  @override
  String get settingsHelpAboutCookie => 'Cookie policy';

  @override
  String get settingsHelpAboutLicenses => 'Open source licenses';

  @override
  String get settingsHelpAboutEnjoyTitle => 'Enjoying Velora?';

  @override
  String get settingsHelpAboutEnjoySubtitle =>
      'Rate us and help others discover Velora.';

  @override
  String get settingsHelpAboutRateButton => 'Rate Velora';

  @override
  String get settingsHelpAboutAcknowledgementsTitle => 'Acknowledgements';

  @override
  String get settingsHelpAboutAcknowledgementsThanks =>
      'Thanks to our contributors, beta testers, and the Flutter community for bringing Velora to life.';

  @override
  String get settingsHelpAboutAcknowledgementFlutter => 'Flutter';

  @override
  String get settingsHelpAboutAcknowledgementDart => 'Dart';

  @override
  String get settingsHelpAboutAcknowledgementFirebase => 'Firebase';

  @override
  String get settingsHelpAboutAcknowledgementSupabase => 'Supabase';

  @override
  String get settingsHelpAboutAcknowledgementMaterial => 'Material Design';

  @override
  String get settingsHelpAboutFooterCopyright =>
      '© 2025 VitoTechLab. All rights reserved.';

  @override
  String get settingsHelpAboutFooterMadeWith =>
      'Made with ❤️ for a better world';

  @override
  String get chatGallerySelectPhotos => 'Select Photos';

  @override
  String get chatGallerySelectAtLeastOne => 'Please select at least one image';

  @override
  String get chatGalleryUnableToLoad => 'Unable to load the selected images';

  @override
  String get chatGallerySomeImagesNotAccessed =>
      'Some images could not be accessed';

  @override
  String get chatGallerySend => 'Send';

  @override
  String chatGallerySendCount(int count) {
    return 'Send ($count)';
  }

  @override
  String chatGallerySelectedCount(int selected, int max) {
    return '$selected of $max selected';
  }

  @override
  String get chatGalleryClearAll => 'Clear all';

  @override
  String get chatDocumentTitle => 'Select Documents';

  @override
  String get chatDocumentSend => 'Send';

  @override
  String chatDocumentSendCount(int count) {
    return 'Send ($count)';
  }

  @override
  String chatDocumentSelectedCount(int selected, int max) {
    return '$selected of $max selected';
  }

  @override
  String get chatDocumentClearAll => 'Clear all';

  @override
  String chatDocumentMaxReached(int max) {
    return 'Maximum $max documents allowed';
  }

  @override
  String chatDocumentSomeLimited(int max) {
    return 'Some files were skipped (max $max)';
  }

  @override
  String get chatDocumentPickError => 'Failed to pick documents';

  @override
  String get chatDocumentSelectAtLeastOne =>
      'Please select at least one document';

  @override
  String get chatDocumentEmptyTitle => 'No documents selected';

  @override
  String get chatDocumentEmptySubtitle =>
      'Tap the button below to browse and select files';

  @override
  String get chatDocumentBrowseFiles => 'Browse Files';

  @override
  String get chatDocumentAddMore => 'Add more documents';

  @override
  String get mediaPreviewTitle => 'Preview';

  @override
  String get mediaPreviewAddCaption => 'Add a caption...';

  @override
  String get mediaPreviewRemove => 'Remove';

  @override
  String get mediaPreviewSend => 'Send';
}
