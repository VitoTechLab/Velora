// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Velora';

  @override
  String get authSignInFormLabel => '登录表单';

  @override
  String get authLogoLabel => 'Velora 徽标';

  @override
  String get authWelcomeBackTitle => '欢迎回来';

  @override
  String get authSignInSubtitle => '登录以继续';

  @override
  String get fieldEmailLabel => '电子邮件';

  @override
  String get fieldEmailHint => 'email@domain.com';

  @override
  String get fieldPasswordLabel => '密码';

  @override
  String get authForgotPassword => '忘记密码？';

  @override
  String get authForgotPasswordHint => '忘记密码。前往重置密码页面';

  @override
  String get authSignInButton => '登录';

  @override
  String get authDividerText => '或使用以下方式继续';

  @override
  String authContinueWith(String brand) {
    return '使用 $brand 继续';
  }

  @override
  String get authNoAccount => '还没有账号？';

  @override
  String get authSignUpLink => '注册';

  @override
  String get authAgreeTermsError => '请先同意服务条款和隐私政策';

  @override
  String get authGoogleUnavailable => 'Google 登录尚不可用。';

  @override
  String get authSignUpFormLabel => '创建账户表单';

  @override
  String get authCreateAccountTitle => '创建账户';

  @override
  String get authJoinCommunitySubtitle => '加入 Velora 社区';

  @override
  String get authAgreeTermsLabel => '同意服务条款和隐私政策';

  @override
  String get authAgreeTermsPrefix => '我同意';

  @override
  String get authTermsOfService => '服务条款';

  @override
  String get authAnd => ' 与 ';

  @override
  String get authPrivacyPolicy => '隐私政策';

  @override
  String get authCreateAccountButton => '创建账户';

  @override
  String get authAlreadyHaveAccount => '已经有账号？';

  @override
  String get authSignInLink => '登录';

  @override
  String get commonGoBack => '返回';

  @override
  String get commonCancel => '取消';

  @override
  String get authResetPasswordFormLabel => '重置密码表单';

  @override
  String get authEmailIllustrationLabel => '电子邮件插图';

  @override
  String get authResetPasswordTitle => '重置密码';

  @override
  String get authResetPasswordSubtitle => '输入您注册的邮箱，我们会发送一个链接帮助您重置密码。';

  @override
  String get authSendResetLink => '发送重置链接';

  @override
  String get authRememberPasswordLabel => '想起密码？返回登录';

  @override
  String get authRememberPasswordAction => '想起密码？登录';

  @override
  String get authResetEmailSentLabel => '重置邮件已发送';

  @override
  String get authCheckEmailTitle => '检查您的邮箱';

  @override
  String get authBackToSignIn => '返回登录';

  @override
  String get authEmailVerificationLabel => '邮箱验证说明';

  @override
  String get authAnimatedEmailLabel => '动画电子邮件插图';

  @override
  String get authVerificationInstructions => '我们已发送验证链接，请检查收件箱并点击链接完成验证。';

  @override
  String get authVerifiedCta => '我已完成邮箱验证';

  @override
  String get authResendVerificationLabel => '重新发送验证邮件';

  @override
  String get authVerificationEmailResent => '验证邮件已重新发送';

  @override
  String get authWrongEmail => '邮箱不正确？退出';

  @override
  String get authSignOutHint => '退出并返回登录页面';

  @override
  String get authPasswordStrengthWeak => '弱';

  @override
  String get authPasswordStrengthStrong => '强';

  @override
  String get authPasswordStrengthMedium => '中等';

  @override
  String get authPasswordStrengthFair => '一般';

  @override
  String get authPasswordShow => '显示密码';

  @override
  String get authPasswordHide => '隐藏密码';

  @override
  String get authPasswordRequirementsTitle => '密码必须包含：';

  @override
  String get authPasswordRequirementLength => '至少 8 个字符';

  @override
  String get authPasswordRequirementCase => '大写和小写字母';

  @override
  String get authPasswordRequirementNumber => '至少一个数字';

  @override
  String get authPasswordRequirementSpecial => '特殊字符 (!@#\$%^&*)';

  @override
  String get feedTitle => '动态';

  @override
  String get feedCreatePostTooltip => '创建帖子';

  @override
  String get feedNotificationsTooltip => '通知';

  @override
  String get feedErrorLoading => '动态加载失败';

  @override
  String get feedEmptyMessage => '暂无帖子';

  @override
  String get feedEmptySubtitle => '下拉刷新或稍后再试';

  @override
  String feedEmptyHint(String subtitle) {
    return '$subtitle，双击刷新按钮。';
  }

  @override
  String get feedRefreshButtonSemantic => '刷新动态';

  @override
  String get feedRefreshButton => '刷新';

  @override
  String get feedLoadingLabel => '正在加载动态';

  @override
  String get feedCommentsTitle => '评论';

  @override
  String feedReplyingTo(String name) {
    return '回复 $name';
  }

  @override
  String get feedWriteCommentHint => '写下评论...';

  @override
  String feedAddCommentHint(String name) {
    return '为 $name 添加评论';
  }

  @override
  String get feedNoCommentsTitle => '暂无评论';

  @override
  String get feedNoCommentsSubtitle => '抢先留下你的想法！';

  @override
  String get feedReplyAction => '回复';

  @override
  String get feedDeleteAction => '删除';

  @override
  String get feedSeeTranslation => '查看翻译';

  @override
  String get feedSeeOriginal => '查看原文';

  @override
  String get feedTranslating => '加载中…';

  @override
  String feedCommentAsUser(String username) {
    return '以 $username 的身份评论';
  }

  @override
  String feedViewReplies(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count条回复',
      one: '$count条回复',
    );
    return '查看$_temp0';
  }

  @override
  String get feedHideReplies => '隐藏回复';

  @override
  String get feedUnknownUser => '未知用户';

  @override
  String get feedPostSummaryFallback => '帖子';

  @override
  String feedPostSemantics(String author, String summary, String time) {
    return '$author 发布了 $summary $time';
  }

  @override
  String get feedOpenPostHint => '双击打开帖子详情';

  @override
  String get feedPostImageLabel => '帖子图片';

  @override
  String feedPostImagePositionLabel(int index, int total) {
    return '帖子图片 $index/$total';
  }

  @override
  String get feedCampaignFallback => '活动';

  @override
  String feedOpenCampaignLabel(String title) {
    return '打开活动 $title';
  }

  @override
  String get feedLikeLabel => '点赞帖子';

  @override
  String get feedUnlikeLabel => '取消点赞';

  @override
  String get feedLikeHint => '双击点赞此帖子';

  @override
  String get feedUnlikeHint => '双击取消点赞';

  @override
  String get feedViewCommentsLabel => '查看评论';

  @override
  String get feedViewCommentsHint => '双击打开评论';

  @override
  String get feedShareComingSoon => '分享功能即将上线';

  @override
  String get feedShareLabel => '分享帖子';

  @override
  String get feedShareHint => '双击分享';

  @override
  String get feedRemoveBookmarkLabel => '取消收藏';

  @override
  String get feedAddBookmarkLabel => '收藏此帖子';

  @override
  String get timeAgoNow => '刚刚';

  @override
  String timeAgoMinutes(int count) {
    return '$count分';
  }

  @override
  String timeAgoHours(int count) {
    return '$count小时';
  }

  @override
  String timeAgoDays(int count) {
    return '$count天';
  }

  @override
  String timeAgoMonths(int count) {
    return '$count个月';
  }

  @override
  String timeAgoYears(int count) {
    return '$count年';
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
  String get settingsAccountsCenterTitle => '账户中心';

  @override
  String get settingsAccountsCenterSubtitle => '管理跨平台的连接体验、身份与隐私';

  @override
  String get settingsSearchTooltip => '搜索设置';

  @override
  String get settingsConnectedTitle => '连接体验';

  @override
  String get settingsConnectedSubtitle => '控制 Velora 身份在各个平台上的使用方式。';

  @override
  String get settingsTileProfilesTitle => '个人资料';

  @override
  String get settingsTileProfilesSubtitle => 'Vito • Velora、Forum、Community';

  @override
  String get settingsTileSharingTitle => '跨资料共享';

  @override
  String get settingsTileSharingSubtitle => '选择自动同步的内容';

  @override
  String get settingsTileActivityTitle => '活动历史';

  @override
  String get settingsTileActivitySubtitle => '查看您最近的活动和互动';

  @override
  String get settingsTileLoggingTitle => '帐户登录';

  @override
  String get settingsTileLoggingSubtitle => '查看设备与登录批准';

  @override
  String get settingsAccountTitle => '账户设置';

  @override
  String get settingsTilePasswordSecurityTitle => '密码与安全';

  @override
  String get settingsTilePasswordSecuritySubtitle => '双重验证、受信设备、安全提醒';

  @override
  String get settingsTilePersonalDetailsTitle => '个人信息';

  @override
  String get settingsTilePersonalDetailsSubtitle => '姓名、用户名、资料链接';

  @override
  String get settingsTileInfoPermissionsTitle => '信息与权限';

  @override
  String get settingsTileInfoPermissionsSubtitle => '数据下载、权限、受众';

  @override
  String get settingsTileAdPreferencesTitle => '广告偏好';

  @override
  String get settingsTileAdPreferencesSubtitle => '更常看到的主题';

  @override
  String get settingsTileVeloraPayTitle => 'Velora Pay';

  @override
  String get settingsTileVeloraPaySubtitle => '付款方式与保障';

  @override
  String get settingsPersonalizationTitle => '个性化';

  @override
  String get settingsTileNotificationsTitle => '通知';

  @override
  String get settingsTileNotificationsSubtitle => '推送、电子邮件、SMS 偏好';

  @override
  String get settingsTileThemeTitle => '主题';

  @override
  String get settingsTileThemeSubtitle => '应用外观、深色模式、对比度';

  @override
  String get settingsTileLanguageTitle => '语言';

  @override
  String get settingsTileLanguageSubtitle => '选择 Velora 使用的语言';

  @override
  String get settingsTileAccessibilityTitle => '辅助功能';

  @override
  String get settingsTileAccessibilitySubtitle => '字体、对比度、字幕';

  @override
  String get settingsHelpTitle => '帮助与资源';

  @override
  String get settingsTileHelpCenterTitle => '帮助中心';

  @override
  String get settingsTileHelpCenterSubtitle => '指南、教程与快速解答';

  @override
  String get settingsTileFaqTitle => '常见问题';

  @override
  String get settingsTileFaqSubtitle => '热门主题一览';

  @override
  String get settingsTileAboutTitle => '关于 Velora';

  @override
  String get settingsTileAboutSubtitle => '版本、许可与致谢';

  @override
  String get settingsHeroSemanticsLabel => 'Meta ID 资料摘要与安全状态';

  @override
  String get settingsHeroMetaId => 'Meta ID';

  @override
  String get settingsHeroLearnMore => '了解更多';

  @override
  String get settingsHeroNetworks => 'Facebook • Instagram • Velora';

  @override
  String get settingsHeroSwitchButton => '切换';

  @override
  String get settingsHeroPasswordUpdated => '2 天前已更新密码';

  @override
  String get settingsHeroPasswordSubtitle => '通过提醒与审批保持账户安全。';

  @override
  String get settingsHeroReviewButton => '查看';

  @override
  String get settingsSearchProfiles => '个人资料';

  @override
  String get settingsSearchPassword => '密码';

  @override
  String get settingsSearchSecurity => '安全';

  @override
  String get settingsSearchNotifications => '通知';

  @override
  String get settingsSearchPrivacy => '隐私';

  @override
  String get settingsSearchLanguage => '语言';

  @override
  String get settingsSearchTheme => '主题';

  @override
  String get settingsSearchHelp => '帮助';

  @override
  String get settingsSearchPayments => '支付';

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
  String get chatScreenTitle => '聊天';

  @override
  String get chatScreenNewChatLabel => '开始新聊天';

  @override
  String get chatScreenNewChatTooltip => '新聊天';

  @override
  String get chatScreenListLabel => '聊天列表';

  @override
  String get chatScreenListHint => '向上或向下滑动浏览对话';

  @override
  String get chatScreenRetry => '重试';

  @override
  String get chatScreenNoChats => '没有聊天记录';

  @override
  String get chatScreenNoChatsHint => '开始新对话后，您的聊天将显示在这里';

  @override
  String get chatScreenUnnamed => '未命名';

  @override
  String get chatScreenUnnamedGroup => '未命名群组';

  @override
  String get chatFilterAll => '全部';

  @override
  String get chatFilterUnread => '未读';

  @override
  String get chatFilterFavourites => '收藏';

  @override
  String get chatFilterGroups => '群组';

  @override
  String chatFilterSemanticsLabel(String filter) {
    return '$filter 筛选器';
  }

  @override
  String chatFilterSemanticsHint(String filter) {
    return '双击以按$filter筛选聊天';
  }

  @override
  String get chatSearchBarLabel => '搜索聊天';

  @override
  String get chatSearchBarHint => '输入文本以搜索对话';

  @override
  String get chatSearchBarPlaceholder => '向 Meta AI 提问或搜索';

  @override
  String chatListItemSemanticsLabel(String name) {
    return '与 $name 的聊天';
  }

  @override
  String get chatListItemSemanticsHint => '双击打开对话';

  @override
  String chatListItemPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 张照片',
      one: '$count 张照片',
    );
    return '$_temp0';
  }

  @override
  String get chatListItemPhoto => '照片';

  @override
  String get chatListItemMissedCall => '未接语音通话';

  @override
  String get chatBubbleYourLabel => '你的消息';

  @override
  String get chatBubbleReceivedLabel => '收到的消息';

  @override
  String chatBubbleHint(String time) {
    return '消息发送于 $time';
  }

  @override
  String get chatMediaYourLabel => '你发送的媒体消息';

  @override
  String get chatMediaReceivedLabel => '收到的媒体消息';

  @override
  String chatMediaHint(String time) {
    return '媒体发送于 $time';
  }

  @override
  String chatDateSeparatorLabel(String date) {
    return '日期分隔：$date';
  }

  @override
  String get chatInputEmojiLabel => '表情选择器';

  @override
  String get chatInputEmojiHint => '双击打开表情选择器';

  @override
  String get chatInputEmojiTooltip => '表情';

  @override
  String get chatInputFieldLabel => '消息输入框';

  @override
  String get chatInputFieldHint => '在此输入你的消息';

  @override
  String get chatInputFieldPlaceholder => '消息';

  @override
  String get chatInputAttachLabel => '附加文件';

  @override
  String get chatInputAttachHint => '双击附加文件';

  @override
  String get chatInputAttachTooltip => '附加文件';

  @override
  String get chatInputCameraLabel => '相机';

  @override
  String get chatInputCameraHint => '双击打开相机';

  @override
  String get chatInputCameraTooltip => '相机';

  @override
  String get chatInputSendLabel => '发送消息';

  @override
  String get chatInputSendHint => '双击发送消息';

  @override
  String get chatInputVoiceLabel => '语音消息';

  @override
  String get chatInputVoiceHint => '双击录制语音消息';

  @override
  String get chatAttachmentGallery => '图库';

  @override
  String get chatAttachmentCamera => '相机';

  @override
  String get chatAttachmentLocation => '位置';

  @override
  String get chatAttachmentContact => '联系人';

  @override
  String get chatAttachmentDocument => '文档';

  @override
  String get chatAttachmentAudio => '音频';

  @override
  String get chatAttachmentPoll => '投票';

  @override
  String get chatAttachmentEvent => '活动';

  @override
  String get chatAttachmentAiImages => 'AI 图片';

  @override
  String chatAttachmentSelectHint(String label) {
    return '双击选择 $label';
  }

  @override
  String get chatDetailBackLabel => '返回';

  @override
  String chatDetailTitleLabel(String name) {
    return '与 $name 的对话';
  }

  @override
  String get chatDetailGroupSubtitle => '点击查看群组信息';

  @override
  String get chatDetailSelfSubtitle => '给自己发消息';

  @override
  String get chatDetailOptionsLabel => '对话选项';

  @override
  String get chatDetailMenuTooltip => '更多选项';

  @override
  String get chatDetailHistoryLabel => '对话历史';

  @override
  String get chatDetailHistoryHint => '向上滑动查看更早的消息';

  @override
  String get chatDetailNoMessages => '还没有消息';

  @override
  String get chatDetailNoMessagesHint => '发送消息开始对话';

  @override
  String get chatDetailMessageDeleted => '此消息已被删除';

  @override
  String get chatDetailSelectMediaTitle => '选择媒体类型';

  @override
  String get chatDetailSelectImages => '图片';

  @override
  String get chatDetailSelectVideo => '视频';

  @override
  String chatDetailImagesSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已选择 $count 张图片',
      one: '已选择 $count 张图片',
    );
    return '$_temp0';
  }

  @override
  String get chatDetailVideoSelected => '已选择视频';

  @override
  String get chatDetailPickMediaError => '无法选择媒体';

  @override
  String get chatDetailCameraModeTitle => '选择拍摄模式';

  @override
  String get chatDetailCameraTakePhoto => '拍照';

  @override
  String get chatDetailCameraRecordVideo => '录制视频';

  @override
  String get chatDetailPhotoCaptured => '照片已拍摄';

  @override
  String get chatDetailVideoRecorded => '视频已录制';

  @override
  String get chatDetailPollCreated => '投票已创建';

  @override
  String get chatDetailEventCreated => '活动已创建';

  @override
  String chatDetailDocumentsSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已选择 $count 个文档',
      one: '已选择 $count 个文档',
    );
    return '$_temp0';
  }

  @override
  String get chatDetailDocumentError => '无法选择文档';

  @override
  String get chatDetailAudioSelected => '已选择音频文件';

  @override
  String get chatDetailAudioError => '无法选择音频';

  @override
  String get chatDetailLocationSelected => '已选择位置';

  @override
  String get chatDetailContactSelected => '已选择联系人';

  @override
  String get chatDetailAiImagesSelected => '已选择 AI 图片';

  @override
  String get chatDetailVoiceMessage => '语音消息';

  @override
  String get chatDetailStatusOnline => '在线';

  @override
  String get chatSearchScreenTitle => '搜索';

  @override
  String get chatSearchScreenRecent => '最近搜索';

  @override
  String get chatSearchScreenClearAll => '全部清除';

  @override
  String get chatSearchGlobalLabel => '全局搜索';

  @override
  String get chatSearchGlobalHint => '在活动、帖子和用户中搜索';

  @override
  String get chatSearchPlaceholder => '搜索…';

  @override
  String get chatSearchScopeCampaigns => '活动';

  @override
  String get chatSearchScopePosts => '帖子';

  @override
  String get chatSearchScopePeople => '用户';

  @override
  String chatSearchScopeSemantics(String scope) {
    return '$scope 范围';
  }

  @override
  String chatSearchRecentItemLabel(String query) {
    return '最近搜索：$query';
  }

  @override
  String get chatSearchRecentItemHint => '双击再次搜索';

  @override
  String get chatSearchRecentDeleteLabel => '删除最近搜索';

  @override
  String get chatSearchRecentDeleteTooltip => '移除';

  @override
  String get chatPollLabel => '投票';

  @override
  String get chatPollSemanticsYour => '你的投票';

  @override
  String get chatPollSemanticsReceived => '收到的投票';

  @override
  String chatPollSemanticsHint(int count) {
    return '共有 $count 票的投票';
  }

  @override
  String chatPollTotalVotes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 票',
      one: '$count 票',
    );
    return '$_temp0';
  }

  @override
  String chatPollOptionSemantics(String option, int votes, String percent) {
    return '$option，$votes 票，占 $percent%';
  }

  @override
  String get chatPollVoteHint => '双击为此选项投票';

  @override
  String get chatPollDialogTitle => '创建投票';

  @override
  String get chatPollDialogQuestionLabel => '投票问题';

  @override
  String get chatPollDialogQuestionHint => '提出一个问题…';

  @override
  String get chatPollDialogOptionsLabel => '选项';

  @override
  String chatPollDialogOptionLabel(int index) {
    return '选项 $index';
  }

  @override
  String get chatPollDialogOptionHint => '输入选项…';

  @override
  String get chatPollDialogAddOption => '添加选项';

  @override
  String get chatPollDialogQuestionError => '请输入问题';

  @override
  String get chatPollDialogOptionsError => '请至少添加 2 个选项';

  @override
  String get chatPollDialogSend => '发送投票';

  @override
  String get chatEventLabel => '活动';

  @override
  String get chatEventSemanticsYour => '你的活动';

  @override
  String get chatEventSemanticsReceived => '收到的活动';

  @override
  String chatEventHint(String date) {
    return '活动时间：$date';
  }

  @override
  String get chatEventDialogTitle => '创建活动';

  @override
  String get chatEventDialogTitleLabel => '活动标题';

  @override
  String get chatEventDialogTitleHint => '输入活动标题…';

  @override
  String get chatEventDialogDescriptionLabel => '描述';

  @override
  String get chatEventDialogDescriptionHint => '输入活动描述…';

  @override
  String get chatEventDialogLocationLabel => '地点（可选）';

  @override
  String get chatEventDialogLocationHint => '输入地点…';

  @override
  String get chatEventDialogStartLabel => '开始';

  @override
  String get chatEventDialogEndLabel => '结束';

  @override
  String get chatEventDialogTitleError => '请输入活动标题';

  @override
  String get chatEventDialogEndTimeError => '结束时间必须晚于开始时间';

  @override
  String get chatEventDialogSend => '发送活动';

  @override
  String get chatEventResponseTitle => '你的回复';

  @override
  String get chatEventResponseGoing => '参加';

  @override
  String get chatEventResponseMaybe => '可能';

  @override
  String get chatEventResponseNo => '不参加';

  @override
  String chatEventResponseSummary(int going, int maybe, int notGoing) {
    return '$going 人参加 • $maybe 人可能 • $notGoing 人不参加';
  }

  @override
  String chatEventResponseButtonLabel(String label) {
    return '$label 回复';
  }

  @override
  String chatEventResponseButtonHint(String label) {
    return '双击选择 $label 作为回复';
  }

  @override
  String get settingsAppearanceLanguageTitle => '语言';

  @override
  String get settingsAppearanceLanguagePreviewSemantics => '当前语言预览';

  @override
  String get settingsAppearanceLanguageCurrentLabel => '当前语言';

  @override
  String get settingsAppearanceLanguageSearchHint => '搜索语言…';

  @override
  String get settingsAppearanceLanguageEmpty => '未找到匹配的语言';

  @override
  String settingsAppearanceLanguageToast(String language) {
    return '语言已切换为 $language';
  }

  @override
  String get settingsAppearanceLanguageRestartNote => '应用将重新启动以应用语言更改。';

  @override
  String get settingsAppearanceThemeTitle => '主题与外观';

  @override
  String get settingsAppearanceThemeModeSection => '主题模式';

  @override
  String get settingsAppearanceThemeModeLight => '浅色';

  @override
  String get settingsAppearanceThemeModeDark => '深色';

  @override
  String get settingsAppearanceThemeModeAuto => '自动';

  @override
  String get settingsAppearanceThemeModeDescription => '系统模式会根据设备设置自动调整。';

  @override
  String get settingsAppearanceThemeColorSection => '颜色';

  @override
  String get settingsAppearanceThemeColorDynamic => '动态颜色';

  @override
  String get settingsAppearanceThemeShapeSection => '形状';

  @override
  String get settingsAppearanceThemeShapeCorner => '圆角大小';

  @override
  String settingsAppearanceThemeShapeCornerValue(int px) {
    return '$px px';
  }

  @override
  String get settingsAppearanceThemeShapeSquare => '直角';

  @override
  String get settingsAppearanceThemeShapeSmall => '小';

  @override
  String get settingsAppearanceThemeShapeMedium => '中';

  @override
  String get settingsAppearanceThemeShapeLarge => '大';

  @override
  String get settingsAppearanceThemeShapeMax => '最大';

  @override
  String get settingsAppearanceThemeAdvancedSection => '高级设置';

  @override
  String get settingsAppearanceThemeAccentTitle => '强调色';

  @override
  String get settingsAppearanceThemeAccentSubtitle => '自定义高亮颜色';

  @override
  String get settingsAppearanceThemeAccentToast => '颜色选择器即将上线';

  @override
  String get settingsAppearanceThemeTypographyTitle => '字体';

  @override
  String get settingsAppearanceThemeTypographySubtitle => '字体与大小';

  @override
  String get settingsAppearanceThemeTypographyToast => '字体设置即将上线';

  @override
  String get settingsAppearanceThemeAnimationsTitle => '动画';

  @override
  String get settingsAppearanceThemeAnimationsSubtitle => '过渡效果与动效';

  @override
  String get settingsAppearanceThemeAnimationsToast => '动画设置即将上线';

  @override
  String get settingsAppearanceThemePreviewTitle => '实时预览';

  @override
  String get settingsAppearanceThemePreviewSampleCard => '示例卡片';

  @override
  String settingsAppearanceThemeModeLabel(String mode) {
    return '$mode模式';
  }

  @override
  String get settingsAppearanceNotificationsTitle => '通知';

  @override
  String get settingsAppearanceNotificationsQuick => '快速控制';

  @override
  String get settingsAppearanceNotificationsPauseAllTitle => '暂停所有通知';

  @override
  String get settingsAppearanceNotificationsPauseAllSubtitle => '暂时停止全部提醒';

  @override
  String get settingsAppearanceNotificationsSleepModeTitle => '睡眠模式';

  @override
  String get settingsAppearanceNotificationsSleepModeSubtitle => '在这些时间静音通知';

  @override
  String get settingsAppearanceNotificationsPostsSection => '帖子与故事';

  @override
  String get settingsAppearanceNotificationsPostsPeople => '关注人的帖子';

  @override
  String get settingsAppearanceNotificationsPostsLive => '直播视频';

  @override
  String get settingsAppearanceNotificationsPostsLiveSubtitle => '有人开始直播时';

  @override
  String get settingsAppearanceNotificationsPostsCampaigns => '新活动';

  @override
  String get settingsAppearanceNotificationsPostsCampaignsSubtitle =>
      '来自我关注的创作者';

  @override
  String get settingsAppearanceNotificationsEngagementSection => '互动';

  @override
  String get settingsAppearanceNotificationsEngagementLikes => '我的帖子收到的赞';

  @override
  String get settingsAppearanceNotificationsEngagementReplies => '评论回复';

  @override
  String get settingsAppearanceNotificationsEngagementMentions => '提及';

  @override
  String get settingsAppearanceNotificationsEngagementMentionsSubtitle =>
      '有人@我时';

  @override
  String get settingsAppearanceNotificationsEngagementFollowers => '新关注者';

  @override
  String get settingsAppearanceNotificationsDonationsSection => '捐赠与活动';

  @override
  String get settingsAppearanceNotificationsDonationsReceivedTitle => '收到捐赠';

  @override
  String get settingsAppearanceNotificationsDonationsReceivedSubtitle =>
      '有人向我的活动捐款时';

  @override
  String get settingsAppearanceNotificationsDonationsMilestonesTitle => '活动里程碑';

  @override
  String get settingsAppearanceNotificationsDonationsMilestonesSubtitle =>
      '达成 25%、50%、75%、100%';

  @override
  String get settingsAppearanceNotificationsDonationsUpdatesTitle => '活动更新';

  @override
  String get settingsAppearanceNotificationsDonationsUpdatesSubtitle =>
      '来自我捐赠过的活动';

  @override
  String get settingsAppearanceNotificationsDonationsWithdrawTitle => '提现状态';

  @override
  String get settingsAppearanceNotificationsDonationsWithdrawSubtitle =>
      '处理中、已完成或失败';

  @override
  String get settingsAppearanceNotificationsMessagesSection => '消息';

  @override
  String get settingsAppearanceNotificationsMessagesDirect => '私信';

  @override
  String get settingsAppearanceNotificationsMessagesRequests => '消息请求';

  @override
  String get settingsAppearanceNotificationsMessagesRequestsSubtitle =>
      '来自未关注的人';

  @override
  String get settingsAppearanceNotificationsMessagesGroups => '群组邀请';

  @override
  String get settingsAppearanceNotificationsSummaryTitle => '通知摘要';

  @override
  String get settingsAppearanceNotificationsSummarySubtitle =>
      '改收每日或每周摘要而非实时通知';

  @override
  String get settingsAppearanceNotificationsSummaryOff => '关';

  @override
  String get settingsAppearanceNotificationsSummaryDaily => '每日';

  @override
  String get settingsAppearanceNotificationsSummaryWeekly => '每周';

  @override
  String get settingsAppearanceNotificationsOtherSection => '其他渠道';

  @override
  String get settingsAppearanceNotificationsOtherEmailTitle => '邮件通知';

  @override
  String get settingsAppearanceNotificationsOtherEmailSubtitle => '每周摘要与重要更新';

  @override
  String get settingsAppearanceNotificationsOtherSmsTitle => '短信通知';

  @override
  String get settingsAppearanceNotificationsOtherSmsSubtitle => '仅限关键提醒';

  @override
  String get settingsAppearanceAccessibilityTitle => '无障碍';

  @override
  String get settingsAppearanceAccessibilitySubtitle => '调节字体与布局';

  @override
  String get settingsAppearanceAccessibilityTabText => '文字';

  @override
  String get settingsAppearanceAccessibilityTabAppearance => '外观';

  @override
  String get settingsAppearanceAccessibilityTabLayout => '布局';

  @override
  String get settingsAppearanceAccessibilityFontSizeTitle => '字体大小';

  @override
  String get settingsAppearanceAccessibilityFontSizeSubtitle =>
      '预览会在 Velora 内实时更新';

  @override
  String settingsAppearanceAccessibilityFontSizeLabel(double points) {
    return '$points pt';
  }

  @override
  String settingsAppearanceAccessibilityFontSample(double points) {
    return '$points pt 的示例文本';
  }

  @override
  String get settingsAppearanceAccessibilityFontFamilyTitle => '字体';

  @override
  String get settingsAppearanceAccessibilityTextAlignmentTitle => '文字对齐';

  @override
  String get settingsAppearanceAccessibilityPreviewTitle => '预览';

  @override
  String get settingsAppearanceAccessibilityPreviewBody =>
      'Velora 让每座城市更有人情味，因为每个人都能在这里采取行动。';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastTitle =>
      '高对比度模式';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastSubtitle =>
      '提高清晰度，便于阅读';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastToggle =>
      '启用高对比度界面';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceTitle => '减少动态';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceSubtitle =>
      '限制视差和大幅过渡';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceToggle => '最小化动画';

  @override
  String get settingsAppearanceAccessibilityLayoutLineSpacing => '行距';

  @override
  String get settingsAppearanceAccessibilityLayoutPreviewBody =>
      'Velora 让城市更有人情味，因为每个人都能在这里采取行动。\n故事、筹款和现场报告都会显示在这里。';

  @override
  String get settingsAccountStatusTitle => '账户状态';

  @override
  String get settingsAccountStatusSubtitle => '账户健康与验证';

  @override
  String get settingsAccountStatusInfoTitle => '账户信息';

  @override
  String get settingsAccountStatusStandingTitle => '良好状态';

  @override
  String get settingsAccountStatusStandingSubtitle => '未发现限制';

  @override
  String get settingsAccountStatusEmailTitle => '邮箱已验证';

  @override
  String get settingsAccountStatusPhoneTitle => '手机号已验证';

  @override
  String get settingsAccountStatusMetricsTitle => '账户指标';

  @override
  String get settingsAccountStatusMemberSinceTitle => '加入时间';

  @override
  String get settingsAccountStatusDonationsTitle => '总捐赠';

  @override
  String get settingsAccountStatusCampaignsTitle => '已创建的活动';

  @override
  String get settingsAccountActivityTitle => '你的活动';

  @override
  String get settingsAccountActivitySubtitle => '查看互动和历史记录';

  @override
  String get settingsAccountActivityTabLikes => '赞';

  @override
  String get settingsAccountActivityTabComments => '评论';

  @override
  String get settingsAccountActivityTabDonations => '捐赠';

  @override
  String get settingsAccountActivityTabArchive => '已归档';

  @override
  String get settingsAccountActivityTabDeleted => '已删除';

  @override
  String get settingsAccountActivityRecentLikes => '最近的赞';

  @override
  String get settingsAccountActivityRecentComments => '最近的评论';

  @override
  String get settingsAccountActivityArchived => '已归档';

  @override
  String get settingsAccountActivityRestoreButton => '恢复';

  @override
  String get settingsAccountActivityDeletedEmptyTitle => '暂无删除项';

  @override
  String get settingsAccountActivityDeletedEmptySubtitle =>
      '被删除的内容将在永久删除前的 30 天内显示在此处。';

  @override
  String get settingsAccountDonationsTitle => '我的捐赠';

  @override
  String get settingsAccountDonationsSubtitle => '你的捐赠记录与影响';

  @override
  String get settingsAccountDonationsImpactTitle => '影响总览';

  @override
  String get settingsAccountDonationsTotalLabel => '总捐赠';

  @override
  String get settingsAccountDonationsCampaignsLabel => '活动';

  @override
  String get settingsAccountDonationsThisMonthLabel => '本月';

  @override
  String get settingsAccountDonationsRecurringLabel => '定期';

  @override
  String get campaignSeeMore => '查看更多';

  @override
  String get campaignFeaturedTitle => '精选活动';

  @override
  String get campaignEmergencyTitle => '紧急募捐';

  @override
  String get campaignSocialImpactTitle => '社会影响';

  @override
  String get campaignTechnologyTitle => '科技';

  @override
  String get campaignFashionTitle => '时尚';

  @override
  String get campaignFoodBeverageTitle => '餐饮';

  @override
  String get campaignFinanceTitle => '金融';

  @override
  String get campaignMemorialTitle => '追悼募捐';

  @override
  String campaignRaisedOf(String target) {
    return '已筹集 $target';
  }

  @override
  String get campaignEndOfList => '没有更多活动';

  @override
  String settingsAccountDonationsRecurringValue(int count) {
    return '$count 个';
  }

  @override
  String get settingsAccountDonationsMatchedLabel => '匹配';

  @override
  String get settingsAccountDonationsFilterAll => '全部';

  @override
  String get settingsAccountDonationsFilterRecurring => '定期';

  @override
  String get settingsAccountDonationsFilterMatched => '匹配';

  @override
  String get settingsAccountDonationsExportButton => '导出全部收据';

  @override
  String get settingsAccountDonationsExportingToast => '正在导出捐赠记录…';

  @override
  String get settingsAccountDonationsStatusRecurring => '定期';

  @override
  String get settingsAccountDonationsStatusMatched => '匹配';

  @override
  String get settingsAccountDonationsEmptyTitle => '暂无捐赠';

  @override
  String get settingsAccountDonationsEmptySubtitle => '支持与你相关的活动，开始带来改变。';

  @override
  String get settingsAccountDonationsEmptyButton => '探索活动';

  @override
  String get settingsHelpCenterTitle => '帮助中心';

  @override
  String get settingsHelpCenterSubtitle => '支持与安全资源';

  @override
  String get settingsHelpPrioritySemantics => '优先支持提示';

  @override
  String get settingsHelpPriorityTitle => '优先支持';

  @override
  String get settingsHelpPrioritySubtitle => '认证发起人通常能在 2 小时内得到回复。';

  @override
  String get settingsHelpSupportOptionsTitle => '支持选项';

  @override
  String get settingsHelpFaqTileTitle => '常见问题';

  @override
  String get settingsHelpFaqTileSubtitle => '为你准备的即时答案';

  @override
  String get settingsHelpEmailTitle => '邮件支持';

  @override
  String get settingsHelpEmailSubtitle => 'support@velora.app';

  @override
  String get settingsHelpReportTitle => '报告问题';

  @override
  String get settingsHelpReportSubtitle => 'Bug、滥用、骚扰';

  @override
  String get settingsHelpGuidesTitle => '指南';

  @override
  String get settingsHelpCommunityGuidelinesTitle => '社区准则';

  @override
  String get settingsHelpCommunityGuidelinesSubtitle => '2025 年 2 月更新';

  @override
  String get settingsHelpSecurityChecklistTitle => '安全检查清单';

  @override
  String get settingsHelpSecurityChecklistSubtitle => '让你的账户更安全';

  @override
  String get settingsHelpReportSheetTitle => '报告问题';

  @override
  String get settingsHelpReportHint => '描述发生了什么…';

  @override
  String get settingsHelpReportThanks => '感谢你的反馈';

  @override
  String get settingsHelpReportSendButton => '发送';

  @override
  String get settingsHelpFaqTitle => 'FAQ';

  @override
  String get settingsHelpFaqSubtitle => '热门帮助话题';

  @override
  String get settingsHelpFaqQuestion1 => 'Velora 如何验证活动？';

  @override
  String get settingsHelpFaqAnswer1 => '每个活动都要通过信任检查表，包括受益人验证、身份证件以及透明度里程碑。';

  @override
  String get settingsHelpFaqQuestion2 => '我可以隐藏捐赠金额吗？';

  @override
  String get settingsHelpFaqAnswer2 => '可以。捐赠时选择“匿名金额”选项，就只会显示你的头像。';

  @override
  String get settingsHelpFaqQuestion3 => '如果我失去账号访问权限怎么办？';

  @override
  String get settingsHelpFaqAnswer3 => '使用“密码和安全”里的恢复工具，并可预先授权可信联系人协助登录。';

  @override
  String get settingsHelpFaqQuestion4 => '如何管理通知？';

  @override
  String get settingsHelpFaqAnswer4 => '前往“通知”设置，为每种活动配置推送、邮件和短信提醒。';

  @override
  String get settingsHelpAboutTitle => '关于 Velora';

  @override
  String get settingsHelpAboutSemantics => 'Velora 品牌简介';

  @override
  String get settingsHelpAboutBrandName => 'Velora';

  @override
  String get settingsHelpAboutTagline => '赋能慷慨';

  @override
  String get settingsHelpAboutVersion => '版本 1.0.0 (Build 1)';

  @override
  String get settingsHelpAboutWhyTitle => '为什么选择 Velora';

  @override
  String get settingsHelpAboutWhyDescription =>
      'Velora 是一个公益平台，把热心人士与有意义的项目连接在一起，共同让世界更温暖。';

  @override
  String get settingsHelpAboutStatCampaigns => '100 万+ 活动';

  @override
  String get settingsHelpAboutStatSupporters => '500 万+ 支持者';

  @override
  String get settingsHelpAboutStatTrust => '信任优先';

  @override
  String get settingsHelpAboutConnectTitle => '联系我们';

  @override
  String get settingsHelpAboutSocialWebsite => '官网';

  @override
  String get settingsHelpAboutSocialInstagram => 'Instagram';

  @override
  String get settingsHelpAboutSocialThreads => 'Threads';

  @override
  String get settingsHelpAboutSocialFacebook => 'Facebook';

  @override
  String get settingsHelpAboutLegalTitle => '法律';

  @override
  String get settingsHelpAboutDevTitle => '开发团队';

  @override
  String get settingsHelpAboutDevOrgSubtitle => '产品、设计与工程';

  @override
  String get settingsHelpAboutDevFounderSubtitle => '创始人兼首席开发者';

  @override
  String get settingsHelpAboutContactTitle => '联系与支持';

  @override
  String get settingsHelpAboutLiveChatTitle => '在线客服';

  @override
  String get settingsHelpAboutLiveChatSubtitle => '每日 9:00–18:00';

  @override
  String get settingsHelpAboutReportBugTitle => '报告 Bug';

  @override
  String get settingsHelpAboutReportBugSubtitle => '帮我们改进 Velora';

  @override
  String get settingsHelpAboutSuggestFeatureTitle => '功能建议';

  @override
  String get settingsHelpAboutSuggestFeatureSubtitle => '分享你的产品想法';

  @override
  String get settingsHelpAboutPrivacy => '隐私政策';

  @override
  String get settingsHelpAboutTerms => '服务条款';

  @override
  String get settingsHelpAboutCookie => 'Cookie 政策';

  @override
  String get settingsHelpAboutLicenses => '开源许可';

  @override
  String get settingsHelpAboutEnjoyTitle => '喜欢 Velora 吗？';

  @override
  String get settingsHelpAboutEnjoySubtitle => '给个评价，帮助更多人发现 Velora。';

  @override
  String get settingsHelpAboutRateButton => '为 Velora 评分';

  @override
  String get settingsHelpAboutAcknowledgementsTitle => '致谢';

  @override
  String get settingsHelpAboutAcknowledgementsThanks =>
      '感谢所有贡献者、测试者以及 Flutter 社区让 Velora 成为现实。';

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
  String get settingsHelpAboutFooterCopyright => '© 2025 VitoTechLab. 版权所有。';

  @override
  String get settingsHelpAboutFooterMadeWith => '以 ❤️ 打造，只为更美好的世界';
}
