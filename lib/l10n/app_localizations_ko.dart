// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Velora';

  @override
  String get authSignInFormLabel => '로그인 양식';

  @override
  String get authLogoLabel => 'Velora 로고';

  @override
  String get authWelcomeBackTitle => '다시 오신 것을 환영해요';

  @override
  String get authSignInSubtitle => '계속하려면 로그인하세요';

  @override
  String get fieldEmailLabel => '이메일';

  @override
  String get fieldEmailHint => 'email@domain.com';

  @override
  String get fieldPasswordLabel => '비밀번호';

  @override
  String get authForgotPassword => '비밀번호를 잊으셨나요?';

  @override
  String get authForgotPasswordHint => '비밀번호를 잊음. 비밀번호 재설정 화면으로 이동';

  @override
  String get authSignInButton => '로그인';

  @override
  String get authDividerText => '또는 다음으로 계속';

  @override
  String authContinueWith(String brand) {
    return '$brand로 계속';
  }

  @override
  String get authNoAccount => '아직 계정이 없나요?';

  @override
  String get authSignUpLink => '가입하기';

  @override
  String get authAgreeTermsError => '이용약관과 개인정보처리방침에 동의해주세요';

  @override
  String get authGoogleUnavailable => '구글 로그인이 아직 지원되지 않습니다.';

  @override
  String get authSignUpFormLabel => '계정 생성 양식';

  @override
  String get authCreateAccountTitle => '계정 만들기';

  @override
  String get authJoinCommunitySubtitle => 'Velora 커뮤니티에 가입하세요';

  @override
  String get authAgreeTermsLabel => '이용약관 및 개인정보처리방침에 동의';

  @override
  String get authAgreeTermsPrefix => '다음에 동의합니다 ';

  @override
  String get authTermsOfService => '이용약관';

  @override
  String get authAnd => ' 및 ';

  @override
  String get authPrivacyPolicy => '개인정보처리방침';

  @override
  String get authCreateAccountButton => '계정 만들기';

  @override
  String get authAlreadyHaveAccount => '이미 계정이 있나요?';

  @override
  String get authSignInLink => '로그인';

  @override
  String get commonGoBack => '돌아가기';

  @override
  String get commonCancel => '취소';

  @override
  String get authResetPasswordFormLabel => '비밀번호 재설정 양식';

  @override
  String get authEmailIllustrationLabel => '이메일 일러스트';

  @override
  String get authResetPasswordTitle => '비밀번호 재설정';

  @override
  String get authResetPasswordSubtitle =>
      '등록된 이메일을 입력하면 비밀번호를 재설정할 수 있는 링크를 보내드려요.';

  @override
  String get authSendResetLink => '재설정 링크 보내기';

  @override
  String get authRememberPasswordLabel => '비밀번호가 기억나나요? 로그인으로 돌아가기';

  @override
  String get authRememberPasswordAction => '비밀번호가 기억나나요? 로그인';

  @override
  String get authResetEmailSentLabel => '재설정 이메일이 전송되었습니다';

  @override
  String get authCheckEmailTitle => '이메일을 확인하세요';

  @override
  String get authBackToSignIn => '로그인으로 돌아가기';

  @override
  String get authEmailVerificationLabel => '이메일 인증 안내';

  @override
  String get authAnimatedEmailLabel => '애니메이션 이메일 일러스트';

  @override
  String get authVerificationInstructions =>
      '인증 링크를 보냈습니다. 받은 편지함을 확인하고 링크를 눌러 계정을 인증하세요.';

  @override
  String get authVerifiedCta => '이메일을 인증했습니다';

  @override
  String get authResendVerificationLabel => '인증 메일 다시 보내기';

  @override
  String get authVerificationEmailResent => '인증 메일을 다시 보냈습니다';

  @override
  String get authWrongEmail => '이메일이 잘못되었나요? 로그아웃';

  @override
  String get authSignOutHint => '로그아웃하고 로그인 화면으로 돌아가기';

  @override
  String get authPasswordStrengthWeak => '약함';

  @override
  String get authPasswordStrengthStrong => '강함';

  @override
  String get authPasswordStrengthMedium => '중간';

  @override
  String get authPasswordStrengthFair => '보통';

  @override
  String get authPasswordShow => '비밀번호 표시';

  @override
  String get authPasswordHide => '비밀번호 숨기기';

  @override
  String get authPasswordRequirementsTitle => '비밀번호에는 다음이 포함되어야 합니다:';

  @override
  String get authPasswordRequirementLength => '최소 8자';

  @override
  String get authPasswordRequirementCase => '대문자와 소문자';

  @override
  String get authPasswordRequirementNumber => '숫자 1개 이상';

  @override
  String get authPasswordRequirementSpecial => '특수문자 (!@#\$%^&*)';

  @override
  String get feedTitle => '피드';

  @override
  String get feedCreatePostTooltip => '게시물 만들기';

  @override
  String get feedNotificationsTooltip => '알림';

  @override
  String get feedErrorLoading => '피드를 불러오지 못했습니다';

  @override
  String get feedEmptyMessage => '아직 게시물이 없어요';

  @override
  String get feedEmptySubtitle => '아래로 당겨 새로고침하거나 나중에 다시 시도하세요';

  @override
  String feedEmptyHint(String subtitle) {
    return '$subtitle 새로고침 버튼을 두 번 탭하세요.';
  }

  @override
  String get feedRefreshButtonSemantic => '피드 새로고침';

  @override
  String get feedRefreshButton => '새로고침';

  @override
  String get feedLoadingLabel => '피드를 불러오는 중';

  @override
  String get feedCommentsTitle => '댓글';

  @override
  String feedReplyingTo(String name) {
    return '$name에게 답글 남기는 중';
  }

  @override
  String feedAddCommentHint(String name) {
    return '$name에게 댓글을 남겨보세요';
  }

  @override
  String get feedNoCommentsTitle => '댓글이 아직 없습니다';

  @override
  String get feedNoCommentsSubtitle => '가장 먼저 의견을 남겨보세요!';

  @override
  String get feedReplyAction => '답글';

  @override
  String get feedDeleteAction => '삭제';

  @override
  String get feedSeeTranslation => '번역 보기';

  @override
  String get feedSeeOriginal => '원문 보기';

  @override
  String get feedTranslating => '로드 중…';

  @override
  String feedCommentAsUser(String username) {
    return '$username(으)로 댓글 달기';
  }

  @override
  String feedViewReplies(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개의 답글 보기',
      one: '$count개의 답글 보기',
    );
    return '$_temp0';
  }

  @override
  String get feedHideReplies => '답글 숨기기';

  @override
  String get feedUnknownUser => '알 수 없는 사용자';

  @override
  String get feedPostSummaryFallback => '게시물';

  @override
  String feedPostSemantics(String author, String summary, String time) {
    return '$author 님이 $summary을 $time에 게시했습니다';
  }

  @override
  String get feedOpenPostHint => '자세히 보려면 두 번 탭하세요';

  @override
  String get feedPostImageLabel => '게시물 이미지';

  @override
  String feedPostImagePositionLabel(int index, int total) {
    return '게시물 이미지 $index/$total';
  }

  @override
  String get feedCampaignFallback => '캠페인';

  @override
  String feedOpenCampaignLabel(String title) {
    return '$title 캠페인 열기';
  }

  @override
  String get feedLikeLabel => '게시물 좋아요';

  @override
  String get feedUnlikeLabel => '좋아요 취소';

  @override
  String get feedLikeHint => '이 게시물을 두 번 탭해 좋아요';

  @override
  String get feedUnlikeHint => '두 번 탭해 좋아요를 취소';

  @override
  String get feedViewCommentsLabel => '댓글 보기';

  @override
  String get feedViewCommentsHint => '두 번 탭해 댓글 열기';

  @override
  String get feedShareComingSoon => '공유 기능이 곧 제공됩니다';

  @override
  String get feedShareLabel => '게시물 공유';

  @override
  String get feedShareHint => '두 번 탭해 공유';

  @override
  String get feedRemoveBookmarkLabel => '저장 취소';

  @override
  String get feedAddBookmarkLabel => '이 게시물을 저장';

  @override
  String get timeAgoNow => '방금';

  @override
  String timeAgoMinutes(int count) {
    return '$count분';
  }

  @override
  String timeAgoHours(int count) {
    return '$count시간';
  }

  @override
  String timeAgoDays(int count) {
    return '$count일';
  }

  @override
  String timeAgoMonths(int count) {
    return '$count개월';
  }

  @override
  String timeAgoYears(int count) {
    return '$count년';
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
  String get settingsAccountsCenterTitle => '계정 센터';

  @override
  String get settingsAccountsCenterSubtitle => '연결된 경험, ID, 개인정보를 관리하세요';

  @override
  String get settingsSearchTooltip => '설정 검색';

  @override
  String get settingsConnectedTitle => '연결된 경험';

  @override
  String get settingsConnectedSubtitle => '여러 플랫폼에서 Velora ID가 작동하는 방식을 제어합니다.';

  @override
  String get settingsTileProfilesTitle => '프로필';

  @override
  String get settingsTileProfilesSubtitle => 'Vito • Velora, Forum, Community';

  @override
  String get settingsTileSharingTitle => '프로필 간 공유';

  @override
  String get settingsTileSharingSubtitle => '자동으로 동기화할 항목 선택';

  @override
  String get settingsTileActivityTitle => '활동 기록';

  @override
  String get settingsTileActivitySubtitle => '최근 활동 및 상호작용 보기';

  @override
  String get settingsTileLoggingTitle => '계정 로그인';

  @override
  String get settingsTileLoggingSubtitle => '기기 및 로그인 승인 확인';

  @override
  String get settingsTileAccountStatusTitle => '계정 상태';

  @override
  String get settingsTileAccountStatusSubtitle => '인증 상태 및 계정 활동 보기';

  @override
  String get settingsAccountTitle => '계정 설정';

  @override
  String get settingsTilePasswordSecurityTitle => '비밀번호 및 보안';

  @override
  String get settingsTilePasswordSecuritySubtitle => '2단계 인증, 신뢰 기기, 보안 알림';

  @override
  String get settingsTilePersonalDetailsTitle => '개인 정보';

  @override
  String get settingsTilePersonalDetailsSubtitle => '이름, 사용자 이름, 프로필 링크';

  @override
  String get settingsTileInfoPermissionsTitle => '정보 및 권한';

  @override
  String get settingsTileInfoPermissionsSubtitle => '데이터 다운로드, 권한, 공개 범위';

  @override
  String get settingsTileAdPreferencesTitle => '광고 환경설정';

  @override
  String get settingsTileAdPreferencesSubtitle => '자주 보고 싶은 주제';

  @override
  String get settingsTileVeloraPayTitle => 'Velora Pay';

  @override
  String get settingsTileVeloraPaySubtitle => '결제 수단 및 보호';

  @override
  String get settingsWalletTitle => '지갑';

  @override
  String get walletDashboardTitle => '지갑 대시보드';

  @override
  String get walletDashboardWalletId => '지갑 ID: #VLR2024001';

  @override
  String get walletDashboardTotalBalance => '총 잔액';

  @override
  String get walletDashboardQuickActions => '빠른 작업';

  @override
  String get walletDashboardDonationHistory => '기부 내역';

  @override
  String get walletDashboardDonationHistorySubtitle => '모든 기부 거래 보기';

  @override
  String get walletDashboardMyCampaigns => '내 캠페인';

  @override
  String get walletDashboardMyCampaignsSubtitle => '모금 캠페인 관리';

  @override
  String get walletDashboardMyDonations => '내 기부';

  @override
  String get walletDashboardMyDonationsSubtitle => '기여 추적';

  @override
  String get walletDashboardAnalytics => '분석';

  @override
  String get walletDashboardAnalyticsSubtitle => '통찰력 및 통계 보기';

  @override
  String get walletDashboardRecentActivity => '최근 활동';

  @override
  String get walletDashboardNoActivity => '아직 활동이 없습니다';

  @override
  String get walletDashboardNoActivitySubtitle => '지갑 거래가 여기에 표시됩니다';

  @override
  String get walletDashboardUnderDevelopmentTitle => '개발 중';

  @override
  String get walletDashboardUnderDevelopmentMessage =>
      '이 기능은 현재 개발 중이며 곳 사용할 수 있습니다.';

  @override
  String get walletDashboardUnderDevelopmentButton => '확인';

  @override
  String get settingsPersonalizationTitle => '개인 맞춤화';

  @override
  String get settingsTileNotificationsTitle => '알림';

  @override
  String get settingsTileNotificationsSubtitle => '푸시, 이메일, SMS 설정';

  @override
  String get settingsTileThemeTitle => '테마';

  @override
  String get settingsTileThemeSubtitle => '앱 모양, 다크 모드, 대비';

  @override
  String get settingsTileLanguageTitle => '언어';

  @override
  String get settingsTileLanguageSubtitle => 'Velora에서 사용할 언어 선택';

  @override
  String get settingsTileAccessibilityTitle => '접근성';

  @override
  String get settingsTileAccessibilitySubtitle => '글꼴, 대비, 자막';

  @override
  String get settingsHelpTitle => '도움말 & 리소스';

  @override
  String get settingsTileHelpCenterTitle => '고객 센터';

  @override
  String get settingsTileHelpCenterSubtitle => '가이드, 튜토리얼, 빠른 답변';

  @override
  String get settingsTileFaqTitle => 'FAQ';

  @override
  String get settingsTileFaqSubtitle => '자주 묻는 질문 모음';

  @override
  String get settingsTileAboutTitle => 'Velora 정보';

  @override
  String get settingsTileAboutSubtitle => '버전, 라이선스, 감사';

  @override
  String get settingsHeroSemanticsLabel => 'Meta ID 프로필 요약 및 보안 상태';

  @override
  String get settingsHeroMetaId => 'Meta ID';

  @override
  String get settingsHeroLearnMore => '자세히 보기';

  @override
  String get settingsHeroNetworks => 'Facebook • Instagram • Velora';

  @override
  String get settingsHeroSwitchButton => '전환';

  @override
  String get settingsHeroPasswordUpdated => '2일 전에 비밀번호가 변경됨';

  @override
  String get settingsHeroPasswordSubtitle => '알림과 승인을 통해 계정을 안전하게 지키세요.';

  @override
  String get settingsHeroReviewButton => '검토';

  @override
  String get settingsHeroAccountType => '개인 계정';

  @override
  String get settingsHeroAccountTypeSubtitle => '탭하여 계정 유형 세부정보 보기';

  @override
  String get accountTypeScreenTitle => '계정 유형';

  @override
  String get accountTypeScreenCurrentType => '현재 계정 유형';

  @override
  String get accountTypeScreenPersonal => '개인 계정';

  @override
  String get accountTypeScreenPersonalDescription =>
      '친구 및 가족과 연결하고 싶은 개인 사용자에게 적합합니다.';

  @override
  String get accountTypeScreenPersonalBenefitsTitle => '개인 계정 혜택';

  @override
  String get accountTypeScreenBenefit1Title => '개인 프로필';

  @override
  String get accountTypeScreenBenefit1Subtitle => '개인 신원과 개인정보 보호';

  @override
  String get accountTypeScreenBenefit2Title => '개인정보 보호 제어';

  @override
  String get accountTypeScreenBenefit2Subtitle => '개인 데이터에 대한 완벽한 제어';

  @override
  String get accountTypeScreenBenefit3Title => '소셜 연결';

  @override
  String get accountTypeScreenBenefit3Subtitle => '친구 및 가족과 쉽게 연결';

  @override
  String get accountTypeScreenOrganization => '조직 계정';

  @override
  String get accountTypeScreenOrganizationDescription =>
      '조직 계정으로 업그레이드하여 고급 비즈니스 기능과 인증을 이용하세요.';

  @override
  String get accountTypeScreenOrganizationBenefitsTitle => '조직 혜택:';

  @override
  String get accountTypeScreenOrgBenefit1 => '진위성을 위한 인증 배지';

  @override
  String get accountTypeScreenOrgBenefit2 => '고급 분석 및 인사이트';

  @override
  String get accountTypeScreenOrgBenefit3 => '프로모션 도구 및 캠페인';

  @override
  String get accountTypeScreenOrgBenefit4 => '팀 협업 기능';

  @override
  String get accountTypeScreenUpgradeButton => '조직으로 업그레이드';

  @override
  String get accountTypeScreenVerificationTitle => '계정 인증';

  @override
  String get accountTypeScreenVerificationSubtitle =>
      '조직 계정으로 업그레이드하려면 인증 프로세스를 완료하세요.';

  @override
  String get accountTypeScreenVerificationStep1 => '신분증 사진';

  @override
  String get accountTypeScreenVerificationStep1Subtitle => '신분증의 명확한 사진을 촬영하세요';

  @override
  String get accountTypeScreenVerificationStep2 => '셀카 사진';

  @override
  String get accountTypeScreenVerificationStep2Subtitle => '신분증을 들고 셀카를 찍으세요';

  @override
  String get accountTypeScreenVerificationSubmit => '인증 제출';

  @override
  String get accountTypeScreenVerificationCancel => '취소';

  @override
  String get accountTypeScreenVerificationSuccess =>
      '인증이 성공적으로 제출되었습니다! 1-3 영업일 내에 요청을 검토하겠습니다.';

  @override
  String get settingsSearchProfiles => '프로필';

  @override
  String get settingsSearchPassword => '비밀번호';

  @override
  String get settingsSearchSecurity => '보안';

  @override
  String get settingsSearchNotifications => '알림';

  @override
  String get settingsSearchPrivacy => '개인정보';

  @override
  String get settingsSearchLanguage => '언어';

  @override
  String get settingsSearchTheme => '테마';

  @override
  String get settingsSearchHelp => '도움말';

  @override
  String get settingsSearchPayments => '결제';

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
  String get settingsProfileAccountSectionTitle => '계정';

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
  String get chatScreenTitle => '채팅';

  @override
  String get chatScreenNewChatLabel => '새 채팅 시작';

  @override
  String get chatScreenNewChatTooltip => '새 채팅';

  @override
  String get chatScreenListLabel => '채팅 목록';

  @override
  String get chatScreenListHint => '위아래로 스와이프하여 대화를 둘러보세요';

  @override
  String get chatScreenRetry => '다시 시도';

  @override
  String get chatScreenNoChats => '채팅 기록 없음';

  @override
  String get chatScreenNoChatsHint => '새 대화를 시작하면 여기에 채팅이 표시됩니다';

  @override
  String get chatScreenUnnamed => '이름 없음';

  @override
  String get chatScreenUnnamedGroup => '이름 없는 그룹';

  @override
  String get chatFilterAll => '전체';

  @override
  String get chatFilterUnread => '읽지 않음';

  @override
  String get chatFilterFavourites => '즐겨찾기';

  @override
  String get chatFilterGroups => '그룹';

  @override
  String chatFilterSemanticsLabel(String filter) {
    return '$filter 필터';
  }

  @override
  String chatFilterSemanticsHint(String filter) {
    return '$filter 기준으로 채팅을 필터링하려면 두 번 탭하세요';
  }

  @override
  String get chatSearchBarLabel => '채팅 검색';

  @override
  String get chatSearchBarHint => '대화를 검색할 내용을 입력하세요';

  @override
  String get chatSearchBarPlaceholder => 'Meta AI에 질문하거나 검색';

  @override
  String chatListItemSemanticsLabel(String name) {
    return '$name와(과)의 채팅';
  }

  @override
  String get chatListItemSemanticsHint => '두 번 탭하여 대화를 엽니다';

  @override
  String chatListItemPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count장의 사진',
      one: '$count장의 사진',
    );
    return '$_temp0';
  }

  @override
  String get chatListItemPhoto => '사진';

  @override
  String get chatListItemMissedCall => '부재중 음성 통화';

  @override
  String get chatBubbleYourLabel => '내 메시지';

  @override
  String get chatBubbleReceivedLabel => '받은 메시지';

  @override
  String chatBubbleHint(String time) {
    return '$time에 보낸 메시지';
  }

  @override
  String get chatMediaYourLabel => '내 미디어 메시지';

  @override
  String get chatMediaReceivedLabel => '받은 미디어 메시지';

  @override
  String chatMediaHint(String time) {
    return '$time에 전송된 미디어';
  }

  @override
  String chatDateSeparatorLabel(String date) {
    return '날짜 구분선: $date';
  }

  @override
  String get chatInputEmojiLabel => '이모지 선택기';

  @override
  String get chatInputEmojiHint => '두 번 탭하여 이모지 선택기 열기';

  @override
  String get chatInputEmojiTooltip => '이모지';

  @override
  String get chatInputFieldLabel => '메시지 입력란';

  @override
  String get chatInputFieldHint => '여기에 메시지를 입력하세요';

  @override
  String get chatInputFieldPlaceholder => '메시지';

  @override
  String get chatInputAttachLabel => '파일 첨부';

  @override
  String get chatInputAttachHint => '두 번 탭하여 파일을 첨부하세요';

  @override
  String get chatInputAttachTooltip => '파일 첨부';

  @override
  String get chatInputCameraLabel => '카메라';

  @override
  String get chatInputCameraHint => '두 번 탭하여 카메라 열기';

  @override
  String get chatInputCameraTooltip => '카메라';

  @override
  String get chatInputSendLabel => '메시지 보내기';

  @override
  String get chatInputSendHint => '두 번 탭하여 메시지를 보냅니다';

  @override
  String get chatInputVoiceLabel => '음성 메시지';

  @override
  String get chatInputVoiceHint => '두 번 탭하여 음성 메시지를 녹음';

  @override
  String get chatAttachmentGallery => '갤러리';

  @override
  String get chatAttachmentCamera => '카메라';

  @override
  String get chatAttachmentLocation => '위치';

  @override
  String get chatAttachmentContact => '연락처';

  @override
  String get chatAttachmentDocument => '문서';

  @override
  String get chatAttachmentAudio => '오디오';

  @override
  String get chatAttachmentPoll => '투표';

  @override
  String get chatAttachmentEvent => '이벤트';

  @override
  String get chatAttachmentAiImages => 'AI 이미지';

  @override
  String chatAttachmentSelectHint(String label) {
    return '$label을(를) 선택하려면 두 번 탭하세요';
  }

  @override
  String get chatDetailBackLabel => '뒤로 가기';

  @override
  String chatDetailTitleLabel(String name) {
    return '$name과의 대화';
  }

  @override
  String get chatDetailGroupSubtitle => '탭하여 그룹 정보를 확인하세요';

  @override
  String get chatDetailSelfSubtitle => '나에게 메시지 보내기';

  @override
  String get chatDetailOptionsLabel => '대화 옵션';

  @override
  String get chatDetailMenuTooltip => '추가 옵션';

  @override
  String get chatDetailHistoryLabel => '대화 기록';

  @override
  String get chatDetailHistoryHint => '위로 스와이프하여 이전 메시지를 확인하세요';

  @override
  String get chatDetailNoMessages => '아직 메시지가 없습니다';

  @override
  String get chatDetailNoMessagesHint => '메시지를 보내 대화를 시작하세요';

  @override
  String get chatDetailMessageDeleted => '이 메시지는 삭제되었습니다';

  @override
  String get chatDetailSelectMediaTitle => '미디어 유형 선택';

  @override
  String get chatDetailSelectImages => '이미지';

  @override
  String get chatDetailSelectVideo => '동영상';

  @override
  String chatDetailImagesSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개의 이미지 선택됨',
      one: '$count개의 이미지 선택됨',
    );
    return '$_temp0';
  }

  @override
  String get chatDetailVideoSelected => '동영상이 선택되었습니다';

  @override
  String get chatDetailPickMediaError => '미디어를 선택하지 못했습니다';

  @override
  String get chatDetailCameraModeTitle => '카메라 모드 선택';

  @override
  String get chatDetailCameraTakePhoto => '사진 촬영';

  @override
  String get chatDetailCameraRecordVideo => '동영상 녹화';

  @override
  String get chatDetailPhotoCaptured => '사진을 촬영했습니다';

  @override
  String get chatDetailVideoRecorded => '동영상을 녹화했습니다';

  @override
  String get chatDetailPollCreated => '투표가 생성되었습니다';

  @override
  String get chatDetailEventCreated => '이벤트가 생성되었습니다';

  @override
  String chatDetailDocumentsSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개의 문서 선택됨',
      one: '$count개의 문서 선택됨',
    );
    return '$_temp0';
  }

  @override
  String get chatDetailDocumentError => '문서를 선택하지 못했습니다';

  @override
  String get chatDetailAudioSelected => '오디오 파일이 선택되었습니다';

  @override
  String get chatDetailAudioError => '오디오를 선택하지 못했습니다';

  @override
  String get chatDetailLocationSelected => '위치가 선택되었습니다';

  @override
  String get chatDetailContactSelected => '연락처가 선택되었습니다';

  @override
  String get chatDetailAiImagesSelected => 'AI 이미지가 선택되었습니다';

  @override
  String get chatDetailVoiceMessage => '음성 메시지';

  @override
  String get chatDetailVoiceError => 'Failed to record voice message';

  @override
  String get chatDetailVoiceRecorded => 'Uploading voice message...';

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
  String get chatDetailStatusOnline => '온라인 상태';

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
  String get chatSearchScreenTitle => '검색';

  @override
  String get chatSearchScreenRecent => '최근 검색';

  @override
  String get chatSearchScreenClearAll => '모두 지우기';

  @override
  String get chatSearchGlobalLabel => '전체 검색';

  @override
  String get chatSearchGlobalHint => '캠페인, 게시물, 사람 전체를 검색하세요';

  @override
  String get chatSearchPlaceholder => '검색…';

  @override
  String get chatSearchScopeCampaigns => '캠페인';

  @override
  String get chatSearchScopePosts => '게시물';

  @override
  String get chatSearchScopePeople => '사람';

  @override
  String chatSearchScopeSemantics(String scope) {
    return '$scope 범위';
  }

  @override
  String chatSearchRecentItemLabel(String query) {
    return '최근 검색: $query';
  }

  @override
  String get chatSearchRecentItemHint => '두 번 탭하여 다시 검색';

  @override
  String get chatSearchRecentDeleteLabel => '최근 검색 삭제';

  @override
  String get chatSearchRecentDeleteTooltip => '제거';

  @override
  String get chatPollLabel => '투표';

  @override
  String get chatPollSemanticsYour => '내 투표';

  @override
  String get chatPollSemanticsReceived => '받은 투표';

  @override
  String chatPollSemanticsHint(int count) {
    return '$count표가 있는 투표';
  }

  @override
  String chatPollTotalVotes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count표',
      one: '$count표',
    );
    return '$_temp0';
  }

  @override
  String chatPollOptionSemantics(String option, int votes, String percent) {
    return '$option, $votes표, $percent%';
  }

  @override
  String get chatPollVoteHint => '두 번 탭하여 이 옵션에 투표';

  @override
  String get chatPollDialogTitle => '투표 만들기';

  @override
  String get chatPollDialogQuestionLabel => '투표 질문';

  @override
  String get chatPollDialogQuestionHint => '질문을 입력하세요…';

  @override
  String get chatPollDialogOptionsLabel => '옵션';

  @override
  String chatPollDialogOptionLabel(int index) {
    return '옵션 $index';
  }

  @override
  String get chatPollDialogOptionHint => '옵션을 입력하세요…';

  @override
  String get chatPollDialogAddOption => '옵션 추가';

  @override
  String get chatPollDialogQuestionError => '질문을 입력해 주세요';

  @override
  String get chatPollDialogOptionsError => '최소 2개의 옵션을 추가해 주세요';

  @override
  String get chatPollDialogMultipleChoiceLabel => '복수 선택';

  @override
  String get chatPollDialogMultipleChoiceHint => '사용자가 여러 옵션을 선택할 수 있습니다';

  @override
  String get chatPollDialogMaxVotesLabel => '최대 투표 수';

  @override
  String chatPollDialogMaxVotesHint(int count) {
    return '사용자가 최대 $count개의 옵션을 선택할 수 있습니다';
  }

  @override
  String get chatPollDialogSend => '투표 보내기';

  @override
  String get chatEventLabel => '이벤트';

  @override
  String get chatEventSemanticsYour => '내 이벤트';

  @override
  String get chatEventSemanticsReceived => '받은 이벤트';

  @override
  String chatEventHint(String date) {
    return '$date의 이벤트';
  }

  @override
  String get chatEventDialogTitle => '이벤트 만들기';

  @override
  String get chatEventDialogTitleLabel => '이벤트 제목';

  @override
  String get chatEventDialogTitleHint => '이벤트 제목을 입력하세요…';

  @override
  String get chatEventDialogDescriptionLabel => '설명';

  @override
  String get chatEventDialogDescriptionHint => '이벤트 설명을 입력하세요…';

  @override
  String get chatEventDialogLocationLabel => '위치(선택 사항)';

  @override
  String get chatEventDialogLocationHint => '위치를 입력하세요…';

  @override
  String get chatEventDialogAddressLabel => '주소';

  @override
  String get chatEventDialogAddressHint => '전체 주소를 입력하세요…';

  @override
  String get chatEventDialogOnlineLabel => '온라인 이벤트';

  @override
  String get chatEventDialogOnlineHint => '이 이벤트는 가상으로 진행됩니다';

  @override
  String get chatEventDialogMeetingUrlLabel => '미팅 URL';

  @override
  String get chatEventDialogMeetingUrlHint =>
      '미팅 링크를 입력하세요 (Zoom, Google Meet 등)';

  @override
  String get chatEventDialogMeetingUrlError => '온라인 이벤트는 미팅 URL을 입력해 주세요';

  @override
  String get chatEventDialogStartLabel => '시작';

  @override
  String get chatEventDialogEndLabel => '종료';

  @override
  String get chatEventDialogTitleError => '이벤트 제목을 입력해 주세요';

  @override
  String get chatEventDialogEndTimeError => '종료 시간은 시작 시간 이후여야 합니다';

  @override
  String get chatEventDialogSend => '이벤트 보내기';

  @override
  String get chatEventResponseTitle => '내 응답';

  @override
  String get chatEventResponseGoing => '참석';

  @override
  String get chatEventResponseMaybe => '미정';

  @override
  String get chatEventResponseNo => '불참';

  @override
  String chatEventResponseSummary(int going, int maybe, int notGoing) {
    return '$going명 참석 • $maybe명 미정 • $notGoing명 불참';
  }

  @override
  String chatEventResponseButtonLabel(String label) {
    return '$label 응답';
  }

  @override
  String chatEventResponseButtonHint(String label) {
    return '두 번 탭하여 $label 응답을 선택';
  }

  @override
  String get settingsAppearanceLanguageTitle => '언어';

  @override
  String get settingsAppearanceLanguagePreviewSemantics => '현재 언어 미리보기';

  @override
  String get settingsAppearanceLanguageCurrentLabel => '현재 언어';

  @override
  String get settingsAppearanceLanguageSearchHint => '언어를 검색하세요…';

  @override
  String get settingsAppearanceLanguageEmpty => '일치하는 언어가 없습니다';

  @override
  String settingsAppearanceLanguageToast(String language) {
    return '언어가 $language(으)로 변경되었습니다';
  }

  @override
  String get settingsAppearanceLanguageRestartNote =>
      '언어 변경을 적용하려면 앱이 다시 시작됩니다.';

  @override
  String get settingsAppearanceThemeTitle => '테마 및 화면';

  @override
  String get settingsAppearanceThemeModeSection => '테마 모드';

  @override
  String get settingsAppearanceThemeModeLight => '라이트';

  @override
  String get settingsAppearanceThemeModeDark => '다크';

  @override
  String get settingsAppearanceThemeModeAuto => '자동';

  @override
  String get settingsAppearanceThemeModeDescription =>
      '시스템 모드는 기기 설정에 따라 자동으로 전환됩니다.';

  @override
  String get settingsAppearanceThemeColorSection => '색상';

  @override
  String get settingsAppearanceThemeColorDynamic => '동적 색상';

  @override
  String get settingsAppearanceThemeShapeSection => '모양';

  @override
  String get settingsAppearanceThemeShapeCorner => '모서리 반경';

  @override
  String settingsAppearanceThemeShapeCornerValue(int px) {
    return '$px px';
  }

  @override
  String get settingsAppearanceThemeShapeSquare => '각진';

  @override
  String get settingsAppearanceThemeShapeSmall => '작게';

  @override
  String get settingsAppearanceThemeShapeMedium => '중간';

  @override
  String get settingsAppearanceThemeShapeLarge => '크게';

  @override
  String get settingsAppearanceThemeShapeMax => '최대';

  @override
  String get settingsAppearanceThemeAdvancedSection => '고급 설정';

  @override
  String get settingsAppearanceThemeAccentTitle => '강조 색상';

  @override
  String get settingsAppearanceThemeAccentSubtitle => '하이라이트 색상 사용자 지정';

  @override
  String get settingsAppearanceThemeAccentToast => '곧 색상 선택기가 추가됩니다';

  @override
  String get settingsAppearanceThemeTypographyTitle => '타이포그래피';

  @override
  String get settingsAppearanceThemeTypographySubtitle => '글꼴과 크기';

  @override
  String get settingsAppearanceThemeTypographyToast => '타이포그래피 설정이 곧 제공됩니다';

  @override
  String get settingsAppearanceThemeAnimationsTitle => '애니메이션';

  @override
  String get settingsAppearanceThemeAnimationsSubtitle => '전환 효과와 모션';

  @override
  String get settingsAppearanceThemeAnimationsToast => '애니메이션 설정이 곧 제공됩니다';

  @override
  String get settingsAppearanceThemePreviewTitle => '실시간 미리보기';

  @override
  String get settingsAppearanceThemePreviewSampleCard => '샘플 카드';

  @override
  String settingsAppearanceThemeModeLabel(String mode) {
    return '$mode 모드';
  }

  @override
  String get settingsAppearanceNotificationsTitle => '알림';

  @override
  String get settingsAppearanceNotificationsQuick => '빠른 제어';

  @override
  String get settingsAppearanceNotificationsPauseAllTitle => '모든 알림 일시중단';

  @override
  String get settingsAppearanceNotificationsPauseAllSubtitle => '모든 알림을 잠시 중지';

  @override
  String get settingsAppearanceNotificationsSleepModeTitle => '수면 모드';

  @override
  String get settingsAppearanceNotificationsSleepModeSubtitle =>
      '해당 시간 동안 알림 음소거';

  @override
  String get settingsAppearanceNotificationsPostsSection => '게시물 및 스토리';

  @override
  String get settingsAppearanceNotificationsPostsPeople => '팔로우 중인 사람의 게시물';

  @override
  String get settingsAppearanceNotificationsPostsLive => '라이브 영상';

  @override
  String get settingsAppearanceNotificationsPostsLiveSubtitle =>
      '누군가 라이브 방송을 시작하면';

  @override
  String get settingsAppearanceNotificationsPostsCampaigns => '새 캠페인';

  @override
  String get settingsAppearanceNotificationsPostsCampaignsSubtitle =>
      '팔로우 중인 크리에이터 소식';

  @override
  String get settingsAppearanceNotificationsEngagementSection => '참여';

  @override
  String get settingsAppearanceNotificationsEngagementLikes => '내 게시물의 좋아요';

  @override
  String get settingsAppearanceNotificationsEngagementReplies => '댓글 답글';

  @override
  String get settingsAppearanceNotificationsEngagementMentions => '멘션';

  @override
  String get settingsAppearanceNotificationsEngagementMentionsSubtitle =>
      '누군가 나를 태그할 때';

  @override
  String get settingsAppearanceNotificationsEngagementFollowers => '새 팔로워';

  @override
  String get settingsAppearanceNotificationsDonationsSection => '기부 및 캠페인';

  @override
  String get settingsAppearanceNotificationsDonationsReceivedTitle => '기부금 수신';

  @override
  String get settingsAppearanceNotificationsDonationsReceivedSubtitle =>
      '누군가 내 캠페인에 기부할 때';

  @override
  String get settingsAppearanceNotificationsDonationsMilestonesTitle =>
      '캠페인 마일스톤';

  @override
  String get settingsAppearanceNotificationsDonationsMilestonesSubtitle =>
      '25%, 50%, 75%, 100% 달성';

  @override
  String get settingsAppearanceNotificationsDonationsUpdatesTitle => '캠페인 업데이트';

  @override
  String get settingsAppearanceNotificationsDonationsUpdatesSubtitle =>
      '내가 기부한 캠페인 소식';

  @override
  String get settingsAppearanceNotificationsDonationsWithdrawTitle => '출금 상태';

  @override
  String get settingsAppearanceNotificationsDonationsWithdrawSubtitle =>
      '처리 중, 완료 또는 실패';

  @override
  String get settingsAppearanceNotificationsMessagesSection => '메시지';

  @override
  String get settingsAppearanceNotificationsMessagesDirect => '다이렉트 메시지';

  @override
  String get settingsAppearanceNotificationsMessagesRequests => '메시지 요청';

  @override
  String get settingsAppearanceNotificationsMessagesRequestsSubtitle =>
      '팔로우하지 않는 사람으로부터';

  @override
  String get settingsAppearanceNotificationsMessagesGroups => '그룹 초대';

  @override
  String get settingsAppearanceNotificationsSummaryTitle => '알림 요약';

  @override
  String get settingsAppearanceNotificationsSummarySubtitle =>
      '실시간 알림 대신 일·주간 요약 받기';

  @override
  String get settingsAppearanceNotificationsSummaryOff => '끔';

  @override
  String get settingsAppearanceNotificationsSummaryDaily => '매일';

  @override
  String get settingsAppearanceNotificationsSummaryWeekly => '매주';

  @override
  String get settingsAppearanceNotificationsOtherSection => '기타 채널';

  @override
  String get settingsAppearanceNotificationsOtherEmailTitle => '이메일 알림';

  @override
  String get settingsAppearanceNotificationsOtherEmailSubtitle =>
      '주간 요약 및 중요 업데이트';

  @override
  String get settingsAppearanceNotificationsOtherSmsTitle => 'SMS 알림';

  @override
  String get settingsAppearanceNotificationsOtherSmsSubtitle => '중요 경고만';

  @override
  String get settingsAppearanceAccessibilityTitle => '접근성';

  @override
  String get settingsAppearanceAccessibilitySubtitle => '타이포그래피와 레이아웃 조정';

  @override
  String get settingsAppearanceAccessibilityTabText => '텍스트';

  @override
  String get settingsAppearanceAccessibilityTabAppearance => '모양';

  @override
  String get settingsAppearanceAccessibilityTabLayout => '레이아웃';

  @override
  String get settingsAppearanceAccessibilityFontSizeTitle => '글자 크기';

  @override
  String get settingsAppearanceAccessibilityFontSizeSubtitle =>
      '미리보기는 Velora 전반에 실시간 적용됩니다';

  @override
  String settingsAppearanceAccessibilityFontSizeLabel(double points) {
    return '$points pt';
  }

  @override
  String settingsAppearanceAccessibilityFontSample(double points) {
    return '$points pt 예시 텍스트';
  }

  @override
  String get settingsAppearanceAccessibilityFontFamilyTitle => '글꼴';

  @override
  String get settingsAppearanceAccessibilityTextAlignmentTitle => '텍스트 정렬';

  @override
  String get settingsAppearanceAccessibilityPreviewTitle => '미리보기';

  @override
  String get settingsAppearanceAccessibilityPreviewBody =>
      'Velora는 모두가 행동할 공간을 제공해 도시를 더 인간답게 만듭니다.';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastTitle =>
      '고대비 모드';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastSubtitle =>
      '텍스트와 아이콘을 더 선명하게';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastToggle =>
      '고대비 UI 사용';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceTitle => '동작 줄이기';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceSubtitle =>
      '패럴랙스와 큰 전환 효과 제한';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceToggle =>
      '애니메이션 최소화';

  @override
  String get settingsAppearanceAccessibilityLayoutLineSpacing => '줄 간격';

  @override
  String get settingsAppearanceAccessibilityLayoutPreviewBody =>
      'Velora는 모두가 행동할 공간을 제공해 도시를 더 인간답게 만듭니다.\n스토리, 모금, 현장 리포트가 여기에 표시됩니다.';

  @override
  String get settingsAccountStatusTitle => '계정 상태';

  @override
  String get settingsAccountStatusSubtitle => '계정 건강과 인증';

  @override
  String get settingsAccountStatusInfoTitle => '계정 정보';

  @override
  String get settingsAccountStatusStandingTitle => '양호한 계정 상태';

  @override
  String get settingsAccountStatusStandingSubtitle => '제한 사항이 없습니다';

  @override
  String get settingsAccountStatusEmailTitle => '이메일 인증 완료';

  @override
  String get settingsAccountStatusPhoneTitle => '전화번호 인증 완료';

  @override
  String get settingsAccountStatusMetricsTitle => '계정 지표';

  @override
  String get settingsAccountStatusMemberSinceTitle => '가입일';

  @override
  String get settingsAccountStatusDonationsTitle => '총 기부금';

  @override
  String get settingsAccountStatusCampaignsTitle => '생성한 캠페인';

  @override
  String get settingsAccountActivityTitle => '내 활동';

  @override
  String get settingsAccountActivitySubtitle => '상호작용과 기록을 살펴보세요';

  @override
  String get settingsAccountActivityTabLikes => '좋아요';

  @override
  String get settingsAccountActivityTabComments => '댓글';

  @override
  String get settingsAccountActivityTabDonations => '기부';

  @override
  String get settingsAccountActivityTabArchive => '보관함';

  @override
  String get settingsAccountActivityTabDeleted => '삭제됨';

  @override
  String get settingsAccountActivityRecentLikes => '최근 좋아요';

  @override
  String get settingsAccountActivityRecentComments => '최근 댓글';

  @override
  String get settingsAccountActivityArchived => '보관됨';

  @override
  String get settingsAccountActivityRestoreButton => '복원';

  @override
  String get settingsAccountActivityDeletedEmptyTitle => '삭제된 항목이 없습니다';

  @override
  String get settingsAccountActivityDeletedEmptySubtitle =>
      '삭제한 항목은 영구 삭제 전 30일 동안 여기에 표시됩니다.';

  @override
  String get settingsAccountDonationsTitle => '나의 기부';

  @override
  String get settingsAccountDonationsSubtitle => '기부 내역과 영향';

  @override
  String get settingsAccountDonationsImpactTitle => '영향 개요';

  @override
  String get settingsAccountDonationsTotalLabel => '총 기부';

  @override
  String get settingsAccountDonationsCampaignsLabel => '캠페인';

  @override
  String get settingsAccountDonationsThisMonthLabel => '이번 달';

  @override
  String get settingsAccountDonationsRecurringLabel => '정기 기부';

  @override
  String get campaignSeeMore => '더 보기';

  @override
  String get campaignFeaturedTitle => '주요 캠페인';

  @override
  String get campaignEmergencyTitle => '긴급 모금';

  @override
  String get campaignSocialImpactTitle => '사회적 영향';

  @override
  String get campaignTechnologyTitle => '기술';

  @override
  String get campaignFashionTitle => '패션';

  @override
  String get campaignFoodBeverageTitle => '음식 및 음료';

  @override
  String get campaignFinanceTitle => '금융';

  @override
  String get campaignMemorialTitle => '추모 모금';

  @override
  String campaignRaisedOf(String target) {
    return '$target 중 모금됨';
  }

  @override
  String get campaignEndOfList => '더 이상 캠페인이 없습니다';

  @override
  String get searchTitle => '검색';

  @override
  String get searchHint => '무엇을 찾고 싶으세요?';

  @override
  String get searchDiscoverTitle => '새로운 발견';

  @override
  String get searchBrowseAllTitle => '모두 탐색';

  @override
  String settingsAccountDonationsRecurringValue(int count) {
    return '$count건 진행 중';
  }

  @override
  String get settingsAccountDonationsMatchedLabel => '매칭';

  @override
  String get settingsAccountDonationsFilterAll => '전체';

  @override
  String get settingsAccountDonationsFilterRecurring => '정기';

  @override
  String get settingsAccountDonationsFilterMatched => '매칭';

  @override
  String get settingsAccountDonationsExportButton => '모든 영수증 내보내기';

  @override
  String get settingsAccountDonationsExportingToast => '기부 내역을 내보내는 중입니다…';

  @override
  String get settingsAccountDonationsStatusRecurring => '정기';

  @override
  String get settingsAccountDonationsStatusMatched => '매칭';

  @override
  String get settingsAccountDonationsEmptyTitle => '아직 기부 내역이 없습니다';

  @override
  String get settingsAccountDonationsEmptySubtitle =>
      '의미 있는 캠페인을 지원해 변화를 만들어 보세요.';

  @override
  String get settingsAccountDonationsEmptyButton => '캠페인 살펴보기';

  @override
  String get settingsHelpCenterTitle => '헬프 센터';

  @override
  String get settingsHelpCenterSubtitle => '지원 및 안전 리소스';

  @override
  String get settingsHelpPrioritySemantics => '우선 지원 강조';

  @override
  String get settingsHelpPriorityTitle => '우선 지원';

  @override
  String get settingsHelpPrioritySubtitle => '검증된 캠페이너는 보통 2시간 이내에 답변을 받습니다.';

  @override
  String get settingsHelpSupportOptionsTitle => '지원 옵션';

  @override
  String get settingsHelpFaqTileTitle => '자주 묻는 질문';

  @override
  String get settingsHelpFaqTileSubtitle => '맞춤형 즉시 답변';

  @override
  String get settingsHelpEmailTitle => '이메일 지원';

  @override
  String get settingsHelpEmailSubtitle => 'support@velora.app';

  @override
  String get settingsHelpReportTitle => '문제 신고';

  @override
  String get settingsHelpReportSubtitle => '버그, 악용, 괴롭힘';

  @override
  String get settingsHelpGuidesTitle => '가이드';

  @override
  String get settingsHelpCommunityGuidelinesTitle => '커뮤니티 가이드라인';

  @override
  String get settingsHelpCommunityGuidelinesSubtitle => '2025년 2월 업데이트';

  @override
  String get settingsHelpSecurityChecklistTitle => '보안 체크리스트';

  @override
  String get settingsHelpSecurityChecklistSubtitle => '계정을 더 안전하게 지키세요';

  @override
  String get settingsHelpReportSheetTitle => '문제 신고';

  @override
  String get settingsHelpReportHint => '무슨 일이 있었는지 설명하세요…';

  @override
  String get settingsHelpReportThanks => '제보해 주셔서 감사합니다';

  @override
  String get settingsHelpReportSendButton => '보내기';

  @override
  String get settingsHelpFaqTitle => 'FAQ';

  @override
  String get settingsHelpFaqSubtitle => '인기 도움말 주제';

  @override
  String get settingsHelpFaqQuestion1 => 'Velora는 캠페인을 어떻게 검증하나요?';

  @override
  String get settingsHelpFaqAnswer1 =>
      '모든 캠페인은 수혜자 확인, 신분증, 투명성 마일스톤을 포함한 신뢰 체크리스트를 통과해야 합니다.';

  @override
  String get settingsHelpFaqQuestion2 => '기부 금액을 숨길 수 있나요?';

  @override
  String get settingsHelpFaqAnswer2 =>
      '가능합니다. 기부 시 \"익명 금액\" 옵션을 선택하면 아바타만 표시됩니다.';

  @override
  String get settingsHelpFaqQuestion3 => '계정 접근을 잃으면 어떻게 하나요?';

  @override
  String get settingsHelpFaqAnswer3 =>
      '비밀번호 및 보안 메뉴의 복구 키트를 사용하고, 신뢰할 수 있는 연락처에게 미리 승인을 맡길 수 있습니다.';

  @override
  String get settingsHelpFaqQuestion4 => '알림은 어떻게 관리하나요?';

  @override
  String get settingsHelpFaqAnswer4 =>
      '알림 설정으로 이동해 캠페인 유형별 푸시, 이메일, SMS를 구성하세요.';

  @override
  String get settingsHelpAboutTitle => 'Velora 소개';

  @override
  String get settingsHelpAboutSemantics => 'Velora 브랜드 요약';

  @override
  String get settingsHelpAboutBrandName => 'Velora';

  @override
  String get settingsHelpAboutTagline => '나눔을 실천하게 하다';

  @override
  String get settingsHelpAboutVersion => '버전 1.0.0 (빌드 1)';

  @override
  String get settingsHelpAboutWhyTitle => 'Velora를 선택하는 이유';

  @override
  String get settingsHelpAboutWhyDescription =>
      'Velora는 너그러운 사람들과 의미 있는 목적을 연결하는 사회적 임팩트 플랫폼입니다. 함께 세상을 더 따뜻하게 만듭니다.';

  @override
  String get settingsHelpAboutStatCampaigns => '100만+ 캠페인';

  @override
  String get settingsHelpAboutStatSupporters => '500만+ 후원자';

  @override
  String get settingsHelpAboutStatTrust => '신뢰 우선';

  @override
  String get settingsHelpAboutConnectTitle => '우리를 만나보세요';

  @override
  String get settingsHelpAboutSocialWebsite => '웹사이트';

  @override
  String get settingsHelpAboutSocialInstagram => '인스타그램';

  @override
  String get settingsHelpAboutSocialThreads => 'Threads';

  @override
  String get settingsHelpAboutSocialFacebook => '페이스북';

  @override
  String get settingsHelpAboutLegalTitle => '법률';

  @override
  String get settingsHelpAboutDevTitle => '개발 팀';

  @override
  String get settingsHelpAboutDevOrgSubtitle => '프로덕트, 디자인, 엔지니어링';

  @override
  String get settingsHelpAboutDevFounderSubtitle => '창립자 & 리드 개발자';

  @override
  String get settingsHelpAboutContactTitle => '문의 및 지원';

  @override
  String get settingsHelpAboutLiveChatTitle => '라이브 채팅';

  @override
  String get settingsHelpAboutLiveChatSubtitle => '오전 9시–오후 6시 운영';

  @override
  String get settingsHelpAboutReportBugTitle => '버그 신고';

  @override
  String get settingsHelpAboutReportBugSubtitle => 'Velora 개선을 도와주세요';

  @override
  String get settingsHelpAboutSuggestFeatureTitle => '기능 제안';

  @override
  String get settingsHelpAboutSuggestFeatureSubtitle => '제품 아이디어를 공유하세요';

  @override
  String get settingsHelpAboutPrivacy => '개인정보 처리방침';

  @override
  String get settingsHelpAboutTerms => '서비스 약관';

  @override
  String get settingsHelpAboutCookie => '쿠키 정책';

  @override
  String get settingsHelpAboutLicenses => '오픈 소스 라이선스';

  @override
  String get settingsHelpAboutEnjoyTitle => 'Velora가 마음에 드시나요?';

  @override
  String get settingsHelpAboutEnjoySubtitle =>
      '평가를 남겨 더 많은 사람이 Velora를 발견하도록 도와주세요.';

  @override
  String get settingsHelpAboutRateButton => 'Velora 평가하기';

  @override
  String get settingsHelpAboutAcknowledgementsTitle => '감사의 말';

  @override
  String get settingsHelpAboutAcknowledgementsThanks =>
      'Velora를 완성해 준 기여자, 베타 테스터, Flutter 커뮤니티에 감사드립니다.';

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
  String get settingsHelpAboutFooterMadeWith => '더 나은 세상을 위해 ❤️와 함께 만들었습니다';

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
}
