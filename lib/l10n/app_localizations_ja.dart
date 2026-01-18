// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Velora';

  @override
  String get authSignInFormLabel => 'ログインフォーム';

  @override
  String get authLogoLabel => 'Velora ロゴ';

  @override
  String get authWelcomeBackTitle => 'お帰りなさい';

  @override
  String get authSignInSubtitle => '続行するにはログインしてください';

  @override
  String get fieldEmailLabel => 'メールアドレス';

  @override
  String get fieldEmailHint => 'email@example.com';

  @override
  String get fieldPasswordLabel => 'パスワード';

  @override
  String get authForgotPassword => 'パスワードをお忘れですか？';

  @override
  String get authForgotPasswordHint => 'パスワードを忘れた場合。パスワード再設定画面へ移動';

  @override
  String get authSignInButton => 'ログイン';

  @override
  String get authDividerText => 'または次の方法で続行';

  @override
  String authContinueWith(String brand) {
    return '$brand で続行';
  }

  @override
  String get authNoAccount => 'アカウントをお持ちではありませんか？';

  @override
  String get authSignUpLink => '登録';

  @override
  String get authAgreeTermsError => 'まず利用規約とプライバシーポリシーに同意してください';

  @override
  String get authGoogleUnavailable => 'Google ログインはまだ利用できません。';

  @override
  String get authSignUpFormLabel => 'アカウント作成フォーム';

  @override
  String get authCreateAccountTitle => 'アカウントを作成';

  @override
  String get authJoinCommunitySubtitle => 'Velora コミュニティに参加しましょう';

  @override
  String get authAgreeTermsLabel => '利用規約とプライバシーポリシーに同意';

  @override
  String get authAgreeTermsPrefix => '私は同意します';

  @override
  String get authTermsOfService => '利用規約';

  @override
  String get authAnd => ' と ';

  @override
  String get authPrivacyPolicy => 'プライバシーポリシー';

  @override
  String get authCreateAccountButton => 'アカウントを作成';

  @override
  String get authAlreadyHaveAccount => 'すでにアカウントをお持ちですか？';

  @override
  String get authSignInLink => 'ログイン';

  @override
  String get commonGoBack => '戻る';

  @override
  String get commonCancel => 'キャンセル';

  @override
  String get authResetPasswordFormLabel => 'パスワード再設定フォーム';

  @override
  String get authEmailIllustrationLabel => 'メールのイラスト';

  @override
  String get authResetPasswordTitle => 'パスワードをリセット';

  @override
  String get authResetPasswordSubtitle =>
      '登録済みのメールアドレスを入力すると、パスワード再設定用のリンクを送信します。';

  @override
  String get authSendResetLink => '再設定リンクを送信';

  @override
  String get authRememberPasswordLabel => 'パスワードを思い出しましたか？ログインへ戻る';

  @override
  String get authRememberPasswordAction => 'パスワードを思い出しましたか？ログイン';

  @override
  String get authResetEmailSentLabel => '再設定メールを送信しました';

  @override
  String get authCheckEmailTitle => 'メールを確認してください';

  @override
  String get authBackToSignIn => 'ログインへ戻る';

  @override
  String get authEmailVerificationLabel => 'メール確認の案内';

  @override
  String get authAnimatedEmailLabel => 'アニメーション付きメールのイラスト';

  @override
  String get authVerificationInstructions =>
      '確認リンクを送信しました。受信トレイを確認し、リンクをクリックしてアカウントを確認してください。';

  @override
  String get authVerifiedCta => 'メールを確認しました';

  @override
  String get authResendVerificationLabel => '確認メールを再送';

  @override
  String get authVerificationEmailResent => '確認メールを再送信しました';

  @override
  String get authWrongEmail => 'メールが違いますか？サインアウト';

  @override
  String get authSignOutHint => 'サインアウトしてログイン画面に戻る';

  @override
  String get authPasswordStrengthWeak => '弱い';

  @override
  String get authPasswordStrengthStrong => '強い';

  @override
  String get authPasswordStrengthMedium => '中程度';

  @override
  String get authPasswordStrengthFair => 'やや弱い';

  @override
  String get authPasswordShow => 'パスワードを表示';

  @override
  String get authPasswordHide => 'パスワードを非表示';

  @override
  String get authPasswordRequirementsTitle => 'パスワードには次が含まれている必要があります:';

  @override
  String get authPasswordRequirementLength => '8 文字以上';

  @override
  String get authPasswordRequirementCase => '大文字と小文字';

  @override
  String get authPasswordRequirementNumber => '数字を 1 つ以上';

  @override
  String get authPasswordRequirementSpecial => '特殊文字 (!@#\$%^&*)';

  @override
  String get feedTitle => 'フィード';

  @override
  String get feedCreatePostTooltip => '投稿を作成';

  @override
  String get feedNotificationsTooltip => '通知';

  @override
  String get feedErrorLoading => 'フィードの読み込みに失敗しました';

  @override
  String get feedEmptyMessage => '投稿がまだありません';

  @override
  String get feedEmptySubtitle => '下に引っ張って更新するか、後でもう一度お試しください';

  @override
  String feedEmptyHint(String subtitle) {
    return '$subtitle。更新ボタンをダブルタップ。';
  }

  @override
  String get feedRefreshButtonSemantic => 'フィードを更新';

  @override
  String get feedRefreshButton => '更新';

  @override
  String get feedLoadingLabel => 'フィードを読み込み中';

  @override
  String get feedCommentsTitle => 'コメント';

  @override
  String feedReplyingTo(String name) {
    return '$name に返信中';
  }

  @override
  String feedAddCommentHint(String name) {
    return '$name へのコメントを追加';
  }

  @override
  String get feedNoCommentsTitle => 'コメントはまだありません';

  @override
  String get feedNoCommentsSubtitle => '最初のコメントを残しましょう！';

  @override
  String get feedReplyAction => '返信';

  @override
  String get feedDeleteAction => '削除';

  @override
  String get feedSeeTranslation => '翻訳を表示';

  @override
  String get feedSeeOriginal => '原文を表示';

  @override
  String get feedTranslating => '読み込み中…';

  @override
  String feedCommentAsUser(String username) {
    return '$usernameとしてコメント';
  }

  @override
  String feedViewReplies(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 件の返信を表示',
      one: '$count 件の返信を表示',
    );
    return '$_temp0';
  }

  @override
  String get feedHideReplies => '返信を非表示';

  @override
  String get feedUnknownUser => '不明なユーザー';

  @override
  String get feedPostSummaryFallback => '投稿';

  @override
  String feedPostSemantics(String author, String summary, String time) {
    return '$author が $summary を $time に投稿';
  }

  @override
  String get feedOpenPostHint => 'ダブルタップで投稿詳細を開く';

  @override
  String get feedPostImageLabel => '投稿画像';

  @override
  String feedPostImagePositionLabel(int index, int total) {
    return '投稿画像 $index/$total';
  }

  @override
  String get feedCampaignFallback => 'キャンペーン';

  @override
  String feedOpenCampaignLabel(String title) {
    return 'キャンペーン $title を開く';
  }

  @override
  String get feedLikeLabel => '投稿にいいね';

  @override
  String get feedUnlikeLabel => 'いいねを取り消す';

  @override
  String get feedLikeHint => 'ダブルタップでこの投稿にいいね';

  @override
  String get feedUnlikeHint => 'ダブルタップでいいねを取り消す';

  @override
  String get feedViewCommentsLabel => 'コメントを見る';

  @override
  String get feedViewCommentsHint => 'ダブルタップでコメントを開く';

  @override
  String get feedShareComingSoon => 'シェア機能は近日公開予定';

  @override
  String get feedShareLabel => '投稿をシェア';

  @override
  String get feedShareHint => 'ダブルタップでシェア';

  @override
  String get feedRemoveBookmarkLabel => 'ブックマークを解除';

  @override
  String get feedAddBookmarkLabel => 'この投稿をブックマーク';

  @override
  String get timeAgoNow => 'たった今';

  @override
  String timeAgoMinutes(int count) {
    return '$count分';
  }

  @override
  String timeAgoHours(int count) {
    return '$count時間';
  }

  @override
  String timeAgoDays(int count) {
    return '$count日';
  }

  @override
  String timeAgoMonths(int count) {
    return '$countか月';
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
  String get settingsAccountsCenterTitle => 'アカウントセンター';

  @override
  String get settingsAccountsCenterSubtitle => '接続された体験、ID、プライバシーを管理';

  @override
  String get settingsSearchTooltip => '設定を検索';

  @override
  String get settingsConnectedTitle => '接続された体験';

  @override
  String get settingsConnectedSubtitle => 'Velora の ID が各プラットフォームでどう動くかを管理します。';

  @override
  String get settingsTileProfilesTitle => 'プロフィール';

  @override
  String get settingsTileProfilesSubtitle => 'Vito • Velora、Forum、Community';

  @override
  String get settingsTileSharingTitle => 'プロフィール間の共有';

  @override
  String get settingsTileSharingSubtitle => '自動同期する内容を選択';

  @override
  String get settingsTileActivityTitle => 'アクティビティ履歴';

  @override
  String get settingsTileActivitySubtitle => '最近のアクティビティとインタラクションを表示';

  @override
  String get settingsTileLoggingTitle => 'アカウントでのログイン';

  @override
  String get settingsTileLoggingSubtitle => 'デバイスとログイン承認を確認';

  @override
  String get settingsTileAccountStatusTitle => 'アカウントステータス';

  @override
  String get settingsTileAccountStatusSubtitle => '認証状況とアカウントアクティビティを表示';

  @override
  String get settingsAccountTitle => 'アカウント設定';

  @override
  String get settingsTilePasswordSecurityTitle => 'パスワードとセキュリティ';

  @override
  String get settingsTilePasswordSecuritySubtitle => '2FA、信頼済みデバイス、セキュリティ通知';

  @override
  String get settingsTilePersonalDetailsTitle => '個人情報';

  @override
  String get settingsTilePersonalDetailsSubtitle => '名前、ユーザー名、プロフィールリンク';

  @override
  String get settingsTileInfoPermissionsTitle => '情報と権限';

  @override
  String get settingsTileInfoPermissionsSubtitle => 'データのダウンロード、権限、公開範囲';

  @override
  String get settingsTileAdPreferencesTitle => '広告の表示設定';

  @override
  String get settingsTileAdPreferencesSubtitle => 'よく表示したいトピック';

  @override
  String get settingsTileVeloraPayTitle => 'Velora Pay';

  @override
  String get settingsTileVeloraPaySubtitle => '支払い方法と保護';

  @override
  String get settingsWalletTitle => 'ウォレット';

  @override
  String get walletDashboardTitle => 'ウォレットダッシュボード';

  @override
  String get walletDashboardWalletId => 'ウォレットID: #VLR2024001';

  @override
  String get walletDashboardTotalBalance => '総残高';

  @override
  String get walletDashboardQuickActions => 'クイックアクション';

  @override
  String get walletDashboardDonationHistory => '寄付履歴';

  @override
  String get walletDashboardDonationHistorySubtitle => 'すべての寄付取引を表示';

  @override
  String get walletDashboardMyCampaigns => 'マイキャンペーン';

  @override
  String get walletDashboardMyCampaignsSubtitle => '募金キャンペーンを管理';

  @override
  String get walletDashboardMyDonations => '私の寄付';

  @override
  String get walletDashboardMyDonationsSubtitle => '貢献を追跡';

  @override
  String get walletDashboardAnalytics => '分析';

  @override
  String get walletDashboardAnalyticsSubtitle => '洞察と統計を表示';

  @override
  String get walletDashboardRecentActivity => '最近のアクティビティ';

  @override
  String get walletDashboardNoActivity => 'まだアクティビティはありません';

  @override
  String get walletDashboardNoActivitySubtitle => 'ウォレットの取引がここに表示されます';

  @override
  String get walletDashboardUnderDevelopmentTitle => '開発中';

  @override
  String get walletDashboardUnderDevelopmentMessage =>
      'この機能は現在開発中で、まもなく利用できるようになります。';

  @override
  String get walletDashboardUnderDevelopmentButton => 'OK';

  @override
  String get settingsPersonalizationTitle => 'パーソナライズ';

  @override
  String get settingsTileNotificationsTitle => '通知';

  @override
  String get settingsTileNotificationsSubtitle => 'プッシュ、メール、SMS の設定';

  @override
  String get settingsTileThemeTitle => 'テーマ';

  @override
  String get settingsTileThemeSubtitle => 'アプリの外観、ダークモード、コントラスト';

  @override
  String get settingsTileLanguageTitle => '言語';

  @override
  String get settingsTileLanguageSubtitle => 'Velora が使用する言語を選択';

  @override
  String get settingsTileAccessibilityTitle => 'アクセシビリティ';

  @override
  String get settingsTileAccessibilitySubtitle => 'フォント、コントラスト、字幕';

  @override
  String get settingsHelpTitle => 'ヘルプとリソース';

  @override
  String get settingsTileHelpCenterTitle => 'ヘルプセンター';

  @override
  String get settingsTileHelpCenterSubtitle => 'ガイド、チュートリアル、クイック回答';

  @override
  String get settingsTileFaqTitle => 'FAQ';

  @override
  String get settingsTileFaqSubtitle => 'よくある質問をまとめて表示';

  @override
  String get settingsTileAboutTitle => 'Velora について';

  @override
  String get settingsTileAboutSubtitle => 'バージョン、ライセンス、謝辞';

  @override
  String get settingsHeroSemanticsLabel => 'Meta ID のプロフィール概要とセキュリティ状況';

  @override
  String get settingsHeroMetaId => 'Meta ID';

  @override
  String get settingsHeroLearnMore => '詳細';

  @override
  String get settingsHeroNetworks => 'Facebook • Instagram • Velora';

  @override
  String get settingsHeroSwitchButton => '切り替え';

  @override
  String get settingsHeroPasswordUpdated => '2 日前にパスワードを更新';

  @override
  String get settingsHeroPasswordSubtitle => '通知と承認でアカウントを安全に保ちましょう。';

  @override
  String get settingsHeroReviewButton => '確認';

  @override
  String get settingsHeroAccountType => '個人アカウント';

  @override
  String get settingsHeroAccountTypeSubtitle => 'タップしてアカウントタイプの詳細を表示';

  @override
  String get accountTypeScreenTitle => 'アカウントタイプ';

  @override
  String get accountTypeScreenCurrentType => '現在のアカウントタイプ';

  @override
  String get accountTypeScreenPersonal => '個人アカウント';

  @override
  String get accountTypeScreenPersonalDescription => '友人や家族とつながりたい個人ユーザーに最適です。';

  @override
  String get accountTypeScreenPersonalBenefitsTitle => '個人アカウントのメリット';

  @override
  String get accountTypeScreenBenefit1Title => '個人プロフィール';

  @override
  String get accountTypeScreenBenefit1Subtitle => '個人のアイデンティティとプライバシーを保護';

  @override
  String get accountTypeScreenBenefit2Title => 'プライバシーコントロール';

  @override
  String get accountTypeScreenBenefit2Subtitle => '個人データを完全にコントロール';

  @override
  String get accountTypeScreenBenefit3Title => 'ソーシャル接続';

  @override
  String get accountTypeScreenBenefit3Subtitle => '友人や家族と簡単につながる';

  @override
  String get accountTypeScreenOrganization => '組織アカウント';

  @override
  String get accountTypeScreenOrganizationDescription =>
      '組織アカウントにアップグレードして、高度なビジネス機能と認証を利用できます。';

  @override
  String get accountTypeScreenOrganizationBenefitsTitle => '組織のメリット：';

  @override
  String get accountTypeScreenOrgBenefit1 => '本物認証バッジ';

  @override
  String get accountTypeScreenOrgBenefit2 => '高度な分析と洞察';

  @override
  String get accountTypeScreenOrgBenefit3 => 'プロモーションツールとキャンペーン';

  @override
  String get accountTypeScreenOrgBenefit4 => 'チームコラボレーション機能';

  @override
  String get accountTypeScreenUpgradeButton => '組織にアップグレード';

  @override
  String get accountTypeScreenVerificationTitle => 'アカウント認証';

  @override
  String get accountTypeScreenVerificationSubtitle =>
      '組織アカウントにアップグレードするには、認証プロセスを完了してください。';

  @override
  String get accountTypeScreenVerificationStep1 => 'IDカード写真';

  @override
  String get accountTypeScreenVerificationStep1Subtitle => 'IDカードの鮮明な写真を撮影';

  @override
  String get accountTypeScreenVerificationStep2 => 'セルフィー写真';

  @override
  String get accountTypeScreenVerificationStep2Subtitle => 'IDカードを持ったセルフィーを撮影';

  @override
  String get accountTypeScreenVerificationSubmit => '認証を送信';

  @override
  String get accountTypeScreenVerificationCancel => 'キャンセル';

  @override
  String get accountTypeScreenVerificationSuccess =>
      '認証が正常に送信されました！1～3営業日以内にリクエストを確認いたします。';

  @override
  String get settingsSearchProfiles => 'プロフィール';

  @override
  String get settingsSearchPassword => 'パスワード';

  @override
  String get settingsSearchSecurity => 'セキュリティ';

  @override
  String get settingsSearchNotifications => '通知';

  @override
  String get settingsSearchPrivacy => 'プライバシー';

  @override
  String get settingsSearchLanguage => '言語';

  @override
  String get settingsSearchTheme => 'テーマ';

  @override
  String get settingsSearchHelp => 'ヘルプ';

  @override
  String get settingsSearchPayments => '支払い';

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
  String get settingsProfileAccountSectionTitle => 'アカウント';

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
  String get chatScreenTitle => 'チャット';

  @override
  String get chatScreenNewChatLabel => '新しいチャットを開始';

  @override
  String get chatScreenNewChatTooltip => '新規チャット';

  @override
  String get chatScreenListLabel => 'チャット一覧';

  @override
  String get chatScreenListHint => '上下にスワイプして会話を確認';

  @override
  String get chatScreenRetry => '再試行';

  @override
  String get chatScreenNoChats => 'チャット履歴がありません';

  @override
  String get chatScreenNoChatsHint => '新しい会話を開始すると、ここにチャットが表示されます';

  @override
  String get chatScreenUnnamed => '名前なし';

  @override
  String get chatScreenUnnamedGroup => '名前のないグループ';

  @override
  String get chatFilterAll => 'すべて';

  @override
  String get chatFilterUnread => '未読';

  @override
  String get chatFilterFavourites => 'お気に入り';

  @override
  String get chatFilterGroups => 'グループ';

  @override
  String chatFilterSemanticsLabel(String filter) {
    return '$filter フィルター';
  }

  @override
  String chatFilterSemanticsHint(String filter) {
    return '$filterでチャットを絞り込むにはダブルタップ';
  }

  @override
  String get chatSearchBarLabel => 'チャットを検索';

  @override
  String get chatSearchBarHint => '会話を検索するテキストを入力';

  @override
  String get chatSearchBarPlaceholder => 'Meta AI に質問するか検索';

  @override
  String chatListItemSemanticsLabel(String name) {
    return '$nameとのチャット';
  }

  @override
  String get chatListItemSemanticsHint => 'ダブルタップで会話を開く';

  @override
  String chatListItemPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 枚の写真',
      one: '$count 枚の写真',
    );
    return '$_temp0';
  }

  @override
  String get chatListItemPhoto => '写真';

  @override
  String get chatListItemMissedCall => '不在着信（音声）';

  @override
  String get chatBubbleYourLabel => 'あなたのメッセージ';

  @override
  String get chatBubbleReceivedLabel => '受信したメッセージ';

  @override
  String chatBubbleHint(String time) {
    return '$timeに送信されたメッセージ';
  }

  @override
  String get chatMediaYourLabel => 'あなたのメディアメッセージ';

  @override
  String get chatMediaReceivedLabel => '受信したメディアメッセージ';

  @override
  String chatMediaHint(String time) {
    return '$timeに送信されたメディア';
  }

  @override
  String chatDateSeparatorLabel(String date) {
    return '日付区切り: $date';
  }

  @override
  String get chatInputEmojiLabel => '絵文字セレクター';

  @override
  String get chatInputEmojiHint => 'ダブルタップで絵文字セレクターを開く';

  @override
  String get chatInputEmojiTooltip => '絵文字';

  @override
  String get chatInputFieldLabel => 'メッセージ入力欄';

  @override
  String get chatInputFieldHint => 'ここにメッセージを入力してください';

  @override
  String get chatInputFieldPlaceholder => 'メッセージ';

  @override
  String get chatInputAttachLabel => 'ファイルを添付';

  @override
  String get chatInputAttachHint => 'ダブルタップでファイルを添付';

  @override
  String get chatInputAttachTooltip => 'ファイルを添付';

  @override
  String get chatInputCameraLabel => 'カメラ';

  @override
  String get chatInputCameraHint => 'ダブルタップでカメラを開く';

  @override
  String get chatInputCameraTooltip => 'カメラ';

  @override
  String get chatInputSendLabel => 'メッセージを送信';

  @override
  String get chatInputSendHint => 'ダブルタップでメッセージを送信';

  @override
  String get chatInputVoiceLabel => '音声メッセージ';

  @override
  String get chatInputVoiceHint => 'ダブルタップで音声メッセージを録音';

  @override
  String get chatAttachmentGallery => 'ギャラリー';

  @override
  String get chatAttachmentCamera => 'カメラ';

  @override
  String get chatAttachmentLocation => '位置情報';

  @override
  String get chatAttachmentContact => '連絡先';

  @override
  String get chatAttachmentDocument => 'ドキュメント';

  @override
  String get chatAttachmentAudio => 'オーディオ';

  @override
  String get chatAttachmentPoll => '投票';

  @override
  String get chatAttachmentEvent => 'イベント';

  @override
  String get chatAttachmentAiImages => 'AI 画像';

  @override
  String chatAttachmentSelectHint(String label) {
    return '$labelを選択するにはダブルタップ';
  }

  @override
  String get chatDetailBackLabel => '戻る';

  @override
  String chatDetailTitleLabel(String name) {
    return '$nameとの会話';
  }

  @override
  String get chatDetailGroupSubtitle => 'タップしてグループ情報を表示';

  @override
  String get chatDetailSelfSubtitle => '自分宛てにメッセージ';

  @override
  String get chatDetailOptionsLabel => '会話のオプション';

  @override
  String get chatDetailMenuTooltip => 'その他のオプション';

  @override
  String get chatDetailHistoryLabel => '会話の履歴';

  @override
  String get chatDetailHistoryHint => '上にスワイプして過去のメッセージを表示';

  @override
  String get chatDetailNoMessages => 'まだメッセージがありません';

  @override
  String get chatDetailNoMessagesHint => 'メッセージを送信して会話を始めましょう';

  @override
  String get chatDetailMessageDeleted => 'このメッセージは削除されました';

  @override
  String get chatDetailSelectMediaTitle => 'メディアの種類を選択';

  @override
  String get chatDetailSelectImages => '画像';

  @override
  String get chatDetailSelectVideo => '動画';

  @override
  String chatDetailImagesSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 件の画像を選択済み',
      one: '$count 件の画像を選択済み',
    );
    return '$_temp0';
  }

  @override
  String get chatDetailVideoSelected => '動画を選択しました';

  @override
  String get chatDetailPickMediaError => 'メディアを選択できませんでした';

  @override
  String get chatDetailCameraModeTitle => '撮影モードを選択';

  @override
  String get chatDetailCameraTakePhoto => '写真を撮影';

  @override
  String get chatDetailCameraRecordVideo => '動画を録画';

  @override
  String get chatDetailPhotoCaptured => '写真を撮影しました';

  @override
  String get chatDetailVideoRecorded => '動画を録画しました';

  @override
  String get chatDetailPollCreated => '投票を作成しました';

  @override
  String get chatDetailEventCreated => 'イベントを作成しました';

  @override
  String chatDetailDocumentsSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 件のドキュメントを選択',
      one: '$count 件のドキュメントを選択',
    );
    return '$_temp0';
  }

  @override
  String get chatDetailDocumentError => 'ドキュメントを選択できませんでした';

  @override
  String get chatDetailAudioSelected => '音声ファイルを選択しました';

  @override
  String get chatDetailAudioError => '音声を選択できませんでした';

  @override
  String get chatDetailLocationSelected => '位置情報を選択しました';

  @override
  String get chatDetailContactSelected => '連絡先を選択しました';

  @override
  String get chatDetailAiImagesSelected => 'AI 画像を選択しました';

  @override
  String get chatDetailVoiceMessage => '音声メッセージ';

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
  String get chatDetailStatusOnline => 'オンライン中';

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
  String get chatSearchScreenTitle => '検索';

  @override
  String get chatSearchScreenRecent => '最近の検索';

  @override
  String get chatSearchScreenClearAll => 'すべてクリア';

  @override
  String get chatSearchGlobalLabel => '全体検索';

  @override
  String get chatSearchGlobalHint => 'キャンペーン・投稿・ユーザー全体を検索';

  @override
  String get chatSearchPlaceholder => '検索…';

  @override
  String get chatSearchScopeCampaigns => 'キャンペーン';

  @override
  String get chatSearchScopePosts => '投稿';

  @override
  String get chatSearchScopePeople => '人';

  @override
  String chatSearchScopeSemantics(String scope) {
    return '$scope の範囲';
  }

  @override
  String chatSearchRecentItemLabel(String query) {
    return '最近の検索: $query';
  }

  @override
  String get chatSearchRecentItemHint => 'ダブルタップで再検索';

  @override
  String get chatSearchRecentDeleteLabel => '最近の検索を削除';

  @override
  String get chatSearchRecentDeleteTooltip => '削除';

  @override
  String get chatPollLabel => '投票';

  @override
  String get chatPollSemanticsYour => 'あなたの投票';

  @override
  String get chatPollSemanticsReceived => '受信した投票';

  @override
  String chatPollSemanticsHint(int count) {
    return '$count 票の投票';
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
    return '$option、$votes 票、$percent%';
  }

  @override
  String get chatPollVoteHint => 'ダブルタップでこの選択肢に投票';

  @override
  String get chatPollDialogTitle => '投票を作成';

  @override
  String get chatPollDialogQuestionLabel => '投票の質問';

  @override
  String get chatPollDialogQuestionHint => '質問を入力…';

  @override
  String get chatPollDialogOptionsLabel => '選択肢';

  @override
  String chatPollDialogOptionLabel(int index) {
    return '選択肢 $index';
  }

  @override
  String get chatPollDialogOptionHint => '選択肢を入力…';

  @override
  String get chatPollDialogAddOption => '選択肢を追加';

  @override
  String get chatPollDialogQuestionError => '質問を入力してください';

  @override
  String get chatPollDialogOptionsError => '少なくとも 2 つの選択肢を追加してください';

  @override
  String get chatPollDialogMultipleChoiceLabel => '複数選択';

  @override
  String get chatPollDialogMultipleChoiceHint => 'ユーザーが複数の選択肢を選ぶことができます';

  @override
  String get chatPollDialogMaxVotesLabel => '最大投票数';

  @override
  String chatPollDialogMaxVotesHint(int count) {
    return 'ユーザーは最大 $count 個の選択肢を選べます';
  }

  @override
  String get chatPollDialogSend => '投票を送信';

  @override
  String get chatEventLabel => 'イベント';

  @override
  String get chatEventSemanticsYour => 'あなたのイベント';

  @override
  String get chatEventSemanticsReceived => '受信したイベント';

  @override
  String chatEventHint(String date) {
    return '$date のイベント';
  }

  @override
  String get chatEventDialogTitle => 'イベントを作成';

  @override
  String get chatEventDialogTitleLabel => 'イベント名';

  @override
  String get chatEventDialogTitleHint => 'イベント名を入力…';

  @override
  String get chatEventDialogDescriptionLabel => '説明';

  @override
  String get chatEventDialogDescriptionHint => 'イベントの説明を入力…';

  @override
  String get chatEventDialogLocationLabel => '場所（任意）';

  @override
  String get chatEventDialogLocationHint => '場所を入力…';

  @override
  String get chatEventDialogAddressLabel => '住所';

  @override
  String get chatEventDialogAddressHint => '完全な住所を入力…';

  @override
  String get chatEventDialogOnlineLabel => 'オンラインイベント';

  @override
  String get chatEventDialogOnlineHint => 'このイベントはバーチャルで開催されます';

  @override
  String get chatEventDialogMeetingUrlLabel => 'ミーティングURL';

  @override
  String get chatEventDialogMeetingUrlHint =>
      'ミーティングリンクを入力（Zoom、Google Meetなど）';

  @override
  String get chatEventDialogMeetingUrlError => 'オンラインイベントにはミーティングURLを入力してください';

  @override
  String get chatEventDialogStartLabel => '開始';

  @override
  String get chatEventDialogEndLabel => '終了';

  @override
  String get chatEventDialogTitleError => 'イベント名を入力してください';

  @override
  String get chatEventDialogEndTimeError => '終了時間は開始時間より後にしてください';

  @override
  String get chatEventDialogSend => 'イベントを送信';

  @override
  String get chatEventResponseTitle => 'あなたの回答';

  @override
  String get chatEventResponseGoing => '参加';

  @override
  String get chatEventResponseMaybe => '未定';

  @override
  String get chatEventResponseNo => '不参加';

  @override
  String chatEventResponseSummary(int going, int maybe, int notGoing) {
    return '$going 人が参加 • $maybe 人が未定 • $notGoing 人が不参加';
  }

  @override
  String chatEventResponseButtonLabel(String label) {
    return '$label の回答';
  }

  @override
  String chatEventResponseButtonHint(String label) {
    return 'ダブルタップで $label の回答を送信';
  }

  @override
  String get settingsAppearanceLanguageTitle => '言語';

  @override
  String get settingsAppearanceLanguagePreviewSemantics => '現在の言語プレビュー';

  @override
  String get settingsAppearanceLanguageCurrentLabel => '現在の言語';

  @override
  String get settingsAppearanceLanguageSearchHint => '言語を検索…';

  @override
  String get settingsAppearanceLanguageEmpty => '該当する言語が見つかりません';

  @override
  String settingsAppearanceLanguageToast(String language) {
    return '言語を$languageに変更しました';
  }

  @override
  String get settingsAppearanceLanguageRestartNote => '言語変更を反映するためアプリが再起動します。';

  @override
  String get settingsAppearanceThemeTitle => 'テーマと外観';

  @override
  String get settingsAppearanceThemeModeSection => 'テーマモード';

  @override
  String get settingsAppearanceThemeModeLight => 'ライト';

  @override
  String get settingsAppearanceThemeModeDark => 'ダーク';

  @override
  String get settingsAppearanceThemeModeAuto => '自動';

  @override
  String get settingsAppearanceThemeModeDescription =>
      'システムモードは端末設定に合わせて自動で切り替わります。';

  @override
  String get settingsAppearanceThemeColorSection => 'カラー';

  @override
  String get settingsAppearanceThemeColorDynamic => 'ダイナミックカラー';

  @override
  String get settingsAppearanceThemeShapeSection => '形状';

  @override
  String get settingsAppearanceThemeShapeCorner => '角の丸み';

  @override
  String settingsAppearanceThemeShapeCornerValue(int px) {
    return '$px px';
  }

  @override
  String get settingsAppearanceThemeShapeSquare => 'スクエア';

  @override
  String get settingsAppearanceThemeShapeSmall => '小';

  @override
  String get settingsAppearanceThemeShapeMedium => '中';

  @override
  String get settingsAppearanceThemeShapeLarge => '大';

  @override
  String get settingsAppearanceThemeShapeMax => '最大';

  @override
  String get settingsAppearanceThemeAdvancedSection => '詳細設定';

  @override
  String get settingsAppearanceThemeAccentTitle => 'アクセントカラー';

  @override
  String get settingsAppearanceThemeAccentSubtitle => 'ハイライトカラーをカスタマイズ';

  @override
  String get settingsAppearanceThemeAccentToast => 'まもなくカラーピッカーが追加されます';

  @override
  String get settingsAppearanceThemeTypographyTitle => 'タイポグラフィ';

  @override
  String get settingsAppearanceThemeTypographySubtitle => 'フォントとサイズ';

  @override
  String get settingsAppearanceThemeTypographyToast => 'タイポグラフィ設定は近日公開';

  @override
  String get settingsAppearanceThemeAnimationsTitle => 'アニメーション';

  @override
  String get settingsAppearanceThemeAnimationsSubtitle => 'トランジションとモーション';

  @override
  String get settingsAppearanceThemeAnimationsToast => 'アニメーション設定は近日公開';

  @override
  String get settingsAppearanceThemePreviewTitle => 'ライブプレビュー';

  @override
  String get settingsAppearanceThemePreviewSampleCard => 'サンプルカード';

  @override
  String settingsAppearanceThemeModeLabel(String mode) {
    return '$modeモード';
  }

  @override
  String get settingsAppearanceNotificationsTitle => '通知';

  @override
  String get settingsAppearanceNotificationsQuick => 'クイックコントロール';

  @override
  String get settingsAppearanceNotificationsPauseAllTitle => '通知を一時停止';

  @override
  String get settingsAppearanceNotificationsPauseAllSubtitle => 'すべての通知を一時的に停止';

  @override
  String get settingsAppearanceNotificationsSleepModeTitle => 'スリープモード';

  @override
  String get settingsAppearanceNotificationsSleepModeSubtitle => '指定時間は通知をミュート';

  @override
  String get settingsAppearanceNotificationsPostsSection => '投稿とストーリー';

  @override
  String get settingsAppearanceNotificationsPostsPeople => 'フォロー中の投稿';

  @override
  String get settingsAppearanceNotificationsPostsLive => 'ライブ動画';

  @override
  String get settingsAppearanceNotificationsPostsLiveSubtitle =>
      '誰かがライブ配信を始めたとき';

  @override
  String get settingsAppearanceNotificationsPostsCampaigns => '新しいキャンペーン';

  @override
  String get settingsAppearanceNotificationsPostsCampaignsSubtitle =>
      'フォロー中のクリエイターから';

  @override
  String get settingsAppearanceNotificationsEngagementSection => 'エンゲージメント';

  @override
  String get settingsAppearanceNotificationsEngagementLikes => '自分の投稿のいいね';

  @override
  String get settingsAppearanceNotificationsEngagementReplies => 'コメントへの返信';

  @override
  String get settingsAppearanceNotificationsEngagementMentions => 'メンション';

  @override
  String get settingsAppearanceNotificationsEngagementMentionsSubtitle =>
      '誰かにタグ付けされたとき';

  @override
  String get settingsAppearanceNotificationsEngagementFollowers => '新しいフォロワー';

  @override
  String get settingsAppearanceNotificationsDonationsSection => '寄付とキャンペーン';

  @override
  String get settingsAppearanceNotificationsDonationsReceivedTitle =>
      '寄付を受け取りました';

  @override
  String get settingsAppearanceNotificationsDonationsReceivedSubtitle =>
      '誰かがあなたのキャンペーンに寄付したとき';

  @override
  String get settingsAppearanceNotificationsDonationsMilestonesTitle =>
      'キャンペーン達成状況';

  @override
  String get settingsAppearanceNotificationsDonationsMilestonesSubtitle =>
      '25%、50%、75%、100% 達成';

  @override
  String get settingsAppearanceNotificationsDonationsUpdatesTitle => 'キャンペーン更新';

  @override
  String get settingsAppearanceNotificationsDonationsUpdatesSubtitle =>
      '寄付したキャンペーンから';

  @override
  String get settingsAppearanceNotificationsDonationsWithdrawTitle => '出金状況';

  @override
  String get settingsAppearanceNotificationsDonationsWithdrawSubtitle =>
      '処理中、完了、失敗';

  @override
  String get settingsAppearanceNotificationsMessagesSection => 'メッセージ';

  @override
  String get settingsAppearanceNotificationsMessagesDirect => 'ダイレクトメッセージ';

  @override
  String get settingsAppearanceNotificationsMessagesRequests => 'メッセージリクエスト';

  @override
  String get settingsAppearanceNotificationsMessagesRequestsSubtitle =>
      'フォローしていない相手から';

  @override
  String get settingsAppearanceNotificationsMessagesGroups => 'グループ招待';

  @override
  String get settingsAppearanceNotificationsSummaryTitle => '通知サマリー';

  @override
  String get settingsAppearanceNotificationsSummarySubtitle =>
      'リアルタイムの代わりに日次・週次の要約を受け取る';

  @override
  String get settingsAppearanceNotificationsSummaryOff => 'オフ';

  @override
  String get settingsAppearanceNotificationsSummaryDaily => '毎日';

  @override
  String get settingsAppearanceNotificationsSummaryWeekly => '毎週';

  @override
  String get settingsAppearanceNotificationsOtherSection => 'その他のチャネル';

  @override
  String get settingsAppearanceNotificationsOtherEmailTitle => 'メール通知';

  @override
  String get settingsAppearanceNotificationsOtherEmailSubtitle =>
      '週次ダイジェストと重要なお知らせ';

  @override
  String get settingsAppearanceNotificationsOtherSmsTitle => 'SMS 通知';

  @override
  String get settingsAppearanceNotificationsOtherSmsSubtitle => '重要なお知らせのみ';

  @override
  String get settingsAppearanceAccessibilityTitle => 'アクセシビリティ';

  @override
  String get settingsAppearanceAccessibilitySubtitle => 'タイポグラフィとレイアウトの調整';

  @override
  String get settingsAppearanceAccessibilityTabText => 'テキスト';

  @override
  String get settingsAppearanceAccessibilityTabAppearance => '外観';

  @override
  String get settingsAppearanceAccessibilityTabLayout => 'レイアウト';

  @override
  String get settingsAppearanceAccessibilityFontSizeTitle => '文字サイズ';

  @override
  String get settingsAppearanceAccessibilityFontSizeSubtitle =>
      'Velora 全体でリアルタイムに反映';

  @override
  String settingsAppearanceAccessibilityFontSizeLabel(double points) {
    return '$points pt';
  }

  @override
  String settingsAppearanceAccessibilityFontSample(double points) {
    return '$points pt のサンプルテキスト';
  }

  @override
  String get settingsAppearanceAccessibilityFontFamilyTitle => 'フォントファミリー';

  @override
  String get settingsAppearanceAccessibilityTextAlignmentTitle => 'テキスト整列';

  @override
  String get settingsAppearanceAccessibilityPreviewTitle => 'プレビュー';

  @override
  String get settingsAppearanceAccessibilityPreviewBody =>
      'Velora は、行動する場所を与えることで都市をより人間的にします。';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastTitle =>
      'ハイコントラストモード';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastSubtitle =>
      '文字とアイコンを見やすく';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastToggle =>
      'ハイコントラスト UI を有効にする';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceTitle => '動きを減らす';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceSubtitle =>
      'パララックスや大きなトランジションを抑える';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceToggle =>
      'アニメーションを最小化';

  @override
  String get settingsAppearanceAccessibilityLayoutLineSpacing => '行間';

  @override
  String get settingsAppearanceAccessibilityLayoutPreviewBody =>
      'Velora は、行動する場所を与えることで都市をより人間的にします。\nストーリー、募金、現地レポートがここに表示されます。';

  @override
  String get settingsAccountStatusTitle => 'アカウントの状態';

  @override
  String get settingsAccountStatusSubtitle => 'アカウントの健全性と認証';

  @override
  String get settingsAccountStatusInfoTitle => 'アカウント情報';

  @override
  String get settingsAccountStatusStandingTitle => '健全なアカウント';

  @override
  String get settingsAccountStatusStandingSubtitle => '制限はありません';

  @override
  String get settingsAccountStatusEmailTitle => 'メール認証済み';

  @override
  String get settingsAccountStatusPhoneTitle => '電話番号認証済み';

  @override
  String get settingsAccountStatusMetricsTitle => 'アカウント指標';

  @override
  String get settingsAccountStatusMemberSinceTitle => '登録日';

  @override
  String get settingsAccountStatusDonationsTitle => '総寄付額';

  @override
  String get settingsAccountStatusCampaignsTitle => '作成したキャンペーン';

  @override
  String get settingsAccountActivityTitle => 'あなたのアクティビティ';

  @override
  String get settingsAccountActivitySubtitle => 'やり取りと履歴を確認';

  @override
  String get settingsAccountActivityTabLikes => 'いいね';

  @override
  String get settingsAccountActivityTabComments => 'コメント';

  @override
  String get settingsAccountActivityTabDonations => '寄付';

  @override
  String get settingsAccountActivityTabArchive => 'アーカイブ';

  @override
  String get settingsAccountActivityTabDeleted => '削除済み';

  @override
  String get settingsAccountActivityRecentLikes => '最近のいいね';

  @override
  String get settingsAccountActivityRecentComments => '最近のコメント';

  @override
  String get settingsAccountActivityArchived => 'アーカイブ済み';

  @override
  String get settingsAccountActivityRestoreButton => '復元';

  @override
  String get settingsAccountActivityDeletedEmptyTitle => '削除された項目はありません';

  @override
  String get settingsAccountActivityDeletedEmptySubtitle =>
      '削除した項目は、完全に消える前に30日間ここに表示されます。';

  @override
  String get settingsAccountDonationsTitle => '私の寄付';

  @override
  String get settingsAccountDonationsSubtitle => '寄付の履歴と影響';

  @override
  String get settingsAccountDonationsImpactTitle => '影響の概要';

  @override
  String get settingsAccountDonationsTotalLabel => '総寄付額';

  @override
  String get settingsAccountDonationsCampaignsLabel => 'キャンペーン';

  @override
  String get settingsAccountDonationsThisMonthLabel => '今月';

  @override
  String get settingsAccountDonationsRecurringLabel => '定期';

  @override
  String get campaignSeeMore => 'もっと見る';

  @override
  String get campaignFeaturedTitle => '注目のキャンペーン';

  @override
  String get campaignEmergencyTitle => '緊急募金活動';

  @override
  String get campaignSocialImpactTitle => '社会的影響';

  @override
  String get campaignTechnologyTitle => 'テクノロジー';

  @override
  String get campaignFashionTitle => 'ファッション';

  @override
  String get campaignFoodBeverageTitle => '飲食';

  @override
  String get campaignFinanceTitle => 'ファイナンス';

  @override
  String get campaignMemorialTitle => '追悼募金活動';

  @override
  String campaignRaisedOf(String target) {
    return '$targetのうち達成';
  }

  @override
  String get campaignEndOfList => 'キャンペーンはこれ以上ありません';

  @override
  String get searchTitle => '検索';

  @override
  String get searchHint => '何をお探しですか？';

  @override
  String get searchDiscoverTitle => '新しい発見';

  @override
  String get searchBrowseAllTitle => 'すべて見る';

  @override
  String settingsAccountDonationsRecurringValue(int count) {
    return '$count 件';
  }

  @override
  String get settingsAccountDonationsMatchedLabel => 'マッチング';

  @override
  String get settingsAccountDonationsFilterAll => 'すべて';

  @override
  String get settingsAccountDonationsFilterRecurring => '定期';

  @override
  String get settingsAccountDonationsFilterMatched => 'マッチング';

  @override
  String get settingsAccountDonationsExportButton => 'すべての領収書をエクスポート';

  @override
  String get settingsAccountDonationsExportingToast => '寄付履歴をエクスポートしています…';

  @override
  String get settingsAccountDonationsStatusRecurring => '定期';

  @override
  String get settingsAccountDonationsStatusMatched => 'マッチング';

  @override
  String get settingsAccountDonationsEmptyTitle => 'まだ寄付がありません';

  @override
  String get settingsAccountDonationsEmptySubtitle =>
      '大切なキャンペーンを支援して変化を起こしましょう。';

  @override
  String get settingsAccountDonationsEmptyButton => 'キャンペーンを探す';

  @override
  String get settingsHelpCenterTitle => 'ヘルプセンター';

  @override
  String get settingsHelpCenterSubtitle => 'サポートと安全に関するリソース';

  @override
  String get settingsHelpPrioritySemantics => '優先サポートのハイライト';

  @override
  String get settingsHelpPriorityTitle => '優先サポート';

  @override
  String get settingsHelpPrioritySubtitle => '認証済みキャンペイナーには通常2時間以内に返信します。';

  @override
  String get settingsHelpSupportOptionsTitle => 'サポートオプション';

  @override
  String get settingsHelpFaqTileTitle => 'よくある質問';

  @override
  String get settingsHelpFaqTileSubtitle => 'あなたに合わせた即時回答';

  @override
  String get settingsHelpEmailTitle => 'メールサポート';

  @override
  String get settingsHelpEmailSubtitle => 'support@velora.app';

  @override
  String get settingsHelpReportTitle => 'Report a problem';

  @override
  String get settingsHelpReportSubtitle => 'バグ、不正利用、ハラスメント';

  @override
  String get settingsHelpGuidesTitle => 'ガイド';

  @override
  String get settingsHelpCommunityGuidelinesTitle => 'コミュニティガイドライン';

  @override
  String get settingsHelpCommunityGuidelinesSubtitle => '2025年2月更新';

  @override
  String get settingsHelpSecurityChecklistTitle => 'セキュリティチェックリスト';

  @override
  String get settingsHelpSecurityChecklistSubtitle => 'アカウントをさらに安全に';

  @override
  String get settingsHelpReportSheetTitle => '問題を報告';

  @override
  String get settingsHelpReportHint => '何が起きたか説明してください…';

  @override
  String get settingsHelpReportThanks => 'ご報告ありがとうございます';

  @override
  String get settingsHelpReportSendButton => '送信';

  @override
  String get settingsHelpFaqTitle => 'FAQ';

  @override
  String get settingsHelpFaqSubtitle => '人気のサポートトピック';

  @override
  String get settingsHelpFaqQuestion1 => 'Veloraはどのようにキャンペーンを確認しますか?';

  @override
  String get settingsHelpFaqAnswer1 =>
      'すべてのキャンペーンは、受益者の確認、身分証明書、透明性マイルストーンを含む信頼チェックリストを通過します。';

  @override
  String get settingsHelpFaqQuestion2 => '寄付金額を非公開にできますか?';

  @override
  String get settingsHelpFaqAnswer2 => 'はい。寄付時に「匿名の金額」オプションを選ぶとアバターだけが表示されます。';

  @override
  String get settingsHelpFaqQuestion3 => 'アカウントへアクセスできなくなったら?';

  @override
  String get settingsHelpFaqAnswer3 =>
      'パスワードとセキュリティにあるリカバリーキットを使用し、信頼できる連絡先に事前承認を依頼できます。';

  @override
  String get settingsHelpFaqQuestion4 => '通知の管理方法は?';

  @override
  String get settingsHelpFaqAnswer4 =>
      '通知設定で、各キャンペーンタイプのプッシュ、メール、SMSを調整してください。';

  @override
  String get settingsHelpAboutTitle => 'Veloraについて';

  @override
  String get settingsHelpAboutSemantics => 'Veloraブランドの概要';

  @override
  String get settingsHelpAboutBrandName => 'Velora';

  @override
  String get settingsHelpAboutTagline => '思いやりを力に';

  @override
  String get settingsHelpAboutVersion => 'バージョン 1.0.0 (ビルド 1)';

  @override
  String get settingsHelpAboutWhyTitle => 'Veloraを選ぶ理由';

  @override
  String get settingsHelpAboutWhyDescription =>
      'Veloraは寛大な人々と意義ある活動を結ぶ社会的インパクトプラットフォームです。共に世界を優しくしましょう。';

  @override
  String get settingsHelpAboutStatCampaigns => '100万+ キャンペーン';

  @override
  String get settingsHelpAboutStatSupporters => '500万+ サポーター';

  @override
  String get settingsHelpAboutStatTrust => '信頼第一';

  @override
  String get settingsHelpAboutConnectTitle => 'お問い合わせ';

  @override
  String get settingsHelpAboutSocialWebsite => 'ウェブサイト';

  @override
  String get settingsHelpAboutSocialInstagram => 'Instagram';

  @override
  String get settingsHelpAboutSocialThreads => 'Threads';

  @override
  String get settingsHelpAboutSocialFacebook => 'Facebook';

  @override
  String get settingsHelpAboutLegalTitle => '法的情報';

  @override
  String get settingsHelpAboutDevTitle => '開発チーム';

  @override
  String get settingsHelpAboutDevOrgSubtitle => 'プロダクト・デザイン・エンジニアリング';

  @override
  String get settingsHelpAboutDevFounderSubtitle => '創業者 & リード開発者';

  @override
  String get settingsHelpAboutContactTitle => 'サポートへの連絡';

  @override
  String get settingsHelpAboutLiveChatTitle => 'ライブチャット';

  @override
  String get settingsHelpAboutLiveChatSubtitle => '9:00〜18:00 利用可能';

  @override
  String get settingsHelpAboutReportBugTitle => 'バグを報告';

  @override
  String get settingsHelpAboutReportBugSubtitle => 'Velora改善にご協力ください';

  @override
  String get settingsHelpAboutSuggestFeatureTitle => '機能を提案';

  @override
  String get settingsHelpAboutSuggestFeatureSubtitle => '製品アイデアを共有してください';

  @override
  String get settingsHelpAboutPrivacy => 'プライバシーポリシー';

  @override
  String get settingsHelpAboutTerms => '利用規約';

  @override
  String get settingsHelpAboutCookie => 'クッキーポリシー';

  @override
  String get settingsHelpAboutLicenses => 'オープンソースライセンス';

  @override
  String get settingsHelpAboutEnjoyTitle => 'Veloraが気に入りましたか?';

  @override
  String get settingsHelpAboutEnjoySubtitle => '評価して、Veloraを広めるお手伝いをしてください。';

  @override
  String get settingsHelpAboutRateButton => 'Velora を評価';

  @override
  String get settingsHelpAboutAcknowledgementsTitle => '謝辞';

  @override
  String get settingsHelpAboutAcknowledgementsThanks =>
      'Veloraを支えてくれた貢献者、ベータテスター、Flutterコミュニティに感謝します。';

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
  String get settingsHelpAboutFooterMadeWith => 'より良い世界のために ❤️ を込めて';

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
