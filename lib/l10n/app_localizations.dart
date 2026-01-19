import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_id.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('id'),
    Locale('ja'),
    Locale('ko'),
    Locale('zh')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Velora'**
  String get appTitle;

  /// No description provided for @authSignInFormLabel.
  ///
  /// In en, this message translates to:
  /// **'Sign in form'**
  String get authSignInFormLabel;

  /// No description provided for @authLogoLabel.
  ///
  /// In en, this message translates to:
  /// **'Velora logo'**
  String get authLogoLabel;

  /// No description provided for @authWelcomeBackTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome back'**
  String get authWelcomeBackTitle;

  /// No description provided for @authSignInSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to continue'**
  String get authSignInSubtitle;

  /// No description provided for @fieldEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get fieldEmailLabel;

  /// No description provided for @fieldEmailHint.
  ///
  /// In en, this message translates to:
  /// **'your@email.com'**
  String get fieldEmailHint;

  /// No description provided for @fieldPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get fieldPasswordLabel;

  /// No description provided for @authForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get authForgotPassword;

  /// No description provided for @authForgotPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Forgot password. Navigate to reset password screen'**
  String get authForgotPasswordHint;

  /// No description provided for @authSignInButton.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get authSignInButton;

  /// No description provided for @authDividerText.
  ///
  /// In en, this message translates to:
  /// **'or continue with'**
  String get authDividerText;

  /// No description provided for @authContinueWith.
  ///
  /// In en, this message translates to:
  /// **'Continue with {brand}'**
  String authContinueWith(String brand);

  /// No description provided for @authNoAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get authNoAccount;

  /// No description provided for @authSignUpLink.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get authSignUpLink;

  /// No description provided for @authAgreeTermsError.
  ///
  /// In en, this message translates to:
  /// **'Please agree to Terms & Privacy Policy'**
  String get authAgreeTermsError;

  /// No description provided for @authGoogleUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Google sign-in is not available yet.'**
  String get authGoogleUnavailable;

  /// No description provided for @authSignUpFormLabel.
  ///
  /// In en, this message translates to:
  /// **'Create account form'**
  String get authSignUpFormLabel;

  /// No description provided for @authCreateAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get authCreateAccountTitle;

  /// No description provided for @authJoinCommunitySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Join Velora community'**
  String get authJoinCommunitySubtitle;

  /// No description provided for @authAgreeTermsLabel.
  ///
  /// In en, this message translates to:
  /// **'Agree to Terms of Service and Privacy Policy'**
  String get authAgreeTermsLabel;

  /// No description provided for @authAgreeTermsPrefix.
  ///
  /// In en, this message translates to:
  /// **'I agree to '**
  String get authAgreeTermsPrefix;

  /// No description provided for @authTermsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get authTermsOfService;

  /// No description provided for @authAnd.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get authAnd;

  /// No description provided for @authPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get authPrivacyPolicy;

  /// No description provided for @authCreateAccountButton.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get authCreateAccountButton;

  /// No description provided for @authAlreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get authAlreadyHaveAccount;

  /// No description provided for @authSignInLink.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get authSignInLink;

  /// No description provided for @commonGoBack.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get commonGoBack;

  /// No description provided for @commonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// No description provided for @commonError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get commonError;

  /// No description provided for @commonRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get commonRetry;

  /// No description provided for @authResetPasswordFormLabel.
  ///
  /// In en, this message translates to:
  /// **'Reset password form'**
  String get authResetPasswordFormLabel;

  /// No description provided for @authEmailIllustrationLabel.
  ///
  /// In en, this message translates to:
  /// **'Email illustration'**
  String get authEmailIllustrationLabel;

  /// No description provided for @authResetPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get authResetPasswordTitle;

  /// No description provided for @authResetPasswordSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter your registered email and we\'ll send you a link to reset your password.'**
  String get authResetPasswordSubtitle;

  /// No description provided for @authSendResetLink.
  ///
  /// In en, this message translates to:
  /// **'Send reset link'**
  String get authSendResetLink;

  /// No description provided for @authRememberPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Remember password? Go back to sign in'**
  String get authRememberPasswordLabel;

  /// No description provided for @authRememberPasswordAction.
  ///
  /// In en, this message translates to:
  /// **'Remember password? Sign in'**
  String get authRememberPasswordAction;

  /// No description provided for @authResetEmailSentLabel.
  ///
  /// In en, this message translates to:
  /// **'Reset email sent'**
  String get authResetEmailSentLabel;

  /// No description provided for @authCheckEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Check your email'**
  String get authCheckEmailTitle;

  /// No description provided for @authBackToSignIn.
  ///
  /// In en, this message translates to:
  /// **'Back to Sign In'**
  String get authBackToSignIn;

  /// No description provided for @authEmailVerificationLabel.
  ///
  /// In en, this message translates to:
  /// **'Email verification instructions'**
  String get authEmailVerificationLabel;

  /// No description provided for @authAnimatedEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Animated email illustration'**
  String get authAnimatedEmailLabel;

  /// No description provided for @authVerificationInstructions.
  ///
  /// In en, this message translates to:
  /// **'We\'ve sent you a verification link. Please check your inbox and click the link to verify your account.'**
  String get authVerificationInstructions;

  /// No description provided for @authVerifiedCta.
  ///
  /// In en, this message translates to:
  /// **'I\'ve verified my email'**
  String get authVerifiedCta;

  /// No description provided for @authResendVerificationLabel.
  ///
  /// In en, this message translates to:
  /// **'Resend verification email'**
  String get authResendVerificationLabel;

  /// No description provided for @authVerificationEmailResent.
  ///
  /// In en, this message translates to:
  /// **'Verification email resent'**
  String get authVerificationEmailResent;

  /// No description provided for @authWrongEmail.
  ///
  /// In en, this message translates to:
  /// **'Wrong email? Sign out'**
  String get authWrongEmail;

  /// No description provided for @authSignOutHint.
  ///
  /// In en, this message translates to:
  /// **'Sign out and go back to sign in screen'**
  String get authSignOutHint;

  /// No description provided for @authPasswordStrengthWeak.
  ///
  /// In en, this message translates to:
  /// **'Weak'**
  String get authPasswordStrengthWeak;

  /// No description provided for @authPasswordStrengthStrong.
  ///
  /// In en, this message translates to:
  /// **'Strong'**
  String get authPasswordStrengthStrong;

  /// No description provided for @authPasswordStrengthMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get authPasswordStrengthMedium;

  /// No description provided for @authPasswordStrengthFair.
  ///
  /// In en, this message translates to:
  /// **'Fair'**
  String get authPasswordStrengthFair;

  /// No description provided for @authPasswordStrengthLabel.
  ///
  /// In en, this message translates to:
  /// **'Password Strength'**
  String get authPasswordStrengthLabel;

  /// No description provided for @authPasswordShow.
  ///
  /// In en, this message translates to:
  /// **'Show password'**
  String get authPasswordShow;

  /// No description provided for @authPasswordHide.
  ///
  /// In en, this message translates to:
  /// **'Hide password'**
  String get authPasswordHide;

  /// No description provided for @authPasswordRequirementsTitle.
  ///
  /// In en, this message translates to:
  /// **'Password must contain:'**
  String get authPasswordRequirementsTitle;

  /// No description provided for @authPasswordRequirementLength.
  ///
  /// In en, this message translates to:
  /// **'At least 8 characters'**
  String get authPasswordRequirementLength;

  /// No description provided for @authPasswordRequirementCase.
  ///
  /// In en, this message translates to:
  /// **'Uppercase & lowercase letters'**
  String get authPasswordRequirementCase;

  /// No description provided for @authPasswordRequirementNumber.
  ///
  /// In en, this message translates to:
  /// **'At least one number'**
  String get authPasswordRequirementNumber;

  /// No description provided for @authPasswordRequirementSpecial.
  ///
  /// In en, this message translates to:
  /// **'Special character (!@#\$%^&*)'**
  String get authPasswordRequirementSpecial;

  /// No description provided for @feedTitle.
  ///
  /// In en, this message translates to:
  /// **'Feed'**
  String get feedTitle;

  /// No description provided for @feedCreatePostTooltip.
  ///
  /// In en, this message translates to:
  /// **'Create post'**
  String get feedCreatePostTooltip;

  /// No description provided for @feedNotificationsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get feedNotificationsTooltip;

  /// No description provided for @feedErrorLoading.
  ///
  /// In en, this message translates to:
  /// **'Error loading feed'**
  String get feedErrorLoading;

  /// No description provided for @feedEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'No posts yet'**
  String get feedEmptyMessage;

  /// No description provided for @feedEmptySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Pull to refresh or check back later'**
  String get feedEmptySubtitle;

  /// No description provided for @feedEmptyHint.
  ///
  /// In en, this message translates to:
  /// **'{subtitle}. Double tap refresh button.'**
  String feedEmptyHint(String subtitle);

  /// No description provided for @feedRefreshButtonSemantic.
  ///
  /// In en, this message translates to:
  /// **'Refresh feed'**
  String get feedRefreshButtonSemantic;

  /// No description provided for @feedRefreshButton.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get feedRefreshButton;

  /// No description provided for @feedLoadingLabel.
  ///
  /// In en, this message translates to:
  /// **'Loading feed'**
  String get feedLoadingLabel;

  /// No description provided for @feedCommentsTitle.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get feedCommentsTitle;

  /// No description provided for @feedReplyingTo.
  ///
  /// In en, this message translates to:
  /// **'Replying to {name}'**
  String feedReplyingTo(String name);

  /// No description provided for @feedAddCommentHint.
  ///
  /// In en, this message translates to:
  /// **'Add a comment for {name}'**
  String feedAddCommentHint(String name);

  /// No description provided for @feedNoCommentsTitle.
  ///
  /// In en, this message translates to:
  /// **'No comments yet'**
  String get feedNoCommentsTitle;

  /// No description provided for @feedNoCommentsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Be the first to comment!'**
  String get feedNoCommentsSubtitle;

  /// No description provided for @feedReplyAction.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get feedReplyAction;

  /// No description provided for @feedDeleteAction.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get feedDeleteAction;

  /// No description provided for @feedSeeTranslation.
  ///
  /// In en, this message translates to:
  /// **'See translation'**
  String get feedSeeTranslation;

  /// No description provided for @feedSeeOriginal.
  ///
  /// In en, this message translates to:
  /// **'See original'**
  String get feedSeeOriginal;

  /// No description provided for @feedTranslating.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get feedTranslating;

  /// No description provided for @feedCommentAsUser.
  ///
  /// In en, this message translates to:
  /// **'Comment as {username}'**
  String feedCommentAsUser(String username);

  /// No description provided for @feedViewReplies.
  ///
  /// In en, this message translates to:
  /// **'View {count, plural, one{{count} reply} other{{count} replies}}'**
  String feedViewReplies(int count);

  /// No description provided for @feedHideReplies.
  ///
  /// In en, this message translates to:
  /// **'Hide replies'**
  String get feedHideReplies;

  /// No description provided for @feedUnknownUser.
  ///
  /// In en, this message translates to:
  /// **'Unknown user'**
  String get feedUnknownUser;

  /// No description provided for @feedPostSummaryFallback.
  ///
  /// In en, this message translates to:
  /// **'post'**
  String get feedPostSummaryFallback;

  /// No description provided for @feedPostSemantics.
  ///
  /// In en, this message translates to:
  /// **'{author} posted {summary} {time}'**
  String feedPostSemantics(String author, String summary, String time);

  /// No description provided for @feedOpenPostHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to open post details'**
  String get feedOpenPostHint;

  /// No description provided for @feedPostImageLabel.
  ///
  /// In en, this message translates to:
  /// **'Post image'**
  String get feedPostImageLabel;

  /// No description provided for @feedPostImagePositionLabel.
  ///
  /// In en, this message translates to:
  /// **'Post image {index} of {total}'**
  String feedPostImagePositionLabel(int index, int total);

  /// No description provided for @feedCampaignFallback.
  ///
  /// In en, this message translates to:
  /// **'Campaign'**
  String get feedCampaignFallback;

  /// No description provided for @feedOpenCampaignLabel.
  ///
  /// In en, this message translates to:
  /// **'Open campaign {title}'**
  String feedOpenCampaignLabel(String title);

  /// No description provided for @feedLikeLabel.
  ///
  /// In en, this message translates to:
  /// **'Like post'**
  String get feedLikeLabel;

  /// No description provided for @feedUnlikeLabel.
  ///
  /// In en, this message translates to:
  /// **'Unlike post'**
  String get feedUnlikeLabel;

  /// No description provided for @feedLikeHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to like this post'**
  String get feedLikeHint;

  /// No description provided for @feedUnlikeHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to remove your like'**
  String get feedUnlikeHint;

  /// No description provided for @feedViewCommentsLabel.
  ///
  /// In en, this message translates to:
  /// **'View comments'**
  String get feedViewCommentsLabel;

  /// No description provided for @feedViewCommentsHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to open comments'**
  String get feedViewCommentsHint;

  /// No description provided for @feedShareComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Share feature coming soon'**
  String get feedShareComingSoon;

  /// No description provided for @feedShareLabel.
  ///
  /// In en, this message translates to:
  /// **'Share post'**
  String get feedShareLabel;

  /// No description provided for @feedShareHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to share'**
  String get feedShareHint;

  /// No description provided for @feedRemoveBookmarkLabel.
  ///
  /// In en, this message translates to:
  /// **'Remove bookmark'**
  String get feedRemoveBookmarkLabel;

  /// No description provided for @feedAddBookmarkLabel.
  ///
  /// In en, this message translates to:
  /// **'Bookmark this post'**
  String get feedAddBookmarkLabel;

  /// No description provided for @timeAgoNow.
  ///
  /// In en, this message translates to:
  /// **'now'**
  String get timeAgoNow;

  /// No description provided for @timeAgoMinutes.
  ///
  /// In en, this message translates to:
  /// **'{count}m'**
  String timeAgoMinutes(int count);

  /// No description provided for @timeAgoHours.
  ///
  /// In en, this message translates to:
  /// **'{count}h'**
  String timeAgoHours(int count);

  /// No description provided for @timeAgoDays.
  ///
  /// In en, this message translates to:
  /// **'{count}d'**
  String timeAgoDays(int count);

  /// No description provided for @timeAgoMonths.
  ///
  /// In en, this message translates to:
  /// **'{count}mo'**
  String timeAgoMonths(int count);

  /// No description provided for @timeAgoYears.
  ///
  /// In en, this message translates to:
  /// **'{count}y'**
  String timeAgoYears(int count);

  /// No description provided for @countThousands.
  ///
  /// In en, this message translates to:
  /// **'{value}K'**
  String countThousands(String value);

  /// No description provided for @countMillions.
  ///
  /// In en, this message translates to:
  /// **'{value}M'**
  String countMillions(String value);

  /// No description provided for @settingsAccountsCenterTitle.
  ///
  /// In en, this message translates to:
  /// **'Accounts Center'**
  String get settingsAccountsCenterTitle;

  /// No description provided for @settingsAccountsCenterSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage connected experiences, identity, and privacy'**
  String get settingsAccountsCenterSubtitle;

  /// No description provided for @settingsSearchTooltip.
  ///
  /// In en, this message translates to:
  /// **'Search settings'**
  String get settingsSearchTooltip;

  /// No description provided for @settingsConnectedTitle.
  ///
  /// In en, this message translates to:
  /// **'Connected experiences'**
  String get settingsConnectedTitle;

  /// No description provided for @settingsConnectedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Control how your Velora identity works across platforms.'**
  String get settingsConnectedSubtitle;

  /// No description provided for @settingsTileProfilesTitle.
  ///
  /// In en, this message translates to:
  /// **'Profiles'**
  String get settingsTileProfilesTitle;

  /// No description provided for @settingsTileProfilesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Vito • Velora, Forum, Community'**
  String get settingsTileProfilesSubtitle;

  /// No description provided for @settingsTileSharingTitle.
  ///
  /// In en, this message translates to:
  /// **'Sharing across profiles'**
  String get settingsTileSharingTitle;

  /// No description provided for @settingsTileSharingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose what gets synced automatically'**
  String get settingsTileSharingSubtitle;

  /// No description provided for @settingsTileActivityTitle.
  ///
  /// In en, this message translates to:
  /// **'Activity history'**
  String get settingsTileActivityTitle;

  /// No description provided for @settingsTileActivitySubtitle.
  ///
  /// In en, this message translates to:
  /// **'View your recent activities and interactions'**
  String get settingsTileActivitySubtitle;

  /// No description provided for @settingsTileLoggingTitle.
  ///
  /// In en, this message translates to:
  /// **'Logging in with accounts'**
  String get settingsTileLoggingTitle;

  /// No description provided for @settingsTileLoggingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Review devices and login approvals'**
  String get settingsTileLoggingSubtitle;

  /// No description provided for @settingsTileAccountStatusTitle.
  ///
  /// In en, this message translates to:
  /// **'Account Status'**
  String get settingsTileAccountStatusTitle;

  /// No description provided for @settingsTileAccountStatusSubtitle.
  ///
  /// In en, this message translates to:
  /// **'View verification status and account activity'**
  String get settingsTileAccountStatusSubtitle;

  /// No description provided for @settingsAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Account settings'**
  String get settingsAccountTitle;

  /// No description provided for @settingsTilePasswordSecurityTitle.
  ///
  /// In en, this message translates to:
  /// **'Password and security'**
  String get settingsTilePasswordSecurityTitle;

  /// No description provided for @settingsTilePasswordSecuritySubtitle.
  ///
  /// In en, this message translates to:
  /// **'2FA, trusted devices, security alerts'**
  String get settingsTilePasswordSecuritySubtitle;

  /// No description provided for @settingsTilePersonalDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Personal details'**
  String get settingsTilePersonalDetailsTitle;

  /// No description provided for @settingsTilePersonalDetailsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Name, username, profile links'**
  String get settingsTilePersonalDetailsSubtitle;

  /// No description provided for @settingsTileInfoPermissionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Your information & permissions'**
  String get settingsTileInfoPermissionsTitle;

  /// No description provided for @settingsTileInfoPermissionsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Data download, permissions, audience'**
  String get settingsTileInfoPermissionsSubtitle;

  /// No description provided for @settingsTileAdPreferencesTitle.
  ///
  /// In en, this message translates to:
  /// **'Ad preferences'**
  String get settingsTileAdPreferencesTitle;

  /// No description provided for @settingsTileAdPreferencesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Topics you see more often'**
  String get settingsTileAdPreferencesSubtitle;

  /// No description provided for @settingsTileVeloraPayTitle.
  ///
  /// In en, this message translates to:
  /// **'Velora Pay'**
  String get settingsTileVeloraPayTitle;

  /// No description provided for @settingsTileVeloraPaySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Payment methods and protections'**
  String get settingsTileVeloraPaySubtitle;

  /// No description provided for @settingsWalletTitle.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get settingsWalletTitle;

  /// No description provided for @walletDashboardTitle.
  ///
  /// In en, this message translates to:
  /// **'Wallet Dashboard'**
  String get walletDashboardTitle;

  /// No description provided for @walletDashboardWalletId.
  ///
  /// In en, this message translates to:
  /// **'Wallet ID: #VLR2024001'**
  String get walletDashboardWalletId;

  /// No description provided for @walletDashboardTotalBalance.
  ///
  /// In en, this message translates to:
  /// **'Total Balance'**
  String get walletDashboardTotalBalance;

  /// No description provided for @walletDashboardQuickActions.
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get walletDashboardQuickActions;

  /// No description provided for @walletDashboardDonationHistory.
  ///
  /// In en, this message translates to:
  /// **'Donation History'**
  String get walletDashboardDonationHistory;

  /// No description provided for @walletDashboardDonationHistorySubtitle.
  ///
  /// In en, this message translates to:
  /// **'View all your donation transactions'**
  String get walletDashboardDonationHistorySubtitle;

  /// No description provided for @walletDashboardMyCampaigns.
  ///
  /// In en, this message translates to:
  /// **'My Campaigns'**
  String get walletDashboardMyCampaigns;

  /// No description provided for @walletDashboardMyCampaignsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage your fundraising campaigns'**
  String get walletDashboardMyCampaignsSubtitle;

  /// No description provided for @walletDashboardMyDonations.
  ///
  /// In en, this message translates to:
  /// **'My Donations'**
  String get walletDashboardMyDonations;

  /// No description provided for @walletDashboardMyDonationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Track your contributions'**
  String get walletDashboardMyDonationsSubtitle;

  /// No description provided for @walletDashboardAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Analytics'**
  String get walletDashboardAnalytics;

  /// No description provided for @walletDashboardAnalyticsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'View insights and statistics'**
  String get walletDashboardAnalyticsSubtitle;

  /// No description provided for @walletDashboardRecentActivity.
  ///
  /// In en, this message translates to:
  /// **'Recent Activity'**
  String get walletDashboardRecentActivity;

  /// No description provided for @walletDashboardNoActivity.
  ///
  /// In en, this message translates to:
  /// **'No activity yet'**
  String get walletDashboardNoActivity;

  /// No description provided for @walletDashboardNoActivitySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your wallet transactions will appear here'**
  String get walletDashboardNoActivitySubtitle;

  /// No description provided for @walletDashboardUnderDevelopmentTitle.
  ///
  /// In en, this message translates to:
  /// **'Under Development'**
  String get walletDashboardUnderDevelopmentTitle;

  /// No description provided for @walletDashboardUnderDevelopmentMessage.
  ///
  /// In en, this message translates to:
  /// **'This feature is currently under development and will be available soon.'**
  String get walletDashboardUnderDevelopmentMessage;

  /// No description provided for @walletDashboardUnderDevelopmentButton.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get walletDashboardUnderDevelopmentButton;

  /// No description provided for @settingsPersonalizationTitle.
  ///
  /// In en, this message translates to:
  /// **'Personalization'**
  String get settingsPersonalizationTitle;

  /// No description provided for @settingsTileNotificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsTileNotificationsTitle;

  /// No description provided for @settingsTileNotificationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Push, email, and SMS preferences'**
  String get settingsTileNotificationsSubtitle;

  /// No description provided for @settingsTileThemeTitle.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsTileThemeTitle;

  /// No description provided for @settingsTileThemeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'App appearance, dark mode, contrast'**
  String get settingsTileThemeSubtitle;

  /// No description provided for @settingsTileLanguageTitle.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsTileLanguageTitle;

  /// No description provided for @settingsTileLanguageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose the language Velora uses'**
  String get settingsTileLanguageSubtitle;

  /// No description provided for @settingsTileAccessibilityTitle.
  ///
  /// In en, this message translates to:
  /// **'Accessibility'**
  String get settingsTileAccessibilityTitle;

  /// No description provided for @settingsTileAccessibilitySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Font, contrast, captions'**
  String get settingsTileAccessibilitySubtitle;

  /// No description provided for @settingsHelpTitle.
  ///
  /// In en, this message translates to:
  /// **'Help & resources'**
  String get settingsHelpTitle;

  /// No description provided for @settingsTileHelpCenterTitle.
  ///
  /// In en, this message translates to:
  /// **'Help center'**
  String get settingsTileHelpCenterTitle;

  /// No description provided for @settingsTileHelpCenterSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Guides, tutorials, and quick answers'**
  String get settingsTileHelpCenterSubtitle;

  /// No description provided for @settingsTileFaqTitle.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get settingsTileFaqTitle;

  /// No description provided for @settingsTileFaqSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Most asked topics in one place'**
  String get settingsTileFaqSubtitle;

  /// No description provided for @settingsTileAboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About Velora'**
  String get settingsTileAboutTitle;

  /// No description provided for @settingsTileAboutSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Version, licenses, and acknowledgements'**
  String get settingsTileAboutSubtitle;

  /// No description provided for @settingsHeroSemanticsLabel.
  ///
  /// In en, this message translates to:
  /// **'Meta ID profile summary and security status'**
  String get settingsHeroSemanticsLabel;

  /// No description provided for @settingsHeroMetaId.
  ///
  /// In en, this message translates to:
  /// **'Meta ID'**
  String get settingsHeroMetaId;

  /// No description provided for @settingsHeroLearnMore.
  ///
  /// In en, this message translates to:
  /// **'Learn more'**
  String get settingsHeroLearnMore;

  /// No description provided for @settingsHeroNetworks.
  ///
  /// In en, this message translates to:
  /// **'Facebook • Instagram • Velora'**
  String get settingsHeroNetworks;

  /// No description provided for @settingsHeroSwitchButton.
  ///
  /// In en, this message translates to:
  /// **'Switch'**
  String get settingsHeroSwitchButton;

  /// No description provided for @settingsHeroPasswordUpdated.
  ///
  /// In en, this message translates to:
  /// **'Password updated 2 days ago'**
  String get settingsHeroPasswordUpdated;

  /// No description provided for @settingsHeroPasswordSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Keep your account secure with alerts & approvals.'**
  String get settingsHeroPasswordSubtitle;

  /// No description provided for @settingsHeroReviewButton.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get settingsHeroReviewButton;

  /// No description provided for @settingsHeroAccountType.
  ///
  /// In en, this message translates to:
  /// **'Personal Account'**
  String get settingsHeroAccountType;

  /// No description provided for @settingsHeroAccountTypeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap to view account type details'**
  String get settingsHeroAccountTypeSubtitle;

  /// No description provided for @accountTypeScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Account Type'**
  String get accountTypeScreenTitle;

  /// No description provided for @accountTypeScreenCurrentType.
  ///
  /// In en, this message translates to:
  /// **'Current Account Type'**
  String get accountTypeScreenCurrentType;

  /// No description provided for @accountTypeScreenPersonal.
  ///
  /// In en, this message translates to:
  /// **'Personal Account'**
  String get accountTypeScreenPersonal;

  /// No description provided for @accountTypeScreenPersonalDescription.
  ///
  /// In en, this message translates to:
  /// **'Perfect for individual users who want to connect with friends and family.'**
  String get accountTypeScreenPersonalDescription;

  /// No description provided for @accountTypeScreenPersonalBenefitsTitle.
  ///
  /// In en, this message translates to:
  /// **'Personal Account Benefits'**
  String get accountTypeScreenPersonalBenefitsTitle;

  /// No description provided for @accountTypeScreenBenefit1Title.
  ///
  /// In en, this message translates to:
  /// **'Personal Profile'**
  String get accountTypeScreenBenefit1Title;

  /// No description provided for @accountTypeScreenBenefit1Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Maintain your personal identity and privacy'**
  String get accountTypeScreenBenefit1Subtitle;

  /// No description provided for @accountTypeScreenBenefit2Title.
  ///
  /// In en, this message translates to:
  /// **'Privacy Controls'**
  String get accountTypeScreenBenefit2Title;

  /// No description provided for @accountTypeScreenBenefit2Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Full control over your personal data'**
  String get accountTypeScreenBenefit2Subtitle;

  /// No description provided for @accountTypeScreenBenefit3Title.
  ///
  /// In en, this message translates to:
  /// **'Social Connection'**
  String get accountTypeScreenBenefit3Title;

  /// No description provided for @accountTypeScreenBenefit3Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Connect with friends and family easily'**
  String get accountTypeScreenBenefit3Subtitle;

  /// No description provided for @accountTypeScreenOrganization.
  ///
  /// In en, this message translates to:
  /// **'Organization Account'**
  String get accountTypeScreenOrganization;

  /// No description provided for @accountTypeScreenOrganizationDescription.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to organization account to access advanced business features and verification.'**
  String get accountTypeScreenOrganizationDescription;

  /// No description provided for @accountTypeScreenOrganizationBenefitsTitle.
  ///
  /// In en, this message translates to:
  /// **'Organization Benefits:'**
  String get accountTypeScreenOrganizationBenefitsTitle;

  /// No description provided for @accountTypeScreenOrgBenefit1.
  ///
  /// In en, this message translates to:
  /// **'Verified badge for authenticity'**
  String get accountTypeScreenOrgBenefit1;

  /// No description provided for @accountTypeScreenOrgBenefit2.
  ///
  /// In en, this message translates to:
  /// **'Advanced analytics and insights'**
  String get accountTypeScreenOrgBenefit2;

  /// No description provided for @accountTypeScreenOrgBenefit3.
  ///
  /// In en, this message translates to:
  /// **'Promotional tools and campaigns'**
  String get accountTypeScreenOrgBenefit3;

  /// No description provided for @accountTypeScreenOrgBenefit4.
  ///
  /// In en, this message translates to:
  /// **'Team collaboration features'**
  String get accountTypeScreenOrgBenefit4;

  /// No description provided for @accountTypeScreenUpgradeButton.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Organization'**
  String get accountTypeScreenUpgradeButton;

  /// No description provided for @accountTypeScreenVerificationTitle.
  ///
  /// In en, this message translates to:
  /// **'Account Verification'**
  String get accountTypeScreenVerificationTitle;

  /// No description provided for @accountTypeScreenVerificationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'To upgrade to organization account, please complete the verification process.'**
  String get accountTypeScreenVerificationSubtitle;

  /// No description provided for @accountTypeScreenVerificationStep1.
  ///
  /// In en, this message translates to:
  /// **'ID Card Photo'**
  String get accountTypeScreenVerificationStep1;

  /// No description provided for @accountTypeScreenVerificationStep1Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Take a clear photo of your ID card (KTP)'**
  String get accountTypeScreenVerificationStep1Subtitle;

  /// No description provided for @accountTypeScreenVerificationStep2.
  ///
  /// In en, this message translates to:
  /// **'Selfie Photo'**
  String get accountTypeScreenVerificationStep2;

  /// No description provided for @accountTypeScreenVerificationStep2Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Take a selfie holding your ID card'**
  String get accountTypeScreenVerificationStep2Subtitle;

  /// No description provided for @accountTypeScreenVerificationSubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit Verification'**
  String get accountTypeScreenVerificationSubmit;

  /// No description provided for @accountTypeScreenVerificationCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get accountTypeScreenVerificationCancel;

  /// No description provided for @accountTypeScreenVerificationSuccess.
  ///
  /// In en, this message translates to:
  /// **'Verification submitted successfully! We\'ll review your request within 1-3 business days.'**
  String get accountTypeScreenVerificationSuccess;

  /// No description provided for @settingsSearchProfiles.
  ///
  /// In en, this message translates to:
  /// **'Profiles'**
  String get settingsSearchProfiles;

  /// No description provided for @settingsSearchPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get settingsSearchPassword;

  /// No description provided for @settingsSearchSecurity.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get settingsSearchSecurity;

  /// No description provided for @settingsSearchNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsSearchNotifications;

  /// No description provided for @settingsSearchPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get settingsSearchPrivacy;

  /// No description provided for @settingsSearchLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsSearchLanguage;

  /// No description provided for @settingsSearchTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsSearchTheme;

  /// No description provided for @settingsSearchHelp.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get settingsSearchHelp;

  /// No description provided for @settingsSearchPayments.
  ///
  /// In en, this message translates to:
  /// **'Payments'**
  String get settingsSearchPayments;

  /// No description provided for @settingsProfileTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get settingsProfileTitle;

  /// No description provided for @settingsProfileSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Update what people can see on Velora'**
  String get settingsProfileSubtitle;

  /// No description provided for @settingsProfilePhotoLabelCover.
  ///
  /// In en, this message translates to:
  /// **'cover photo'**
  String get settingsProfilePhotoLabelCover;

  /// No description provided for @settingsProfilePhotoLabelProfile.
  ///
  /// In en, this message translates to:
  /// **'profile photo'**
  String get settingsProfilePhotoLabelProfile;

  /// No description provided for @settingsProfilePhotoActionTake.
  ///
  /// In en, this message translates to:
  /// **'Take photo'**
  String get settingsProfilePhotoActionTake;

  /// No description provided for @settingsProfilePhotoActionGallery.
  ///
  /// In en, this message translates to:
  /// **'Choose from gallery'**
  String get settingsProfilePhotoActionGallery;

  /// No description provided for @settingsProfilePhotoActionRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove photo'**
  String get settingsProfilePhotoActionRemove;

  /// No description provided for @settingsProfilePhotoActionCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get settingsProfilePhotoActionCancel;

  /// No description provided for @settingsProfilePhotoToastCamera.
  ///
  /// In en, this message translates to:
  /// **'Opening camera for {target}...'**
  String settingsProfilePhotoToastCamera(String target);

  /// No description provided for @settingsProfilePhotoToastGallery.
  ///
  /// In en, this message translates to:
  /// **'Opening gallery for {target}...'**
  String settingsProfilePhotoToastGallery(String target);

  /// No description provided for @settingsProfileFieldUpdated.
  ///
  /// In en, this message translates to:
  /// **'{field} updated'**
  String settingsProfileFieldUpdated(String field);

  /// No description provided for @settingsProfileInfoSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile info'**
  String get settingsProfileInfoSectionTitle;

  /// No description provided for @settingsProfileFieldName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get settingsProfileFieldName;

  /// No description provided for @settingsProfileFieldNameHelper.
  ///
  /// In en, this message translates to:
  /// **'You can only change your name twice within 14 days.'**
  String get settingsProfileFieldNameHelper;

  /// No description provided for @settingsProfileFieldUsername.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get settingsProfileFieldUsername;

  /// No description provided for @settingsProfileFieldUsernameHelper.
  ///
  /// In en, this message translates to:
  /// **'Pick a unique username. People can find you with @username.'**
  String get settingsProfileFieldUsernameHelper;

  /// No description provided for @settingsProfileFieldBio.
  ///
  /// In en, this message translates to:
  /// **'Bio'**
  String get settingsProfileFieldBio;

  /// No description provided for @settingsProfileFieldBioHelper.
  ///
  /// In en, this message translates to:
  /// **'Share a short description. Keep it under 150 characters.'**
  String get settingsProfileFieldBioHelper;

  /// No description provided for @settingsProfileFieldWebsite.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get settingsProfileFieldWebsite;

  /// No description provided for @settingsProfileFieldWebsiteHelper.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid URL people can tap from your bio.'**
  String get settingsProfileFieldWebsiteHelper;

  /// No description provided for @settingsProfileInfoSyncTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile info syncing is no longer available'**
  String get settingsProfileInfoSyncTitle;

  /// No description provided for @settingsProfileInfoSyncDescription.
  ///
  /// In en, this message translates to:
  /// **'Your name and username will no longer sync across apps. Manage synced profile pictures through Connected experiences.'**
  String get settingsProfileInfoSyncDescription;

  /// No description provided for @settingsProfileAccountSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get settingsProfileAccountSectionTitle;

  /// No description provided for @settingsProfileAccountTypeTitle.
  ///
  /// In en, this message translates to:
  /// **'Account type'**
  String get settingsProfileAccountTypeTitle;

  /// No description provided for @settingsProfileAccountTypeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose how you use Velora'**
  String get settingsProfileAccountTypeSubtitle;

  /// No description provided for @settingsProfileAccountTypePersonal.
  ///
  /// In en, this message translates to:
  /// **'Personal'**
  String get settingsProfileAccountTypePersonal;

  /// No description provided for @settingsProfileAccountTypeOrganization.
  ///
  /// In en, this message translates to:
  /// **'Organization'**
  String get settingsProfileAccountTypeOrganization;

  /// No description provided for @settingsProfileAccountTypePersonalDescription.
  ///
  /// In en, this message translates to:
  /// **'Personal accounts are for individual supporters.'**
  String get settingsProfileAccountTypePersonalDescription;

  /// No description provided for @settingsProfileAccountTypeOrganizationDescription.
  ///
  /// In en, this message translates to:
  /// **'Organization accounts unlock verifications and analytics.'**
  String get settingsProfileAccountTypeOrganizationDescription;

  /// No description provided for @settingsProfileConnectedTitle.
  ///
  /// In en, this message translates to:
  /// **'Connected accounts'**
  String get settingsProfileConnectedTitle;

  /// No description provided for @settingsProfileConnectedNotConnected.
  ///
  /// In en, this message translates to:
  /// **'Not connected'**
  String get settingsProfileConnectedNotConnected;

  /// No description provided for @settingsProfileConnectedDisconnect.
  ///
  /// In en, this message translates to:
  /// **'Disconnect'**
  String get settingsProfileConnectedDisconnect;

  /// No description provided for @settingsProfileConnectedConnect.
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get settingsProfileConnectedConnect;

  /// No description provided for @settingsProfileCrossTitle.
  ///
  /// In en, this message translates to:
  /// **'Cross-platform'**
  String get settingsProfileCrossTitle;

  /// No description provided for @settingsProfileCrossSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Control how Velora syncs to other networks'**
  String get settingsProfileCrossSubtitle;

  /// No description provided for @settingsProfileCrossAutoShareTitle.
  ///
  /// In en, this message translates to:
  /// **'Auto-share posts'**
  String get settingsProfileCrossAutoShareTitle;

  /// No description provided for @settingsProfileCrossAutoShareSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Share to connected accounts'**
  String get settingsProfileCrossAutoShareSubtitle;

  /// No description provided for @settingsProfileCrossSyncNotificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Sync notifications'**
  String get settingsProfileCrossSyncNotificationsTitle;

  /// No description provided for @settingsProfileCrossSyncNotificationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Get notified across platforms'**
  String get settingsProfileCrossSyncNotificationsSubtitle;

  /// No description provided for @settingsProfileCrossFindFriendsTitle.
  ///
  /// In en, this message translates to:
  /// **'Find friends'**
  String get settingsProfileCrossFindFriendsTitle;

  /// No description provided for @settingsProfileCrossFindFriendsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Match people from other networks'**
  String get settingsProfileCrossFindFriendsSubtitle;

  /// No description provided for @settingsProfileEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get settingsProfileEditTitle;

  /// No description provided for @settingsProfileEditSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Update your personal information'**
  String get settingsProfileEditSubtitle;

  /// No description provided for @settingsProfileEditTabName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get settingsProfileEditTabName;

  /// No description provided for @settingsProfileEditTabBio.
  ///
  /// In en, this message translates to:
  /// **'Bio & Details'**
  String get settingsProfileEditTabBio;

  /// No description provided for @settingsProfileEditUsedProfiles.
  ///
  /// In en, this message translates to:
  /// **'Used for 2 profiles'**
  String get settingsProfileEditUsedProfiles;

  /// No description provided for @settingsProfileEditFirstName.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get settingsProfileEditFirstName;

  /// No description provided for @settingsProfileEditMiddleName.
  ///
  /// In en, this message translates to:
  /// **'Middle name'**
  String get settingsProfileEditMiddleName;

  /// No description provided for @settingsProfileEditLastName.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get settingsProfileEditLastName;

  /// No description provided for @settingsProfileEditRequiredField.
  ///
  /// In en, this message translates to:
  /// **'Required field'**
  String get settingsProfileEditRequiredField;

  /// No description provided for @settingsProfileEditApplyTo.
  ///
  /// In en, this message translates to:
  /// **'Apply to'**
  String get settingsProfileEditApplyTo;

  /// No description provided for @settingsProfileEditApplyAllProfiles.
  ///
  /// In en, this message translates to:
  /// **'All profiles'**
  String get settingsProfileEditApplyAllProfiles;

  /// No description provided for @settingsProfileEditApplyFacebook.
  ///
  /// In en, this message translates to:
  /// **'Facebook only'**
  String get settingsProfileEditApplyFacebook;

  /// No description provided for @settingsProfileEditApplyInstagram.
  ///
  /// In en, this message translates to:
  /// **'Instagram only'**
  String get settingsProfileEditApplyInstagram;

  /// No description provided for @settingsProfileEditNameChangeInfo.
  ///
  /// In en, this message translates to:
  /// **'If you change your name, you can\'t change it again for 60 days. Use your authentic name so friends know it\'s you.'**
  String get settingsProfileEditNameChangeInfo;

  /// No description provided for @settingsProfileEditOtherNamesTitle.
  ///
  /// In en, this message translates to:
  /// **'Other names'**
  String get settingsProfileEditOtherNamesTitle;

  /// No description provided for @settingsProfileEditOtherNamesDescription.
  ///
  /// In en, this message translates to:
  /// **'Other names are always public and help people find you on Velora.'**
  String get settingsProfileEditOtherNamesDescription;

  /// No description provided for @settingsProfileEditOtherNamesManage.
  ///
  /// In en, this message translates to:
  /// **'Manage other names'**
  String get settingsProfileEditOtherNamesManage;

  /// No description provided for @settingsProfileEditReviewSchedule.
  ///
  /// In en, this message translates to:
  /// **'Schedule review'**
  String get settingsProfileEditReviewSchedule;

  /// No description provided for @settingsProfileEditReviewScheduled.
  ///
  /// In en, this message translates to:
  /// **'Review on {date}'**
  String settingsProfileEditReviewScheduled(String date);

  /// No description provided for @settingsProfileEditReviewChange.
  ///
  /// In en, this message translates to:
  /// **'Review change'**
  String get settingsProfileEditReviewChange;

  /// No description provided for @settingsProfileEditNameSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Name information sent for review'**
  String get settingsProfileEditNameSubmitted;

  /// No description provided for @settingsProfileEditIdentitySection.
  ///
  /// In en, this message translates to:
  /// **'Identity'**
  String get settingsProfileEditIdentitySection;

  /// No description provided for @settingsProfileEditContactSection.
  ///
  /// In en, this message translates to:
  /// **'Contact preferences'**
  String get settingsProfileEditContactSection;

  /// No description provided for @settingsProfileEditContactEveryone.
  ///
  /// In en, this message translates to:
  /// **'Everyone'**
  String get settingsProfileEditContactEveryone;

  /// No description provided for @settingsProfileEditContactFollowers.
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get settingsProfileEditContactFollowers;

  /// No description provided for @settingsProfileEditContactNoOne.
  ///
  /// In en, this message translates to:
  /// **'No one'**
  String get settingsProfileEditContactNoOne;

  /// No description provided for @settingsProfileEditShowProfileInfo.
  ///
  /// In en, this message translates to:
  /// **'Show profile info on donations'**
  String get settingsProfileEditShowProfileInfo;

  /// No description provided for @settingsProfileEditDisplayFollowerCount.
  ///
  /// In en, this message translates to:
  /// **'Display follower count'**
  String get settingsProfileEditDisplayFollowerCount;

  /// No description provided for @settingsProfileEditProfileUpdated.
  ///
  /// In en, this message translates to:
  /// **'Profile updated'**
  String get settingsProfileEditProfileUpdated;

  /// No description provided for @settingsProfileEditSaveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get settingsProfileEditSaveChanges;

  /// No description provided for @settingsProfileEditPronounsLabel.
  ///
  /// In en, this message translates to:
  /// **'Pronouns'**
  String get settingsProfileEditPronounsLabel;

  /// No description provided for @settingsProfileFieldSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get settingsProfileFieldSave;

  /// No description provided for @settingsProfileFieldEditFallbackTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit field'**
  String get settingsProfileFieldEditFallbackTitle;

  /// No description provided for @settingsProfileFieldEditFallbackLabel.
  ///
  /// In en, this message translates to:
  /// **'Field'**
  String get settingsProfileFieldEditFallbackLabel;

  /// No description provided for @settingsSecurityPasswordSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get settingsSecurityPasswordSectionTitle;

  /// No description provided for @settingsSecurityPasswordChange.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get settingsSecurityPasswordChange;

  /// No description provided for @settingsSecurityPasswordLastChanged.
  ///
  /// In en, this message translates to:
  /// **'Last changed 2 months ago'**
  String get settingsSecurityPasswordLastChanged;

  /// No description provided for @settingsSecurityPasswordToast.
  ///
  /// In en, this message translates to:
  /// **'Change password feature coming soon'**
  String get settingsSecurityPasswordToast;

  /// No description provided for @settingsSecurityTwoFactorSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Two-factor authentication'**
  String get settingsSecurityTwoFactorSectionTitle;

  /// No description provided for @settingsSecurityTwoFactorTitle.
  ///
  /// In en, this message translates to:
  /// **'Two-factor authentication'**
  String get settingsSecurityTwoFactorTitle;

  /// No description provided for @settingsSecurityTwoFactorSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Require a security code in addition to your password'**
  String get settingsSecurityTwoFactorSubtitle;

  /// No description provided for @settingsSecurityTwoFactorMethods.
  ///
  /// In en, this message translates to:
  /// **'Authenticator app (Google Authenticator, Authy)\nSMS to +62 812-XXXX-5678'**
  String get settingsSecurityTwoFactorMethods;

  /// No description provided for @settingsSecurityBiometricSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Biometric security'**
  String get settingsSecurityBiometricSectionTitle;

  /// No description provided for @settingsSecurityBiometricTitle.
  ///
  /// In en, this message translates to:
  /// **'Biometric unlock'**
  String get settingsSecurityBiometricTitle;

  /// No description provided for @settingsSecurityBiometricSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Use fingerprint or face recognition'**
  String get settingsSecurityBiometricSubtitle;

  /// No description provided for @settingsSecurityLoginActivityTitle.
  ///
  /// In en, this message translates to:
  /// **'Login activity'**
  String get settingsSecurityLoginActivityTitle;

  /// No description provided for @settingsSecurityLoginActivityEntry.
  ///
  /// In en, this message translates to:
  /// **'Today at {time}'**
  String settingsSecurityLoginActivityEntry(String time);

  /// No description provided for @settingsSecurityLoginActivityLocation.
  ///
  /// In en, this message translates to:
  /// **'Jakarta, Indonesia • Android'**
  String get settingsSecurityLoginActivityLocation;

  /// No description provided for @settingsSecuritySessionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Active device sessions'**
  String get settingsSecuritySessionsTitle;

  /// No description provided for @settingsSecuritySessionsDevice1Title.
  ///
  /// In en, this message translates to:
  /// **'Samsung Galaxy S23'**
  String get settingsSecuritySessionsDevice1Title;

  /// No description provided for @settingsSecuritySessionsDevice1Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Jakarta, Indonesia • Active now'**
  String get settingsSecuritySessionsDevice1Subtitle;

  /// No description provided for @settingsSecuritySessionsBadgeCurrent.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get settingsSecuritySessionsBadgeCurrent;

  /// No description provided for @settingsSecuritySessionsDetails.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get settingsSecuritySessionsDetails;

  /// No description provided for @settingsSecuritySessionsDevice2Title.
  ///
  /// In en, this message translates to:
  /// **'Chrome on Windows'**
  String get settingsSecuritySessionsDevice2Title;

  /// No description provided for @settingsSecuritySessionsDevice2Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Bandung, Indonesia • 2 days ago'**
  String get settingsSecuritySessionsDevice2Subtitle;

  /// No description provided for @settingsSecuritySessionsSignOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get settingsSecuritySessionsSignOut;

  /// No description provided for @settingsSecurityAlertsTitle.
  ///
  /// In en, this message translates to:
  /// **'Security alerts'**
  String get settingsSecurityAlertsTitle;

  /// No description provided for @settingsSecurityAlertsDeviceTitle.
  ///
  /// In en, this message translates to:
  /// **'Device alerts'**
  String get settingsSecurityAlertsDeviceTitle;

  /// No description provided for @settingsSecurityAlertsDeviceSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Get notified when your account is accessed from a new device'**
  String get settingsSecurityAlertsDeviceSubtitle;

  /// No description provided for @settingsSecurityRecoveryTitle.
  ///
  /// In en, this message translates to:
  /// **'Account recovery'**
  String get settingsSecurityRecoveryTitle;

  /// No description provided for @settingsSecurityRecoveryTrustedTitle.
  ///
  /// In en, this message translates to:
  /// **'Trusted contacts'**
  String get settingsSecurityRecoveryTrustedTitle;

  /// No description provided for @settingsSecurityRecoveryTrustedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Add people who can help you recover your account'**
  String get settingsSecurityRecoveryTrustedSubtitle;

  /// No description provided for @settingsSecurityRecoveryCodesTitle.
  ///
  /// In en, this message translates to:
  /// **'Download recovery codes'**
  String get settingsSecurityRecoveryCodesTitle;

  /// No description provided for @settingsSecurityRecoveryCodesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Save backup codes in case you lose access'**
  String get settingsSecurityRecoveryCodesSubtitle;

  /// No description provided for @settingsPrivacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get settingsPrivacyTitle;

  /// No description provided for @settingsPrivacySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Control your visibility and data'**
  String get settingsPrivacySubtitle;

  /// No description provided for @settingsPrivacyAudienceTitle.
  ///
  /// In en, this message translates to:
  /// **'Audience & visibility'**
  String get settingsPrivacyAudienceTitle;

  /// No description provided for @settingsPrivacyPrivateAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Private account'**
  String get settingsPrivacyPrivateAccountTitle;

  /// No description provided for @settingsPrivacyPrivateAccountSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Approve followers before they see your activity'**
  String get settingsPrivacyPrivateAccountSubtitle;

  /// No description provided for @settingsPrivacySearchTitle.
  ///
  /// In en, this message translates to:
  /// **'Appear in search'**
  String get settingsPrivacySearchTitle;

  /// No description provided for @settingsPrivacySearchSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Allow people to discover you by name or username'**
  String get settingsPrivacySearchSubtitle;

  /// No description provided for @settingsPrivacyDirectMessagesTitle.
  ///
  /// In en, this message translates to:
  /// **'Direct messages'**
  String get settingsPrivacyDirectMessagesTitle;

  /// No description provided for @settingsPrivacyDirectMessagesAllowTitle.
  ///
  /// In en, this message translates to:
  /// **'Allow messages from everyone'**
  String get settingsPrivacyDirectMessagesAllowTitle;

  /// No description provided for @settingsPrivacyDirectMessagesAllowSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Messages from non-followers go to requests'**
  String get settingsPrivacyDirectMessagesAllowSubtitle;

  /// No description provided for @settingsPrivacyDataPermissionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Data & permissions'**
  String get settingsPrivacyDataPermissionsTitle;

  /// No description provided for @settingsPrivacyDownloadInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Download your information'**
  String get settingsPrivacyDownloadInfoTitle;

  /// No description provided for @settingsPrivacyDownloadInfoSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Get a copy of your posts, donations, and messages'**
  String get settingsPrivacyDownloadInfoSubtitle;

  /// No description provided for @settingsPrivacyDeleteAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get settingsPrivacyDeleteAccountTitle;

  /// No description provided for @settingsPrivacyDeleteAccountSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Permanently remove your account and data'**
  String get settingsPrivacyDeleteAccountSubtitle;

  /// No description provided for @settingsPrivacyDataSharingTitle.
  ///
  /// In en, this message translates to:
  /// **'Data sharing'**
  String get settingsPrivacyDataSharingTitle;

  /// No description provided for @settingsPrivacyDataSharingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Control analytics and personalized experiences'**
  String get settingsPrivacyDataSharingSubtitle;

  /// No description provided for @settingsPrivacyAnalyticsTitle.
  ///
  /// In en, this message translates to:
  /// **'Share usage analytics'**
  String get settingsPrivacyAnalyticsTitle;

  /// No description provided for @settingsPrivacyAnalyticsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Help us improve Velora by sharing anonymized usage'**
  String get settingsPrivacyAnalyticsSubtitle;

  /// No description provided for @settingsPrivacyPersonalizedTitle.
  ///
  /// In en, this message translates to:
  /// **'Personalized experiences'**
  String get settingsPrivacyPersonalizedTitle;

  /// No description provided for @settingsPrivacyPersonalizedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Use my activity to tailor content and ads'**
  String get settingsPrivacyPersonalizedSubtitle;

  /// No description provided for @postCreateAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Create Post'**
  String get postCreateAppBarTitle;

  /// No description provided for @postCreateAppBarNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get postCreateAppBarNext;

  /// No description provided for @postCreateTitle.
  ///
  /// In en, this message translates to:
  /// **'New Post'**
  String get postCreateTitle;

  /// No description provided for @postCreatePublishTooltip.
  ///
  /// In en, this message translates to:
  /// **'Publish post'**
  String get postCreatePublishTooltip;

  /// No description provided for @postCreatePublishHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to publish your post'**
  String get postCreatePublishHint;

  /// No description provided for @postCreatePublishLabel.
  ///
  /// In en, this message translates to:
  /// **'Publish'**
  String get postCreatePublishLabel;

  /// No description provided for @postCreateMediaLabel.
  ///
  /// In en, this message translates to:
  /// **'Selected media preview'**
  String get postCreateMediaLabel;

  /// No description provided for @postCreateMediaHint.
  ///
  /// In en, this message translates to:
  /// **'Swipe to review your selected media'**
  String get postCreateMediaHint;

  /// No description provided for @postCreateActionAddAudio.
  ///
  /// In en, this message translates to:
  /// **'Add audio'**
  String get postCreateActionAddAudio;

  /// No description provided for @postCreateActionTagPeople.
  ///
  /// In en, this message translates to:
  /// **'Tag people'**
  String get postCreateActionTagPeople;

  /// No description provided for @postCreateActionAddLocation.
  ///
  /// In en, this message translates to:
  /// **'Add location'**
  String get postCreateActionAddLocation;

  /// No description provided for @postCreateActionAudience.
  ///
  /// In en, this message translates to:
  /// **'Audience'**
  String get postCreateActionAudience;

  /// No description provided for @postCreateAudienceFollowers.
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get postCreateAudienceFollowers;

  /// No description provided for @postCreateActionMoreOptions.
  ///
  /// In en, this message translates to:
  /// **'More options'**
  String get postCreateActionMoreOptions;

  /// No description provided for @postCreateActionHintAdjust.
  ///
  /// In en, this message translates to:
  /// **'Double tap to adjust {action}'**
  String postCreateActionHintAdjust(String action);

  /// No description provided for @postCreateActionHintOpen.
  ///
  /// In en, this message translates to:
  /// **'Double tap to {action}'**
  String postCreateActionHintOpen(String action);

  /// No description provided for @postCreateSelectMediaError.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one image'**
  String get postCreateSelectMediaError;

  /// No description provided for @postCreateUploadFailed.
  ///
  /// In en, this message translates to:
  /// **'Upload failed: {error}'**
  String postCreateUploadFailed(String error);

  /// No description provided for @postCreateSuccess.
  ///
  /// In en, this message translates to:
  /// **'Post created successfully!'**
  String get postCreateSuccess;

  /// No description provided for @postCreateFailure.
  ///
  /// In en, this message translates to:
  /// **'Create post failed: {error}'**
  String postCreateFailure(String error);

  /// No description provided for @postCreateDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Publishing Post'**
  String get postCreateDialogTitle;

  /// No description provided for @postCreateDialogPreparing.
  ///
  /// In en, this message translates to:
  /// **'Preparing to upload...'**
  String get postCreateDialogPreparing;

  /// No description provided for @postCreateDialogUploading.
  ///
  /// In en, this message translates to:
  /// **'Uploading media...'**
  String get postCreateDialogUploading;

  /// No description provided for @postCreateDialogCreating.
  ///
  /// In en, this message translates to:
  /// **'Creating post...'**
  String get postCreateDialogCreating;

  /// No description provided for @postCreateDialogError.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String postCreateDialogError(String error);

  /// No description provided for @postCaptionHint.
  ///
  /// In en, this message translates to:
  /// **'Write a caption...'**
  String get postCaptionHint;

  /// No description provided for @postMediaPreviewLabel.
  ///
  /// In en, this message translates to:
  /// **'Media preview carousel'**
  String get postMediaPreviewLabel;

  /// No description provided for @postMediaPreviewHint.
  ///
  /// In en, this message translates to:
  /// **'Swipe left or right to preview selected media'**
  String get postMediaPreviewHint;

  /// No description provided for @postMediaRemoveLabel.
  ///
  /// In en, this message translates to:
  /// **'Remove current media'**
  String get postMediaRemoveLabel;

  /// No description provided for @postMediaRemoveHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to remove media {index}'**
  String postMediaRemoveHint(int index);

  /// No description provided for @postGalleryLoadError.
  ///
  /// In en, this message translates to:
  /// **'Error loading images: {error}'**
  String postGalleryLoadError(String error);

  /// No description provided for @postGalleryImageLabel.
  ///
  /// In en, this message translates to:
  /// **'Gallery image'**
  String get postGalleryImageLabel;

  /// No description provided for @postGalleryImageHintSelected.
  ///
  /// In en, this message translates to:
  /// **'Selected at position {position}'**
  String postGalleryImageHintSelected(int position);

  /// No description provided for @postGalleryImageHintSelect.
  ///
  /// In en, this message translates to:
  /// **'Double tap to select this image'**
  String get postGalleryImageHintSelect;

  /// No description provided for @postGalleryEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No photos selected'**
  String get postGalleryEmptyTitle;

  /// No description provided for @postGalleryEmptySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap the button below to select photos from your gallery'**
  String get postGalleryEmptySubtitle;

  /// No description provided for @postGallerySelectButton.
  ///
  /// In en, this message translates to:
  /// **'Select photos'**
  String get postGallerySelectButton;

  /// No description provided for @postToolbarLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get postToolbarLocation;

  /// No description provided for @postToolbarLink.
  ///
  /// In en, this message translates to:
  /// **'Link'**
  String get postToolbarLink;

  /// No description provided for @postToolbarCampaign.
  ///
  /// In en, this message translates to:
  /// **'Campaign'**
  String get postToolbarCampaign;

  /// No description provided for @postMoreOptionsTitle.
  ///
  /// In en, this message translates to:
  /// **'More options'**
  String get postMoreOptionsTitle;

  /// No description provided for @postMoreOptionsHeader.
  ///
  /// In en, this message translates to:
  /// **'How others can interact with your post'**
  String get postMoreOptionsHeader;

  /// No description provided for @postMoreOptionsTurnOffCommentsTitle.
  ///
  /// In en, this message translates to:
  /// **'Turn off commenting'**
  String get postMoreOptionsTurnOffCommentsTitle;

  /// No description provided for @postMoreOptionsTurnOffCommentsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'You can change this later by going to the ⋯ menu at the top of your post.'**
  String get postMoreOptionsTurnOffCommentsSubtitle;

  /// No description provided for @postMoreOptionsHideLikeCountTitle.
  ///
  /// In en, this message translates to:
  /// **'Hide like count on this post'**
  String get postMoreOptionsHideLikeCountTitle;

  /// No description provided for @postMoreOptionsHideShareCountTitle.
  ///
  /// In en, this message translates to:
  /// **'Hide share count on this post'**
  String get postMoreOptionsHideShareCountTitle;

  /// No description provided for @postMoreOptionsHideShareCountSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Only you will see the total number of likes and shares on this post. You can change this later by going to the ⋯ menu at the top of your post. You can hide the number of likes and shares on posts from other accounts by going to Settings. Learn more'**
  String get postMoreOptionsHideShareCountSubtitle;

  /// No description provided for @postMoreOptionsHideCommentCountTitle.
  ///
  /// In en, this message translates to:
  /// **'Hide comment count on this post'**
  String get postMoreOptionsHideCommentCountTitle;

  /// No description provided for @postMoreOptionsHideLikesListTitle.
  ///
  /// In en, this message translates to:
  /// **'Hide list of people who liked this post'**
  String get postMoreOptionsHideLikesListTitle;

  /// No description provided for @postMoreOptionsHideLikesListSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Viewers will see the like count (unless hidden) but not who liked it.'**
  String get postMoreOptionsHideLikesListSubtitle;

  /// No description provided for @postToggleHintEnable.
  ///
  /// In en, this message translates to:
  /// **'Double tap to allow {action}'**
  String postToggleHintEnable(String action);

  /// No description provided for @postToggleHintDisable.
  ///
  /// In en, this message translates to:
  /// **'Double tap to disable {action}'**
  String postToggleHintDisable(String action);

  /// No description provided for @chatScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Chats'**
  String get chatScreenTitle;

  /// No description provided for @chatScreenNewChatLabel.
  ///
  /// In en, this message translates to:
  /// **'Start new chat'**
  String get chatScreenNewChatLabel;

  /// No description provided for @chatScreenNewChatTooltip.
  ///
  /// In en, this message translates to:
  /// **'New chat'**
  String get chatScreenNewChatTooltip;

  /// No description provided for @chatScreenListLabel.
  ///
  /// In en, this message translates to:
  /// **'Chats list'**
  String get chatScreenListLabel;

  /// No description provided for @chatScreenListHint.
  ///
  /// In en, this message translates to:
  /// **'Swipe up or down to browse conversations'**
  String get chatScreenListHint;

  /// No description provided for @chatScreenRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get chatScreenRetry;

  /// No description provided for @chatScreenNoChats.
  ///
  /// In en, this message translates to:
  /// **'No Chat History'**
  String get chatScreenNoChats;

  /// No description provided for @chatScreenNoChatsHint.
  ///
  /// In en, this message translates to:
  /// **'Start a new conversation to see your chats here'**
  String get chatScreenNoChatsHint;

  /// No description provided for @chatScreenUnnamed.
  ///
  /// In en, this message translates to:
  /// **'Unnamed'**
  String get chatScreenUnnamed;

  /// No description provided for @chatScreenUnnamedGroup.
  ///
  /// In en, this message translates to:
  /// **'Unnamed Group'**
  String get chatScreenUnnamedGroup;

  /// No description provided for @chatFilterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get chatFilterAll;

  /// No description provided for @chatFilterUnread.
  ///
  /// In en, this message translates to:
  /// **'Unread'**
  String get chatFilterUnread;

  /// No description provided for @chatFilterFavourites.
  ///
  /// In en, this message translates to:
  /// **'Favourites'**
  String get chatFilterFavourites;

  /// No description provided for @chatFilterGroups.
  ///
  /// In en, this message translates to:
  /// **'Groups'**
  String get chatFilterGroups;

  /// No description provided for @chatFilterSemanticsLabel.
  ///
  /// In en, this message translates to:
  /// **'{filter} filter'**
  String chatFilterSemanticsLabel(String filter);

  /// No description provided for @chatFilterSemanticsHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to filter chats by {filter}'**
  String chatFilterSemanticsHint(String filter);

  /// No description provided for @chatSearchBarLabel.
  ///
  /// In en, this message translates to:
  /// **'Search chats'**
  String get chatSearchBarLabel;

  /// No description provided for @chatSearchBarHint.
  ///
  /// In en, this message translates to:
  /// **'Enter text to search conversations'**
  String get chatSearchBarHint;

  /// No description provided for @chatSearchBarPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Ask Meta AI or search'**
  String get chatSearchBarPlaceholder;

  /// No description provided for @chatListItemSemanticsLabel.
  ///
  /// In en, this message translates to:
  /// **'Chat with {name}'**
  String chatListItemSemanticsLabel(String name);

  /// No description provided for @chatListItemSemanticsHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to open conversation'**
  String get chatListItemSemanticsHint;

  /// No description provided for @chatListItemPhotos.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{{count} photo} other{{count} photos}}'**
  String chatListItemPhotos(int count);

  /// No description provided for @chatListItemPhoto.
  ///
  /// In en, this message translates to:
  /// **'Photo'**
  String get chatListItemPhoto;

  /// No description provided for @chatListItemMissedCall.
  ///
  /// In en, this message translates to:
  /// **'Missed voice call'**
  String get chatListItemMissedCall;

  /// No description provided for @chatBubbleYourLabel.
  ///
  /// In en, this message translates to:
  /// **'Your message'**
  String get chatBubbleYourLabel;

  /// No description provided for @chatBubbleReceivedLabel.
  ///
  /// In en, this message translates to:
  /// **'Received message'**
  String get chatBubbleReceivedLabel;

  /// No description provided for @chatBubbleHint.
  ///
  /// In en, this message translates to:
  /// **'Message sent at {time}'**
  String chatBubbleHint(String time);

  /// No description provided for @chatMediaYourLabel.
  ///
  /// In en, this message translates to:
  /// **'Your media message'**
  String get chatMediaYourLabel;

  /// No description provided for @chatMediaReceivedLabel.
  ///
  /// In en, this message translates to:
  /// **'Received media message'**
  String get chatMediaReceivedLabel;

  /// No description provided for @chatMediaHint.
  ///
  /// In en, this message translates to:
  /// **'Media sent at {time}'**
  String chatMediaHint(String time);

  /// No description provided for @chatDateSeparatorLabel.
  ///
  /// In en, this message translates to:
  /// **'Date separator: {date}'**
  String chatDateSeparatorLabel(String date);

  /// No description provided for @chatInputEmojiLabel.
  ///
  /// In en, this message translates to:
  /// **'Emoji picker'**
  String get chatInputEmojiLabel;

  /// No description provided for @chatInputEmojiHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to open emoji picker'**
  String get chatInputEmojiHint;

  /// No description provided for @chatInputEmojiTooltip.
  ///
  /// In en, this message translates to:
  /// **'Emoji'**
  String get chatInputEmojiTooltip;

  /// No description provided for @chatInputFieldLabel.
  ///
  /// In en, this message translates to:
  /// **'Message input'**
  String get chatInputFieldLabel;

  /// No description provided for @chatInputFieldHint.
  ///
  /// In en, this message translates to:
  /// **'Type your message here'**
  String get chatInputFieldHint;

  /// No description provided for @chatInputFieldPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get chatInputFieldPlaceholder;

  /// No description provided for @chatInputAttachLabel.
  ///
  /// In en, this message translates to:
  /// **'Attach file'**
  String get chatInputAttachLabel;

  /// No description provided for @chatInputAttachHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to attach file'**
  String get chatInputAttachHint;

  /// No description provided for @chatInputAttachTooltip.
  ///
  /// In en, this message translates to:
  /// **'Attach file'**
  String get chatInputAttachTooltip;

  /// No description provided for @chatInputCameraLabel.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get chatInputCameraLabel;

  /// No description provided for @chatInputCameraHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to open camera'**
  String get chatInputCameraHint;

  /// No description provided for @chatInputCameraTooltip.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get chatInputCameraTooltip;

  /// No description provided for @chatInputSendLabel.
  ///
  /// In en, this message translates to:
  /// **'Send message'**
  String get chatInputSendLabel;

  /// No description provided for @chatInputSendHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to send message'**
  String get chatInputSendHint;

  /// No description provided for @chatInputVoiceLabel.
  ///
  /// In en, this message translates to:
  /// **'Voice message'**
  String get chatInputVoiceLabel;

  /// No description provided for @chatInputVoiceHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to record voice message'**
  String get chatInputVoiceHint;

  /// No description provided for @chatAttachmentGallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get chatAttachmentGallery;

  /// No description provided for @chatAttachmentCamera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get chatAttachmentCamera;

  /// No description provided for @chatAttachmentLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get chatAttachmentLocation;

  /// No description provided for @chatAttachmentContact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get chatAttachmentContact;

  /// No description provided for @chatAttachmentDocument.
  ///
  /// In en, this message translates to:
  /// **'Document'**
  String get chatAttachmentDocument;

  /// No description provided for @chatAttachmentAudio.
  ///
  /// In en, this message translates to:
  /// **'Audio'**
  String get chatAttachmentAudio;

  /// No description provided for @chatAttachmentPoll.
  ///
  /// In en, this message translates to:
  /// **'Poll'**
  String get chatAttachmentPoll;

  /// No description provided for @chatAttachmentEvent.
  ///
  /// In en, this message translates to:
  /// **'Event'**
  String get chatAttachmentEvent;

  /// No description provided for @chatAttachmentAiImages.
  ///
  /// In en, this message translates to:
  /// **'AI images'**
  String get chatAttachmentAiImages;

  /// No description provided for @chatAttachmentSelectHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to select {label}'**
  String chatAttachmentSelectHint(String label);

  /// No description provided for @chatDetailBackLabel.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get chatDetailBackLabel;

  /// No description provided for @chatDetailTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'Conversation with {name}'**
  String chatDetailTitleLabel(String name);

  /// No description provided for @chatDetailGroupSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap here for group info'**
  String get chatDetailGroupSubtitle;

  /// No description provided for @chatDetailSelfSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Message yourself'**
  String get chatDetailSelfSubtitle;

  /// No description provided for @chatDetailOptionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Conversation options'**
  String get chatDetailOptionsLabel;

  /// No description provided for @chatDetailMenuTooltip.
  ///
  /// In en, this message translates to:
  /// **'More options'**
  String get chatDetailMenuTooltip;

  /// No description provided for @chatDetailHistoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Conversation history'**
  String get chatDetailHistoryLabel;

  /// No description provided for @chatDetailHistoryHint.
  ///
  /// In en, this message translates to:
  /// **'Swipe up to review older messages'**
  String get chatDetailHistoryHint;

  /// No description provided for @chatDetailNoMessages.
  ///
  /// In en, this message translates to:
  /// **'No messages yet'**
  String get chatDetailNoMessages;

  /// No description provided for @chatDetailNoMessagesHint.
  ///
  /// In en, this message translates to:
  /// **'Send a message to start the conversation'**
  String get chatDetailNoMessagesHint;

  /// No description provided for @chatDetailMessageDeleted.
  ///
  /// In en, this message translates to:
  /// **'This message was deleted'**
  String get chatDetailMessageDeleted;

  /// No description provided for @chatDetailSelectMediaTitle.
  ///
  /// In en, this message translates to:
  /// **'Select media type'**
  String get chatDetailSelectMediaTitle;

  /// No description provided for @chatDetailSelectImages.
  ///
  /// In en, this message translates to:
  /// **'Images'**
  String get chatDetailSelectImages;

  /// No description provided for @chatDetailSelectVideo.
  ///
  /// In en, this message translates to:
  /// **'Video'**
  String get chatDetailSelectVideo;

  /// No description provided for @chatDetailImagesSelected.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{{count} image selected} other{{count} images selected}}'**
  String chatDetailImagesSelected(int count);

  /// No description provided for @chatDetailVideoSelected.
  ///
  /// In en, this message translates to:
  /// **'Video selected'**
  String get chatDetailVideoSelected;

  /// No description provided for @chatDetailPickMediaError.
  ///
  /// In en, this message translates to:
  /// **'Failed to pick media'**
  String get chatDetailPickMediaError;

  /// No description provided for @chatDetailCameraModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Select camera mode'**
  String get chatDetailCameraModeTitle;

  /// No description provided for @chatDetailCameraTakePhoto.
  ///
  /// In en, this message translates to:
  /// **'Take photo'**
  String get chatDetailCameraTakePhoto;

  /// No description provided for @chatDetailCameraRecordVideo.
  ///
  /// In en, this message translates to:
  /// **'Record video'**
  String get chatDetailCameraRecordVideo;

  /// No description provided for @chatDetailPhotoCaptured.
  ///
  /// In en, this message translates to:
  /// **'Photo captured'**
  String get chatDetailPhotoCaptured;

  /// No description provided for @chatDetailVideoRecorded.
  ///
  /// In en, this message translates to:
  /// **'Video recorded'**
  String get chatDetailVideoRecorded;

  /// No description provided for @chatDetailPollCreated.
  ///
  /// In en, this message translates to:
  /// **'Poll created'**
  String get chatDetailPollCreated;

  /// No description provided for @chatDetailEventCreated.
  ///
  /// In en, this message translates to:
  /// **'Event created'**
  String get chatDetailEventCreated;

  /// No description provided for @chatDetailDocumentsSelected.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{{count} document selected} other{{count} documents selected}}'**
  String chatDetailDocumentsSelected(int count);

  /// No description provided for @chatDetailDocumentError.
  ///
  /// In en, this message translates to:
  /// **'Failed to pick documents'**
  String get chatDetailDocumentError;

  /// No description provided for @chatDetailAudioSelected.
  ///
  /// In en, this message translates to:
  /// **'Audio file selected'**
  String get chatDetailAudioSelected;

  /// No description provided for @chatDetailAudioError.
  ///
  /// In en, this message translates to:
  /// **'Failed to pick audio'**
  String get chatDetailAudioError;

  /// No description provided for @chatDetailLocationSelected.
  ///
  /// In en, this message translates to:
  /// **'Location selected'**
  String get chatDetailLocationSelected;

  /// No description provided for @chatDetailContactSelected.
  ///
  /// In en, this message translates to:
  /// **'Contact selected'**
  String get chatDetailContactSelected;

  /// No description provided for @chatDetailAiImagesSelected.
  ///
  /// In en, this message translates to:
  /// **'AI images selected'**
  String get chatDetailAiImagesSelected;

  /// No description provided for @chatDetailVoiceMessage.
  ///
  /// In en, this message translates to:
  /// **'Voice message'**
  String get chatDetailVoiceMessage;

  /// No description provided for @chatDetailVoiceError.
  ///
  /// In en, this message translates to:
  /// **'Failed to record voice message'**
  String get chatDetailVoiceError;

  /// No description provided for @chatDetailVoiceRecorded.
  ///
  /// In en, this message translates to:
  /// **'Uploading voice message...'**
  String get chatDetailVoiceRecorded;

  /// No description provided for @chatDetailDownloadFile.
  ///
  /// In en, this message translates to:
  /// **'Download file'**
  String get chatDetailDownloadFile;

  /// No description provided for @chatDetailDownloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading...'**
  String get chatDetailDownloading;

  /// No description provided for @chatDetailDownloadSuccess.
  ///
  /// In en, this message translates to:
  /// **'File downloaded successfully'**
  String get chatDetailDownloadSuccess;

  /// No description provided for @chatDetailDownloadError.
  ///
  /// In en, this message translates to:
  /// **'Failed to download file'**
  String get chatDetailDownloadError;

  /// No description provided for @chatDetailOpenFile.
  ///
  /// In en, this message translates to:
  /// **'Open file'**
  String get chatDetailOpenFile;

  /// No description provided for @voiceRecorderTitle.
  ///
  /// In en, this message translates to:
  /// **'Voice Message'**
  String get voiceRecorderTitle;

  /// No description provided for @voiceRecorderCheckingPermission.
  ///
  /// In en, this message translates to:
  /// **'Checking microphone permission...'**
  String get voiceRecorderCheckingPermission;

  /// No description provided for @voiceRecorderNoPermission.
  ///
  /// In en, this message translates to:
  /// **'Microphone permission is required to record voice messages'**
  String get voiceRecorderNoPermission;

  /// No description provided for @voiceRecorderRetryPermission.
  ///
  /// In en, this message translates to:
  /// **'Grant Permission'**
  String get voiceRecorderRetryPermission;

  /// No description provided for @voiceRecorderTapToStart.
  ///
  /// In en, this message translates to:
  /// **'Tap to start recording'**
  String get voiceRecorderTapToStart;

  /// No description provided for @voiceRecorderRecording.
  ///
  /// In en, this message translates to:
  /// **'Recording...'**
  String get voiceRecorderRecording;

  /// No description provided for @voiceRecorderPaused.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get voiceRecorderPaused;

  /// No description provided for @voiceRecorderCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get voiceRecorderCancel;

  /// No description provided for @voiceRecorderPause.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get voiceRecorderPause;

  /// No description provided for @voiceRecorderResume.
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get voiceRecorderResume;

  /// No description provided for @voiceRecorderSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get voiceRecorderSend;

  /// No description provided for @chatDetailAudioUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Audio unavailable'**
  String get chatDetailAudioUnavailable;

  /// No description provided for @chatDetailFileDownloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading file...'**
  String get chatDetailFileDownloading;

  /// No description provided for @chatDetailStatusOnline.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get chatDetailStatusOnline;

  /// No description provided for @chatDetailTyping.
  ///
  /// In en, this message translates to:
  /// **'typing'**
  String get chatDetailTyping;

  /// No description provided for @chatDetailLastSeenJustNow.
  ///
  /// In en, this message translates to:
  /// **'last seen just now'**
  String get chatDetailLastSeenJustNow;

  /// No description provided for @chatDetailLastSeenMinutes.
  ///
  /// In en, this message translates to:
  /// **'last seen {minutes} min ago'**
  String chatDetailLastSeenMinutes(int minutes);

  /// No description provided for @chatDetailLastSeenHours.
  ///
  /// In en, this message translates to:
  /// **'last seen {hours}h ago'**
  String chatDetailLastSeenHours(int hours);

  /// No description provided for @chatDetailLastSeenDays.
  ///
  /// In en, this message translates to:
  /// **'last seen {days}d ago'**
  String chatDetailLastSeenDays(int days);

  /// No description provided for @chatDetailLastSeenDate.
  ///
  /// In en, this message translates to:
  /// **'last seen {date}'**
  String chatDetailLastSeenDate(String date);

  /// No description provided for @chatScreenTyping.
  ///
  /// In en, this message translates to:
  /// **'typing...'**
  String get chatScreenTyping;

  /// No description provided for @chatSearchScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get chatSearchScreenTitle;

  /// No description provided for @chatSearchScreenRecent.
  ///
  /// In en, this message translates to:
  /// **'Recent searches'**
  String get chatSearchScreenRecent;

  /// No description provided for @chatSearchScreenClearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get chatSearchScreenClearAll;

  /// No description provided for @chatSearchGlobalLabel.
  ///
  /// In en, this message translates to:
  /// **'Global search'**
  String get chatSearchGlobalLabel;

  /// No description provided for @chatSearchGlobalHint.
  ///
  /// In en, this message translates to:
  /// **'Search across campaigns, posts, and people'**
  String get chatSearchGlobalHint;

  /// No description provided for @chatSearchPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Search…'**
  String get chatSearchPlaceholder;

  /// No description provided for @chatSearchScopeCampaigns.
  ///
  /// In en, this message translates to:
  /// **'Campaigns'**
  String get chatSearchScopeCampaigns;

  /// No description provided for @chatSearchScopePosts.
  ///
  /// In en, this message translates to:
  /// **'Posts'**
  String get chatSearchScopePosts;

  /// No description provided for @chatSearchScopePeople.
  ///
  /// In en, this message translates to:
  /// **'People'**
  String get chatSearchScopePeople;

  /// No description provided for @chatSearchScopeSemantics.
  ///
  /// In en, this message translates to:
  /// **'{scope} scope'**
  String chatSearchScopeSemantics(String scope);

  /// No description provided for @chatSearchRecentItemLabel.
  ///
  /// In en, this message translates to:
  /// **'Recent search: {query}'**
  String chatSearchRecentItemLabel(String query);

  /// No description provided for @chatSearchRecentItemHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to search again'**
  String get chatSearchRecentItemHint;

  /// No description provided for @chatSearchRecentDeleteLabel.
  ///
  /// In en, this message translates to:
  /// **'Delete recent search'**
  String get chatSearchRecentDeleteLabel;

  /// No description provided for @chatSearchRecentDeleteTooltip.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get chatSearchRecentDeleteTooltip;

  /// No description provided for @chatPollLabel.
  ///
  /// In en, this message translates to:
  /// **'POLL'**
  String get chatPollLabel;

  /// No description provided for @chatPollSemanticsYour.
  ///
  /// In en, this message translates to:
  /// **'Your poll'**
  String get chatPollSemanticsYour;

  /// No description provided for @chatPollSemanticsReceived.
  ///
  /// In en, this message translates to:
  /// **'Received poll'**
  String get chatPollSemanticsReceived;

  /// No description provided for @chatPollSemanticsHint.
  ///
  /// In en, this message translates to:
  /// **'Poll with {count} votes'**
  String chatPollSemanticsHint(int count);

  /// No description provided for @chatPollTotalVotes.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{{count} vote} other{{count} votes}}'**
  String chatPollTotalVotes(int count);

  /// No description provided for @chatPollOptionSemantics.
  ///
  /// In en, this message translates to:
  /// **'{option}, {votes} votes, {percent} percent'**
  String chatPollOptionSemantics(String option, int votes, String percent);

  /// No description provided for @chatPollVoteHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to vote for this option'**
  String get chatPollVoteHint;

  /// No description provided for @chatPollDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Create poll'**
  String get chatPollDialogTitle;

  /// No description provided for @chatPollDialogQuestionLabel.
  ///
  /// In en, this message translates to:
  /// **'Poll question'**
  String get chatPollDialogQuestionLabel;

  /// No description provided for @chatPollDialogQuestionHint.
  ///
  /// In en, this message translates to:
  /// **'Ask a question…'**
  String get chatPollDialogQuestionHint;

  /// No description provided for @chatPollDialogOptionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get chatPollDialogOptionsLabel;

  /// No description provided for @chatPollDialogOptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Option {index}'**
  String chatPollDialogOptionLabel(int index);

  /// No description provided for @chatPollDialogOptionHint.
  ///
  /// In en, this message translates to:
  /// **'Enter option…'**
  String get chatPollDialogOptionHint;

  /// No description provided for @chatPollDialogAddOption.
  ///
  /// In en, this message translates to:
  /// **'Add option'**
  String get chatPollDialogAddOption;

  /// No description provided for @chatPollDialogQuestionError.
  ///
  /// In en, this message translates to:
  /// **'Please enter a question'**
  String get chatPollDialogQuestionError;

  /// No description provided for @chatPollDialogOptionsError.
  ///
  /// In en, this message translates to:
  /// **'Please add at least 2 options'**
  String get chatPollDialogOptionsError;

  /// No description provided for @chatPollDialogMultipleChoiceLabel.
  ///
  /// In en, this message translates to:
  /// **'Multiple choice'**
  String get chatPollDialogMultipleChoiceLabel;

  /// No description provided for @chatPollDialogMultipleChoiceHint.
  ///
  /// In en, this message translates to:
  /// **'Allow users to select multiple options'**
  String get chatPollDialogMultipleChoiceHint;

  /// No description provided for @chatPollDialogMaxVotesLabel.
  ///
  /// In en, this message translates to:
  /// **'Maximum votes'**
  String get chatPollDialogMaxVotesLabel;

  /// No description provided for @chatPollDialogMaxVotesHint.
  ///
  /// In en, this message translates to:
  /// **'Users can vote for up to {count} options'**
  String chatPollDialogMaxVotesHint(int count);

  /// No description provided for @chatPollDialogSend.
  ///
  /// In en, this message translates to:
  /// **'Send poll'**
  String get chatPollDialogSend;

  /// No description provided for @chatEventLabel.
  ///
  /// In en, this message translates to:
  /// **'EVENT'**
  String get chatEventLabel;

  /// No description provided for @chatEventSemanticsYour.
  ///
  /// In en, this message translates to:
  /// **'Your event'**
  String get chatEventSemanticsYour;

  /// No description provided for @chatEventSemanticsReceived.
  ///
  /// In en, this message translates to:
  /// **'Received event'**
  String get chatEventSemanticsReceived;

  /// No description provided for @chatEventHint.
  ///
  /// In en, this message translates to:
  /// **'Event on {date}'**
  String chatEventHint(String date);

  /// No description provided for @chatEventDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Create event'**
  String get chatEventDialogTitle;

  /// No description provided for @chatEventDialogTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'Event title'**
  String get chatEventDialogTitleLabel;

  /// No description provided for @chatEventDialogTitleHint.
  ///
  /// In en, this message translates to:
  /// **'Enter event title…'**
  String get chatEventDialogTitleHint;

  /// No description provided for @chatEventDialogDescriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get chatEventDialogDescriptionLabel;

  /// No description provided for @chatEventDialogDescriptionHint.
  ///
  /// In en, this message translates to:
  /// **'Enter event description…'**
  String get chatEventDialogDescriptionHint;

  /// No description provided for @chatEventDialogLocationLabel.
  ///
  /// In en, this message translates to:
  /// **'Location (optional)'**
  String get chatEventDialogLocationLabel;

  /// No description provided for @chatEventDialogLocationHint.
  ///
  /// In en, this message translates to:
  /// **'Enter location…'**
  String get chatEventDialogLocationHint;

  /// No description provided for @chatEventDialogAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get chatEventDialogAddressLabel;

  /// No description provided for @chatEventDialogAddressHint.
  ///
  /// In en, this message translates to:
  /// **'Enter full address…'**
  String get chatEventDialogAddressHint;

  /// No description provided for @chatEventDialogOnlineLabel.
  ///
  /// In en, this message translates to:
  /// **'Online event'**
  String get chatEventDialogOnlineLabel;

  /// No description provided for @chatEventDialogOnlineHint.
  ///
  /// In en, this message translates to:
  /// **'This event will be held virtually'**
  String get chatEventDialogOnlineHint;

  /// No description provided for @chatEventDialogMeetingUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Meeting URL'**
  String get chatEventDialogMeetingUrlLabel;

  /// No description provided for @chatEventDialogMeetingUrlHint.
  ///
  /// In en, this message translates to:
  /// **'Enter meeting link (Zoom, Google Meet, etc.)'**
  String get chatEventDialogMeetingUrlHint;

  /// No description provided for @chatEventDialogMeetingUrlError.
  ///
  /// In en, this message translates to:
  /// **'Please enter a meeting URL for online events'**
  String get chatEventDialogMeetingUrlError;

  /// No description provided for @chatEventDialogStartLabel.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get chatEventDialogStartLabel;

  /// No description provided for @chatEventDialogEndLabel.
  ///
  /// In en, this message translates to:
  /// **'End'**
  String get chatEventDialogEndLabel;

  /// No description provided for @chatEventDialogTitleError.
  ///
  /// In en, this message translates to:
  /// **'Please enter an event title'**
  String get chatEventDialogTitleError;

  /// No description provided for @chatEventDialogEndTimeError.
  ///
  /// In en, this message translates to:
  /// **'End time must be after start time'**
  String get chatEventDialogEndTimeError;

  /// No description provided for @chatEventDialogSend.
  ///
  /// In en, this message translates to:
  /// **'Send event'**
  String get chatEventDialogSend;

  /// No description provided for @chatEventResponseTitle.
  ///
  /// In en, this message translates to:
  /// **'Your response'**
  String get chatEventResponseTitle;

  /// No description provided for @chatEventResponseGoing.
  ///
  /// In en, this message translates to:
  /// **'Going'**
  String get chatEventResponseGoing;

  /// No description provided for @chatEventResponseMaybe.
  ///
  /// In en, this message translates to:
  /// **'Maybe'**
  String get chatEventResponseMaybe;

  /// No description provided for @chatEventResponseNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get chatEventResponseNo;

  /// No description provided for @chatEventResponseSummary.
  ///
  /// In en, this message translates to:
  /// **'{going} going • {maybe} maybe • {notGoing} not going'**
  String chatEventResponseSummary(int going, int maybe, int notGoing);

  /// No description provided for @chatEventResponseButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'{label} response'**
  String chatEventResponseButtonLabel(String label);

  /// No description provided for @chatEventResponseButtonHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to respond {label} to event'**
  String chatEventResponseButtonHint(String label);

  /// No description provided for @settingsAppearanceLanguageTitle.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsAppearanceLanguageTitle;

  /// No description provided for @settingsAppearanceLanguagePreviewSemantics.
  ///
  /// In en, this message translates to:
  /// **'Current language preview'**
  String get settingsAppearanceLanguagePreviewSemantics;

  /// No description provided for @settingsAppearanceLanguageCurrentLabel.
  ///
  /// In en, this message translates to:
  /// **'Current language'**
  String get settingsAppearanceLanguageCurrentLabel;

  /// No description provided for @settingsAppearanceLanguageSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search languages...'**
  String get settingsAppearanceLanguageSearchHint;

  /// No description provided for @settingsAppearanceLanguageEmpty.
  ///
  /// In en, this message translates to:
  /// **'No languages found'**
  String get settingsAppearanceLanguageEmpty;

  /// No description provided for @settingsAppearanceLanguageToast.
  ///
  /// In en, this message translates to:
  /// **'Language changed to {language}'**
  String settingsAppearanceLanguageToast(String language);

  /// No description provided for @settingsAppearanceLanguageRestartNote.
  ///
  /// In en, this message translates to:
  /// **'App will restart to apply language changes.'**
  String get settingsAppearanceLanguageRestartNote;

  /// No description provided for @settingsAppearanceThemeTitle.
  ///
  /// In en, this message translates to:
  /// **'Theme & appearance'**
  String get settingsAppearanceThemeTitle;

  /// No description provided for @settingsAppearanceThemeModeSection.
  ///
  /// In en, this message translates to:
  /// **'Theme mode'**
  String get settingsAppearanceThemeModeSection;

  /// No description provided for @settingsAppearanceThemeModeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsAppearanceThemeModeLight;

  /// No description provided for @settingsAppearanceThemeModeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsAppearanceThemeModeDark;

  /// No description provided for @settingsAppearanceThemeModeAuto.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get settingsAppearanceThemeModeAuto;

  /// No description provided for @settingsAppearanceThemeModeDescription.
  ///
  /// In en, this message translates to:
  /// **'System mode automatically adjusts based on your device settings.'**
  String get settingsAppearanceThemeModeDescription;

  /// No description provided for @settingsAppearanceThemeColorSection.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get settingsAppearanceThemeColorSection;

  /// No description provided for @settingsAppearanceThemeColorDynamic.
  ///
  /// In en, this message translates to:
  /// **'Dynamic color'**
  String get settingsAppearanceThemeColorDynamic;

  /// No description provided for @settingsAppearanceThemeShapeSection.
  ///
  /// In en, this message translates to:
  /// **'Shape'**
  String get settingsAppearanceThemeShapeSection;

  /// No description provided for @settingsAppearanceThemeShapeCorner.
  ///
  /// In en, this message translates to:
  /// **'Corner radius'**
  String get settingsAppearanceThemeShapeCorner;

  /// No description provided for @settingsAppearanceThemeShapeCornerValue.
  ///
  /// In en, this message translates to:
  /// **'{px} px'**
  String settingsAppearanceThemeShapeCornerValue(int px);

  /// No description provided for @settingsAppearanceThemeShapeSquare.
  ///
  /// In en, this message translates to:
  /// **'Square'**
  String get settingsAppearanceThemeShapeSquare;

  /// No description provided for @settingsAppearanceThemeShapeSmall.
  ///
  /// In en, this message translates to:
  /// **'Small'**
  String get settingsAppearanceThemeShapeSmall;

  /// No description provided for @settingsAppearanceThemeShapeMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get settingsAppearanceThemeShapeMedium;

  /// No description provided for @settingsAppearanceThemeShapeLarge.
  ///
  /// In en, this message translates to:
  /// **'Large'**
  String get settingsAppearanceThemeShapeLarge;

  /// No description provided for @settingsAppearanceThemeShapeMax.
  ///
  /// In en, this message translates to:
  /// **'Max'**
  String get settingsAppearanceThemeShapeMax;

  /// No description provided for @settingsAppearanceThemeAdvancedSection.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get settingsAppearanceThemeAdvancedSection;

  /// No description provided for @settingsAppearanceThemeAccentTitle.
  ///
  /// In en, this message translates to:
  /// **'Accent color'**
  String get settingsAppearanceThemeAccentTitle;

  /// No description provided for @settingsAppearanceThemeAccentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Customize highlight color'**
  String get settingsAppearanceThemeAccentSubtitle;

  /// No description provided for @settingsAppearanceThemeAccentToast.
  ///
  /// In en, this message translates to:
  /// **'Color picker coming soon'**
  String get settingsAppearanceThemeAccentToast;

  /// No description provided for @settingsAppearanceThemeTypographyTitle.
  ///
  /// In en, this message translates to:
  /// **'Typography'**
  String get settingsAppearanceThemeTypographyTitle;

  /// No description provided for @settingsAppearanceThemeTypographySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Font family and size'**
  String get settingsAppearanceThemeTypographySubtitle;

  /// No description provided for @settingsAppearanceThemeTypographyToast.
  ///
  /// In en, this message translates to:
  /// **'Typography settings coming soon'**
  String get settingsAppearanceThemeTypographyToast;

  /// No description provided for @settingsAppearanceThemeAnimationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Animations'**
  String get settingsAppearanceThemeAnimationsTitle;

  /// No description provided for @settingsAppearanceThemeAnimationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Transition effects and motion'**
  String get settingsAppearanceThemeAnimationsSubtitle;

  /// No description provided for @settingsAppearanceThemeAnimationsToast.
  ///
  /// In en, this message translates to:
  /// **'Animation settings coming soon'**
  String get settingsAppearanceThemeAnimationsToast;

  /// No description provided for @settingsAppearanceThemePreviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Live preview'**
  String get settingsAppearanceThemePreviewTitle;

  /// No description provided for @settingsAppearanceThemePreviewSampleCard.
  ///
  /// In en, this message translates to:
  /// **'Sample card'**
  String get settingsAppearanceThemePreviewSampleCard;

  /// No description provided for @settingsAppearanceThemeModeLabel.
  ///
  /// In en, this message translates to:
  /// **'{mode} mode'**
  String settingsAppearanceThemeModeLabel(String mode);

  /// No description provided for @settingsAppearanceNotificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsAppearanceNotificationsTitle;

  /// No description provided for @settingsAppearanceNotificationsQuick.
  ///
  /// In en, this message translates to:
  /// **'Quick controls'**
  String get settingsAppearanceNotificationsQuick;

  /// No description provided for @settingsAppearanceNotificationsPauseAllTitle.
  ///
  /// In en, this message translates to:
  /// **'Pause all notifications'**
  String get settingsAppearanceNotificationsPauseAllTitle;

  /// No description provided for @settingsAppearanceNotificationsPauseAllSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Temporarily stop all alerts'**
  String get settingsAppearanceNotificationsPauseAllSubtitle;

  /// No description provided for @settingsAppearanceNotificationsSleepModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Sleep mode'**
  String get settingsAppearanceNotificationsSleepModeTitle;

  /// No description provided for @settingsAppearanceNotificationsSleepModeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Mute notifications during these hours'**
  String get settingsAppearanceNotificationsSleepModeSubtitle;

  /// No description provided for @settingsAppearanceNotificationsPostsSection.
  ///
  /// In en, this message translates to:
  /// **'Posts & stories'**
  String get settingsAppearanceNotificationsPostsSection;

  /// No description provided for @settingsAppearanceNotificationsPostsPeople.
  ///
  /// In en, this message translates to:
  /// **'Posts from people I follow'**
  String get settingsAppearanceNotificationsPostsPeople;

  /// No description provided for @settingsAppearanceNotificationsPostsLive.
  ///
  /// In en, this message translates to:
  /// **'Live videos'**
  String get settingsAppearanceNotificationsPostsLive;

  /// No description provided for @settingsAppearanceNotificationsPostsLiveSubtitle.
  ///
  /// In en, this message translates to:
  /// **'When someone goes live'**
  String get settingsAppearanceNotificationsPostsLiveSubtitle;

  /// No description provided for @settingsAppearanceNotificationsPostsCampaigns.
  ///
  /// In en, this message translates to:
  /// **'New campaigns'**
  String get settingsAppearanceNotificationsPostsCampaigns;

  /// No description provided for @settingsAppearanceNotificationsPostsCampaignsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'From creators I follow'**
  String get settingsAppearanceNotificationsPostsCampaignsSubtitle;

  /// No description provided for @settingsAppearanceNotificationsEngagementSection.
  ///
  /// In en, this message translates to:
  /// **'Engagement'**
  String get settingsAppearanceNotificationsEngagementSection;

  /// No description provided for @settingsAppearanceNotificationsEngagementLikes.
  ///
  /// In en, this message translates to:
  /// **'Likes on my posts'**
  String get settingsAppearanceNotificationsEngagementLikes;

  /// No description provided for @settingsAppearanceNotificationsEngagementReplies.
  ///
  /// In en, this message translates to:
  /// **'Comment replies'**
  String get settingsAppearanceNotificationsEngagementReplies;

  /// No description provided for @settingsAppearanceNotificationsEngagementMentions.
  ///
  /// In en, this message translates to:
  /// **'Mentions'**
  String get settingsAppearanceNotificationsEngagementMentions;

  /// No description provided for @settingsAppearanceNotificationsEngagementMentionsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'When someone tags me'**
  String get settingsAppearanceNotificationsEngagementMentionsSubtitle;

  /// No description provided for @settingsAppearanceNotificationsEngagementFollowers.
  ///
  /// In en, this message translates to:
  /// **'New followers'**
  String get settingsAppearanceNotificationsEngagementFollowers;

  /// No description provided for @settingsAppearanceNotificationsDonationsSection.
  ///
  /// In en, this message translates to:
  /// **'Donations & campaigns'**
  String get settingsAppearanceNotificationsDonationsSection;

  /// No description provided for @settingsAppearanceNotificationsDonationsReceivedTitle.
  ///
  /// In en, this message translates to:
  /// **'Donation received'**
  String get settingsAppearanceNotificationsDonationsReceivedTitle;

  /// No description provided for @settingsAppearanceNotificationsDonationsReceivedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'When someone donates to my campaign'**
  String get settingsAppearanceNotificationsDonationsReceivedSubtitle;

  /// No description provided for @settingsAppearanceNotificationsDonationsMilestonesTitle.
  ///
  /// In en, this message translates to:
  /// **'Campaign milestones'**
  String get settingsAppearanceNotificationsDonationsMilestonesTitle;

  /// No description provided for @settingsAppearanceNotificationsDonationsMilestonesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'25%, 50%, 75%, 100% reached'**
  String get settingsAppearanceNotificationsDonationsMilestonesSubtitle;

  /// No description provided for @settingsAppearanceNotificationsDonationsUpdatesTitle.
  ///
  /// In en, this message translates to:
  /// **'Campaign updates'**
  String get settingsAppearanceNotificationsDonationsUpdatesTitle;

  /// No description provided for @settingsAppearanceNotificationsDonationsUpdatesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'From campaigns I donated to'**
  String get settingsAppearanceNotificationsDonationsUpdatesSubtitle;

  /// No description provided for @settingsAppearanceNotificationsDonationsWithdrawTitle.
  ///
  /// In en, this message translates to:
  /// **'Withdrawal status'**
  String get settingsAppearanceNotificationsDonationsWithdrawTitle;

  /// No description provided for @settingsAppearanceNotificationsDonationsWithdrawSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Processing, completed, or failed'**
  String get settingsAppearanceNotificationsDonationsWithdrawSubtitle;

  /// No description provided for @settingsAppearanceNotificationsMessagesSection.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get settingsAppearanceNotificationsMessagesSection;

  /// No description provided for @settingsAppearanceNotificationsMessagesDirect.
  ///
  /// In en, this message translates to:
  /// **'Direct messages'**
  String get settingsAppearanceNotificationsMessagesDirect;

  /// No description provided for @settingsAppearanceNotificationsMessagesRequests.
  ///
  /// In en, this message translates to:
  /// **'Message requests'**
  String get settingsAppearanceNotificationsMessagesRequests;

  /// No description provided for @settingsAppearanceNotificationsMessagesRequestsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'From people I don’t follow'**
  String get settingsAppearanceNotificationsMessagesRequestsSubtitle;

  /// No description provided for @settingsAppearanceNotificationsMessagesGroups.
  ///
  /// In en, this message translates to:
  /// **'Group invites'**
  String get settingsAppearanceNotificationsMessagesGroups;

  /// No description provided for @settingsAppearanceNotificationsSummaryTitle.
  ///
  /// In en, this message translates to:
  /// **'Notification summary'**
  String get settingsAppearanceNotificationsSummaryTitle;

  /// No description provided for @settingsAppearanceNotificationsSummarySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Get a daily or weekly digest instead of real-time notifications'**
  String get settingsAppearanceNotificationsSummarySubtitle;

  /// No description provided for @settingsAppearanceNotificationsSummaryOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get settingsAppearanceNotificationsSummaryOff;

  /// No description provided for @settingsAppearanceNotificationsSummaryDaily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get settingsAppearanceNotificationsSummaryDaily;

  /// No description provided for @settingsAppearanceNotificationsSummaryWeekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get settingsAppearanceNotificationsSummaryWeekly;

  /// No description provided for @settingsAppearanceNotificationsOtherSection.
  ///
  /// In en, this message translates to:
  /// **'Other channels'**
  String get settingsAppearanceNotificationsOtherSection;

  /// No description provided for @settingsAppearanceNotificationsOtherEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Email notifications'**
  String get settingsAppearanceNotificationsOtherEmailTitle;

  /// No description provided for @settingsAppearanceNotificationsOtherEmailSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Weekly digest and important updates'**
  String get settingsAppearanceNotificationsOtherEmailSubtitle;

  /// No description provided for @settingsAppearanceNotificationsOtherSmsTitle.
  ///
  /// In en, this message translates to:
  /// **'SMS notifications'**
  String get settingsAppearanceNotificationsOtherSmsTitle;

  /// No description provided for @settingsAppearanceNotificationsOtherSmsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Critical alerts only'**
  String get settingsAppearanceNotificationsOtherSmsSubtitle;

  /// No description provided for @settingsAppearanceAccessibilityTitle.
  ///
  /// In en, this message translates to:
  /// **'Accessibility'**
  String get settingsAppearanceAccessibilityTitle;

  /// No description provided for @settingsAppearanceAccessibilitySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tune typography and layout'**
  String get settingsAppearanceAccessibilitySubtitle;

  /// No description provided for @settingsAppearanceAccessibilityTabText.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get settingsAppearanceAccessibilityTabText;

  /// No description provided for @settingsAppearanceAccessibilityTabAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearanceAccessibilityTabAppearance;

  /// No description provided for @settingsAppearanceAccessibilityTabLayout.
  ///
  /// In en, this message translates to:
  /// **'Layout'**
  String get settingsAppearanceAccessibilityTabLayout;

  /// No description provided for @settingsAppearanceAccessibilityFontSizeTitle.
  ///
  /// In en, this message translates to:
  /// **'Font size'**
  String get settingsAppearanceAccessibilityFontSizeTitle;

  /// No description provided for @settingsAppearanceAccessibilityFontSizeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Preview adjusts live across Velora'**
  String get settingsAppearanceAccessibilityFontSizeSubtitle;

  /// No description provided for @settingsAppearanceAccessibilityFontSizeLabel.
  ///
  /// In en, this message translates to:
  /// **'{points} pt'**
  String settingsAppearanceAccessibilityFontSizeLabel(double points);

  /// No description provided for @settingsAppearanceAccessibilityFontSample.
  ///
  /// In en, this message translates to:
  /// **'Sample text at {points} pt'**
  String settingsAppearanceAccessibilityFontSample(double points);

  /// No description provided for @settingsAppearanceAccessibilityFontFamilyTitle.
  ///
  /// In en, this message translates to:
  /// **'Font family'**
  String get settingsAppearanceAccessibilityFontFamilyTitle;

  /// No description provided for @settingsAppearanceAccessibilityTextAlignmentTitle.
  ///
  /// In en, this message translates to:
  /// **'Text alignment'**
  String get settingsAppearanceAccessibilityTextAlignmentTitle;

  /// No description provided for @settingsAppearanceAccessibilityPreviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get settingsAppearanceAccessibilityPreviewTitle;

  /// No description provided for @settingsAppearanceAccessibilityPreviewBody.
  ///
  /// In en, this message translates to:
  /// **'Velora makes cities more human by giving everyone a place to take action.'**
  String get settingsAppearanceAccessibilityPreviewBody;

  /// No description provided for @settingsAppearanceAccessibilityAppearanceHighContrastTitle.
  ///
  /// In en, this message translates to:
  /// **'High contrast mode'**
  String get settingsAppearanceAccessibilityAppearanceHighContrastTitle;

  /// No description provided for @settingsAppearanceAccessibilityAppearanceHighContrastSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Improve clarity for text and icons'**
  String get settingsAppearanceAccessibilityAppearanceHighContrastSubtitle;

  /// No description provided for @settingsAppearanceAccessibilityAppearanceHighContrastToggle.
  ///
  /// In en, this message translates to:
  /// **'Enable high contrast UI'**
  String get settingsAppearanceAccessibilityAppearanceHighContrastToggle;

  /// No description provided for @settingsAppearanceAccessibilityAppearanceReduceTitle.
  ///
  /// In en, this message translates to:
  /// **'Reduce motion'**
  String get settingsAppearanceAccessibilityAppearanceReduceTitle;

  /// No description provided for @settingsAppearanceAccessibilityAppearanceReduceSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Limit parallax and large transitions'**
  String get settingsAppearanceAccessibilityAppearanceReduceSubtitle;

  /// No description provided for @settingsAppearanceAccessibilityAppearanceReduceToggle.
  ///
  /// In en, this message translates to:
  /// **'Minimize animations'**
  String get settingsAppearanceAccessibilityAppearanceReduceToggle;

  /// No description provided for @settingsAppearanceAccessibilityLayoutLineSpacing.
  ///
  /// In en, this message translates to:
  /// **'Line spacing'**
  String get settingsAppearanceAccessibilityLayoutLineSpacing;

  /// No description provided for @settingsAppearanceAccessibilityLayoutPreviewBody.
  ///
  /// In en, this message translates to:
  /// **'Velora makes cities more human by giving everyone a place to take action.\nStories, fundraisers, and field reports appear here.'**
  String get settingsAppearanceAccessibilityLayoutPreviewBody;

  /// No description provided for @settingsAccountStatusTitle.
  ///
  /// In en, this message translates to:
  /// **'Account status'**
  String get settingsAccountStatusTitle;

  /// No description provided for @settingsAccountStatusSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your account health and verification'**
  String get settingsAccountStatusSubtitle;

  /// No description provided for @settingsAccountStatusInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Account information'**
  String get settingsAccountStatusInfoTitle;

  /// No description provided for @settingsAccountStatusStandingTitle.
  ///
  /// In en, this message translates to:
  /// **'Account in good standing'**
  String get settingsAccountStatusStandingTitle;

  /// No description provided for @settingsAccountStatusStandingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'No restrictions detected'**
  String get settingsAccountStatusStandingSubtitle;

  /// No description provided for @settingsAccountStatusEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Email verified'**
  String get settingsAccountStatusEmailTitle;

  /// No description provided for @settingsAccountStatusPhoneTitle.
  ///
  /// In en, this message translates to:
  /// **'Phone verified'**
  String get settingsAccountStatusPhoneTitle;

  /// No description provided for @settingsAccountStatusMetricsTitle.
  ///
  /// In en, this message translates to:
  /// **'Account metrics'**
  String get settingsAccountStatusMetricsTitle;

  /// No description provided for @settingsAccountStatusMemberSinceTitle.
  ///
  /// In en, this message translates to:
  /// **'Member since'**
  String get settingsAccountStatusMemberSinceTitle;

  /// No description provided for @settingsAccountStatusDonationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Total donations'**
  String get settingsAccountStatusDonationsTitle;

  /// No description provided for @settingsAccountStatusCampaignsTitle.
  ///
  /// In en, this message translates to:
  /// **'Campaigns created'**
  String get settingsAccountStatusCampaignsTitle;

  /// No description provided for @settingsAccountActivityTitle.
  ///
  /// In en, this message translates to:
  /// **'Your activity'**
  String get settingsAccountActivityTitle;

  /// No description provided for @settingsAccountActivitySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Review your interactions and history'**
  String get settingsAccountActivitySubtitle;

  /// No description provided for @settingsAccountActivityTabLikes.
  ///
  /// In en, this message translates to:
  /// **'Likes'**
  String get settingsAccountActivityTabLikes;

  /// No description provided for @settingsAccountActivityTabComments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get settingsAccountActivityTabComments;

  /// No description provided for @settingsAccountActivityTabDonations.
  ///
  /// In en, this message translates to:
  /// **'Donations'**
  String get settingsAccountActivityTabDonations;

  /// No description provided for @settingsAccountActivityTabArchive.
  ///
  /// In en, this message translates to:
  /// **'Archive'**
  String get settingsAccountActivityTabArchive;

  /// No description provided for @settingsAccountActivityTabDeleted.
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get settingsAccountActivityTabDeleted;

  /// No description provided for @settingsAccountActivityRecentLikes.
  ///
  /// In en, this message translates to:
  /// **'Recent likes'**
  String get settingsAccountActivityRecentLikes;

  /// No description provided for @settingsAccountActivityRecentComments.
  ///
  /// In en, this message translates to:
  /// **'Recent comments'**
  String get settingsAccountActivityRecentComments;

  /// No description provided for @settingsAccountActivityArchived.
  ///
  /// In en, this message translates to:
  /// **'Archived'**
  String get settingsAccountActivityArchived;

  /// No description provided for @settingsAccountActivityRestoreButton.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get settingsAccountActivityRestoreButton;

  /// No description provided for @settingsAccountActivityDeletedEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No deleted items'**
  String get settingsAccountActivityDeletedEmptyTitle;

  /// No description provided for @settingsAccountActivityDeletedEmptySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Items you delete will appear here for 30 days before being permanently removed.'**
  String get settingsAccountActivityDeletedEmptySubtitle;

  /// No description provided for @settingsAccountDonationsTitle.
  ///
  /// In en, this message translates to:
  /// **'My donations'**
  String get settingsAccountDonationsTitle;

  /// No description provided for @settingsAccountDonationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'History and impact of your giving'**
  String get settingsAccountDonationsSubtitle;

  /// No description provided for @settingsAccountDonationsImpactTitle.
  ///
  /// In en, this message translates to:
  /// **'Impact overview'**
  String get settingsAccountDonationsImpactTitle;

  /// No description provided for @settingsAccountDonationsTotalLabel.
  ///
  /// In en, this message translates to:
  /// **'Total donated'**
  String get settingsAccountDonationsTotalLabel;

  /// No description provided for @settingsAccountDonationsCampaignsLabel.
  ///
  /// In en, this message translates to:
  /// **'Campaigns'**
  String get settingsAccountDonationsCampaignsLabel;

  /// No description provided for @settingsAccountDonationsThisMonthLabel.
  ///
  /// In en, this message translates to:
  /// **'This month'**
  String get settingsAccountDonationsThisMonthLabel;

  /// No description provided for @settingsAccountDonationsRecurringLabel.
  ///
  /// In en, this message translates to:
  /// **'Recurring'**
  String get settingsAccountDonationsRecurringLabel;

  /// No description provided for @campaignSeeMore.
  ///
  /// In en, this message translates to:
  /// **'See More'**
  String get campaignSeeMore;

  /// No description provided for @campaignFeaturedTitle.
  ///
  /// In en, this message translates to:
  /// **'Featured Campaigns'**
  String get campaignFeaturedTitle;

  /// No description provided for @campaignEmergencyTitle.
  ///
  /// In en, this message translates to:
  /// **'Emergency Fundraisers'**
  String get campaignEmergencyTitle;

  /// No description provided for @campaignSocialImpactTitle.
  ///
  /// In en, this message translates to:
  /// **'Social Impact'**
  String get campaignSocialImpactTitle;

  /// No description provided for @campaignTechnologyTitle.
  ///
  /// In en, this message translates to:
  /// **'Technology'**
  String get campaignTechnologyTitle;

  /// No description provided for @campaignFashionTitle.
  ///
  /// In en, this message translates to:
  /// **'Fashion'**
  String get campaignFashionTitle;

  /// No description provided for @campaignFoodBeverageTitle.
  ///
  /// In en, this message translates to:
  /// **'Food & Beverage'**
  String get campaignFoodBeverageTitle;

  /// No description provided for @campaignFinanceTitle.
  ///
  /// In en, this message translates to:
  /// **'Finance'**
  String get campaignFinanceTitle;

  /// No description provided for @campaignMemorialTitle.
  ///
  /// In en, this message translates to:
  /// **'Memorial Fundraisers'**
  String get campaignMemorialTitle;

  /// No description provided for @campaignRaisedOf.
  ///
  /// In en, this message translates to:
  /// **'raised of {target}'**
  String campaignRaisedOf(String target);

  /// No description provided for @campaignEndOfList.
  ///
  /// In en, this message translates to:
  /// **'No more campaigns'**
  String get campaignEndOfList;

  /// No description provided for @searchTitle.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchTitle;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'What do you want to find?'**
  String get searchHint;

  /// No description provided for @searchDiscoverTitle.
  ///
  /// In en, this message translates to:
  /// **'Discover something new'**
  String get searchDiscoverTitle;

  /// No description provided for @searchBrowseAllTitle.
  ///
  /// In en, this message translates to:
  /// **'Browse all'**
  String get searchBrowseAllTitle;

  /// No description provided for @settingsAccountDonationsRecurringValue.
  ///
  /// In en, this message translates to:
  /// **'{count} active'**
  String settingsAccountDonationsRecurringValue(int count);

  /// No description provided for @settingsAccountDonationsMatchedLabel.
  ///
  /// In en, this message translates to:
  /// **'Matched'**
  String get settingsAccountDonationsMatchedLabel;

  /// No description provided for @settingsAccountDonationsFilterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get settingsAccountDonationsFilterAll;

  /// No description provided for @settingsAccountDonationsFilterRecurring.
  ///
  /// In en, this message translates to:
  /// **'Recurring'**
  String get settingsAccountDonationsFilterRecurring;

  /// No description provided for @settingsAccountDonationsFilterMatched.
  ///
  /// In en, this message translates to:
  /// **'Matched'**
  String get settingsAccountDonationsFilterMatched;

  /// No description provided for @settingsAccountDonationsExportButton.
  ///
  /// In en, this message translates to:
  /// **'Export all receipts'**
  String get settingsAccountDonationsExportButton;

  /// No description provided for @settingsAccountDonationsExportingToast.
  ///
  /// In en, this message translates to:
  /// **'Exporting donation history...'**
  String get settingsAccountDonationsExportingToast;

  /// No description provided for @settingsAccountDonationsStatusRecurring.
  ///
  /// In en, this message translates to:
  /// **'RECURRING'**
  String get settingsAccountDonationsStatusRecurring;

  /// No description provided for @settingsAccountDonationsStatusMatched.
  ///
  /// In en, this message translates to:
  /// **'MATCHED'**
  String get settingsAccountDonationsStatusMatched;

  /// No description provided for @settingsAccountDonationsEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No donations yet'**
  String get settingsAccountDonationsEmptyTitle;

  /// No description provided for @settingsAccountDonationsEmptySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Start making a difference by supporting campaigns that matter to you.'**
  String get settingsAccountDonationsEmptySubtitle;

  /// No description provided for @settingsAccountDonationsEmptyButton.
  ///
  /// In en, this message translates to:
  /// **'Explore campaigns'**
  String get settingsAccountDonationsEmptyButton;

  /// No description provided for @settingsHelpCenterTitle.
  ///
  /// In en, this message translates to:
  /// **'Help center'**
  String get settingsHelpCenterTitle;

  /// No description provided for @settingsHelpCenterSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Support & safety resources'**
  String get settingsHelpCenterSubtitle;

  /// No description provided for @settingsHelpPrioritySemantics.
  ///
  /// In en, this message translates to:
  /// **'Priority support highlight'**
  String get settingsHelpPrioritySemantics;

  /// No description provided for @settingsHelpPriorityTitle.
  ///
  /// In en, this message translates to:
  /// **'Priority support'**
  String get settingsHelpPriorityTitle;

  /// No description provided for @settingsHelpPrioritySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Our safety team typically replies within 2 hours for verified campaigners.'**
  String get settingsHelpPrioritySubtitle;

  /// No description provided for @settingsHelpSupportOptionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Support options'**
  String get settingsHelpSupportOptionsTitle;

  /// No description provided for @settingsHelpFaqTileTitle.
  ///
  /// In en, this message translates to:
  /// **'Frequently asked questions'**
  String get settingsHelpFaqTileTitle;

  /// No description provided for @settingsHelpFaqTileSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Instant answers curated for you'**
  String get settingsHelpFaqTileSubtitle;

  /// No description provided for @settingsHelpEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Email support'**
  String get settingsHelpEmailTitle;

  /// No description provided for @settingsHelpEmailSubtitle.
  ///
  /// In en, this message translates to:
  /// **'support@velora.app'**
  String get settingsHelpEmailSubtitle;

  /// No description provided for @settingsHelpReportTitle.
  ///
  /// In en, this message translates to:
  /// **'Report a problem'**
  String get settingsHelpReportTitle;

  /// No description provided for @settingsHelpReportSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Bug, abuse, harassment'**
  String get settingsHelpReportSubtitle;

  /// No description provided for @settingsHelpGuidesTitle.
  ///
  /// In en, this message translates to:
  /// **'Guides'**
  String get settingsHelpGuidesTitle;

  /// No description provided for @settingsHelpCommunityGuidelinesTitle.
  ///
  /// In en, this message translates to:
  /// **'Community guidelines'**
  String get settingsHelpCommunityGuidelinesTitle;

  /// No description provided for @settingsHelpCommunityGuidelinesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Updated February 2025'**
  String get settingsHelpCommunityGuidelinesSubtitle;

  /// No description provided for @settingsHelpSecurityChecklistTitle.
  ///
  /// In en, this message translates to:
  /// **'Security checklist'**
  String get settingsHelpSecurityChecklistTitle;

  /// No description provided for @settingsHelpSecurityChecklistSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Keep your account safer'**
  String get settingsHelpSecurityChecklistSubtitle;

  /// No description provided for @settingsHelpReportSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'Report a problem'**
  String get settingsHelpReportSheetTitle;

  /// No description provided for @settingsHelpReportHint.
  ///
  /// In en, this message translates to:
  /// **'Describe what happened…'**
  String get settingsHelpReportHint;

  /// No description provided for @settingsHelpReportThanks.
  ///
  /// In en, this message translates to:
  /// **'Thanks for the report'**
  String get settingsHelpReportThanks;

  /// No description provided for @settingsHelpReportSendButton.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get settingsHelpReportSendButton;

  /// No description provided for @settingsHelpFaqTitle.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get settingsHelpFaqTitle;

  /// No description provided for @settingsHelpFaqSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Popular help topics'**
  String get settingsHelpFaqSubtitle;

  /// No description provided for @settingsHelpFaqQuestion1.
  ///
  /// In en, this message translates to:
  /// **'How does Velora verify campaigns?'**
  String get settingsHelpFaqQuestion1;

  /// No description provided for @settingsHelpFaqAnswer1.
  ///
  /// In en, this message translates to:
  /// **'Every campaign passes through a trust checklist, including beneficiary validation, identity documents, and transparency milestones.'**
  String get settingsHelpFaqAnswer1;

  /// No description provided for @settingsHelpFaqQuestion2.
  ///
  /// In en, this message translates to:
  /// **'Can I hide my donation amount?'**
  String get settingsHelpFaqQuestion2;

  /// No description provided for @settingsHelpFaqAnswer2.
  ///
  /// In en, this message translates to:
  /// **'Yes. When donating, choose the \"Anonymous amount\" option and only your avatar will be shown.'**
  String get settingsHelpFaqAnswer2;

  /// No description provided for @settingsHelpFaqQuestion3.
  ///
  /// In en, this message translates to:
  /// **'What if I lose access to my account?'**
  String get settingsHelpFaqQuestion3;

  /// No description provided for @settingsHelpFaqAnswer3.
  ///
  /// In en, this message translates to:
  /// **'Use the recovery kit inside Password & security. You can pre-authorize trusted contacts to approve your login.'**
  String get settingsHelpFaqAnswer3;

  /// No description provided for @settingsHelpFaqQuestion4.
  ///
  /// In en, this message translates to:
  /// **'How do I manage notifications?'**
  String get settingsHelpFaqQuestion4;

  /// No description provided for @settingsHelpFaqAnswer4.
  ///
  /// In en, this message translates to:
  /// **'Head to Notifications settings to configure push, email, and SMS alerts for each campaign type.'**
  String get settingsHelpFaqAnswer4;

  /// No description provided for @settingsHelpAboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About Velora'**
  String get settingsHelpAboutTitle;

  /// No description provided for @settingsHelpAboutSemantics.
  ///
  /// In en, this message translates to:
  /// **'Velora brand summary'**
  String get settingsHelpAboutSemantics;

  /// No description provided for @settingsHelpAboutBrandName.
  ///
  /// In en, this message translates to:
  /// **'Velora'**
  String get settingsHelpAboutBrandName;

  /// No description provided for @settingsHelpAboutTagline.
  ///
  /// In en, this message translates to:
  /// **'Empowering generosity'**
  String get settingsHelpAboutTagline;

  /// No description provided for @settingsHelpAboutVersion.
  ///
  /// In en, this message translates to:
  /// **'Version 1.0.0 (Build 1)'**
  String get settingsHelpAboutVersion;

  /// No description provided for @settingsHelpAboutWhyTitle.
  ///
  /// In en, this message translates to:
  /// **'Why Velora'**
  String get settingsHelpAboutWhyTitle;

  /// No description provided for @settingsHelpAboutWhyDescription.
  ///
  /// In en, this message translates to:
  /// **'Velora is a social impact platform that connects generous people with meaningful causes. Together, we make the world kinder.'**
  String get settingsHelpAboutWhyDescription;

  /// No description provided for @settingsHelpAboutStatCampaigns.
  ///
  /// In en, this message translates to:
  /// **'1M+ Campaigns'**
  String get settingsHelpAboutStatCampaigns;

  /// No description provided for @settingsHelpAboutStatSupporters.
  ///
  /// In en, this message translates to:
  /// **'5M+ Supporters'**
  String get settingsHelpAboutStatSupporters;

  /// No description provided for @settingsHelpAboutStatTrust.
  ///
  /// In en, this message translates to:
  /// **'Trust-first'**
  String get settingsHelpAboutStatTrust;

  /// No description provided for @settingsHelpAboutConnectTitle.
  ///
  /// In en, this message translates to:
  /// **'Connect with us'**
  String get settingsHelpAboutConnectTitle;

  /// No description provided for @settingsHelpAboutSocialWebsite.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get settingsHelpAboutSocialWebsite;

  /// No description provided for @settingsHelpAboutSocialInstagram.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get settingsHelpAboutSocialInstagram;

  /// No description provided for @settingsHelpAboutSocialThreads.
  ///
  /// In en, this message translates to:
  /// **'Threads'**
  String get settingsHelpAboutSocialThreads;

  /// No description provided for @settingsHelpAboutSocialFacebook.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get settingsHelpAboutSocialFacebook;

  /// No description provided for @settingsHelpAboutLegalTitle.
  ///
  /// In en, this message translates to:
  /// **'Legal'**
  String get settingsHelpAboutLegalTitle;

  /// No description provided for @settingsHelpAboutDevTitle.
  ///
  /// In en, this message translates to:
  /// **'Development team'**
  String get settingsHelpAboutDevTitle;

  /// No description provided for @settingsHelpAboutDevOrgSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Product, design, and engineering'**
  String get settingsHelpAboutDevOrgSubtitle;

  /// No description provided for @settingsHelpAboutDevFounderSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Founder & lead developer'**
  String get settingsHelpAboutDevFounderSubtitle;

  /// No description provided for @settingsHelpAboutContactTitle.
  ///
  /// In en, this message translates to:
  /// **'Contact & support'**
  String get settingsHelpAboutContactTitle;

  /// No description provided for @settingsHelpAboutLiveChatTitle.
  ///
  /// In en, this message translates to:
  /// **'Live chat'**
  String get settingsHelpAboutLiveChatTitle;

  /// No description provided for @settingsHelpAboutLiveChatSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Available 9 AM – 6 PM'**
  String get settingsHelpAboutLiveChatSubtitle;

  /// No description provided for @settingsHelpAboutReportBugTitle.
  ///
  /// In en, this message translates to:
  /// **'Report a bug'**
  String get settingsHelpAboutReportBugTitle;

  /// No description provided for @settingsHelpAboutReportBugSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Help us improve Velora'**
  String get settingsHelpAboutReportBugSubtitle;

  /// No description provided for @settingsHelpAboutSuggestFeatureTitle.
  ///
  /// In en, this message translates to:
  /// **'Suggest a feature'**
  String get settingsHelpAboutSuggestFeatureTitle;

  /// No description provided for @settingsHelpAboutSuggestFeatureSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Share product ideas with us'**
  String get settingsHelpAboutSuggestFeatureSubtitle;

  /// No description provided for @settingsHelpAboutPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get settingsHelpAboutPrivacy;

  /// No description provided for @settingsHelpAboutTerms.
  ///
  /// In en, this message translates to:
  /// **'Terms of service'**
  String get settingsHelpAboutTerms;

  /// No description provided for @settingsHelpAboutCookie.
  ///
  /// In en, this message translates to:
  /// **'Cookie policy'**
  String get settingsHelpAboutCookie;

  /// No description provided for @settingsHelpAboutLicenses.
  ///
  /// In en, this message translates to:
  /// **'Open source licenses'**
  String get settingsHelpAboutLicenses;

  /// No description provided for @settingsHelpAboutEnjoyTitle.
  ///
  /// In en, this message translates to:
  /// **'Enjoying Velora?'**
  String get settingsHelpAboutEnjoyTitle;

  /// No description provided for @settingsHelpAboutEnjoySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Rate us and help others discover Velora.'**
  String get settingsHelpAboutEnjoySubtitle;

  /// No description provided for @settingsHelpAboutRateButton.
  ///
  /// In en, this message translates to:
  /// **'Rate Velora'**
  String get settingsHelpAboutRateButton;

  /// No description provided for @settingsHelpAboutAcknowledgementsTitle.
  ///
  /// In en, this message translates to:
  /// **'Acknowledgements'**
  String get settingsHelpAboutAcknowledgementsTitle;

  /// No description provided for @settingsHelpAboutAcknowledgementsThanks.
  ///
  /// In en, this message translates to:
  /// **'Thanks to our contributors, beta testers, and the Flutter community for bringing Velora to life.'**
  String get settingsHelpAboutAcknowledgementsThanks;

  /// No description provided for @settingsHelpAboutAcknowledgementFlutter.
  ///
  /// In en, this message translates to:
  /// **'Flutter'**
  String get settingsHelpAboutAcknowledgementFlutter;

  /// No description provided for @settingsHelpAboutAcknowledgementDart.
  ///
  /// In en, this message translates to:
  /// **'Dart'**
  String get settingsHelpAboutAcknowledgementDart;

  /// No description provided for @settingsHelpAboutAcknowledgementFirebase.
  ///
  /// In en, this message translates to:
  /// **'Firebase'**
  String get settingsHelpAboutAcknowledgementFirebase;

  /// No description provided for @settingsHelpAboutAcknowledgementSupabase.
  ///
  /// In en, this message translates to:
  /// **'Supabase'**
  String get settingsHelpAboutAcknowledgementSupabase;

  /// No description provided for @settingsHelpAboutAcknowledgementMaterial.
  ///
  /// In en, this message translates to:
  /// **'Material Design'**
  String get settingsHelpAboutAcknowledgementMaterial;

  /// No description provided for @settingsHelpAboutFooterCopyright.
  ///
  /// In en, this message translates to:
  /// **'© 2025 VitoTechLab. All rights reserved.'**
  String get settingsHelpAboutFooterCopyright;

  /// No description provided for @settingsHelpAboutFooterMadeWith.
  ///
  /// In en, this message translates to:
  /// **'Made with ❤️ for a better world'**
  String get settingsHelpAboutFooterMadeWith;

  /// No description provided for @chatGallerySelectPhotos.
  ///
  /// In en, this message translates to:
  /// **'Select Photos'**
  String get chatGallerySelectPhotos;

  /// No description provided for @chatGallerySelectAtLeastOne.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one image'**
  String get chatGallerySelectAtLeastOne;

  /// No description provided for @chatGalleryUnableToLoad.
  ///
  /// In en, this message translates to:
  /// **'Unable to load the selected images'**
  String get chatGalleryUnableToLoad;

  /// No description provided for @chatGallerySomeImagesNotAccessed.
  ///
  /// In en, this message translates to:
  /// **'Some images could not be accessed'**
  String get chatGallerySomeImagesNotAccessed;

  /// No description provided for @chatGallerySend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get chatGallerySend;

  /// No description provided for @chatGallerySendCount.
  ///
  /// In en, this message translates to:
  /// **'Send ({count})'**
  String chatGallerySendCount(int count);

  /// No description provided for @chatGallerySelectedCount.
  ///
  /// In en, this message translates to:
  /// **'{selected} of {max} selected'**
  String chatGallerySelectedCount(int selected, int max);

  /// No description provided for @chatGalleryClearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get chatGalleryClearAll;

  /// No description provided for @chatDocumentTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Documents'**
  String get chatDocumentTitle;

  /// No description provided for @chatDocumentSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get chatDocumentSend;

  /// No description provided for @chatDocumentSendCount.
  ///
  /// In en, this message translates to:
  /// **'Send ({count})'**
  String chatDocumentSendCount(int count);

  /// No description provided for @chatDocumentSelectedCount.
  ///
  /// In en, this message translates to:
  /// **'{selected} of {max} selected'**
  String chatDocumentSelectedCount(int selected, int max);

  /// No description provided for @chatDocumentClearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get chatDocumentClearAll;

  /// No description provided for @chatDocumentMaxReached.
  ///
  /// In en, this message translates to:
  /// **'Maximum {max} documents allowed'**
  String chatDocumentMaxReached(int max);

  /// No description provided for @chatDocumentSomeLimited.
  ///
  /// In en, this message translates to:
  /// **'Some files were skipped (max {max})'**
  String chatDocumentSomeLimited(int max);

  /// No description provided for @chatDocumentPickError.
  ///
  /// In en, this message translates to:
  /// **'Failed to pick documents'**
  String get chatDocumentPickError;

  /// No description provided for @chatDocumentSelectAtLeastOne.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one document'**
  String get chatDocumentSelectAtLeastOne;

  /// No description provided for @chatDocumentEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No documents selected'**
  String get chatDocumentEmptyTitle;

  /// No description provided for @chatDocumentEmptySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap the button below to browse and select files'**
  String get chatDocumentEmptySubtitle;

  /// No description provided for @chatDocumentBrowseFiles.
  ///
  /// In en, this message translates to:
  /// **'Browse Files'**
  String get chatDocumentBrowseFiles;

  /// No description provided for @chatDocumentAddMore.
  ///
  /// In en, this message translates to:
  /// **'Add more documents'**
  String get chatDocumentAddMore;

  /// No description provided for @mediaPreviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get mediaPreviewTitle;

  /// No description provided for @mediaPreviewAddCaption.
  ///
  /// In en, this message translates to:
  /// **'Add a caption...'**
  String get mediaPreviewAddCaption;

  /// No description provided for @mediaPreviewRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get mediaPreviewRemove;

  /// No description provided for @mediaPreviewSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get mediaPreviewSend;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id', 'ja', 'ko', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'id':
      return AppLocalizationsId();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
