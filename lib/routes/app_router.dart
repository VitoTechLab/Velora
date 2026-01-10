import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/domain/entities/auth_status.dart';
import 'package:velora/features/auth/presentation/screens/auth_screens.dart';
import 'package:velora/features/campaign/presentation/screens/campaign_screen.dart';
import 'package:velora/features/chat/presentation/screens/chat_screen.dart';
import 'package:velora/features/chat/presentation/screens/chat_search_screen.dart';
import 'package:velora/features/chat/presentation/screens/search_follow_user_screen.dart';
import 'package:velora/features/media/presentation/screens/media_gallery_screen.dart';
import 'package:velora/features/navigation/models/create_post_media_args.dart';
import 'package:velora/features/navigation/models/more_option_post_args.dart';
import 'package:velora/features/navigation/models/profile_field_edit_args.dart';
import 'package:velora/features/navigation/navigation_keys.dart';
import 'package:velora/features/navigation/presentation/pages/app_shell.dart';
import 'package:velora/features/navigation/presentation/widgets/adaptive_branch_container.dart';
import 'package:velora/features/navigation/services/navigation_service.dart';
import 'package:velora/features/post/presentation/screens/create_post_screen.dart';
import 'package:velora/features/post/presentation/screens/more_option_post_screen.dart';
import 'package:velora/features/profile/presentation/screens/profile_screen.dart';
import 'package:velora/features/profile/presentation/screens/other_user_profile_screen.dart';
import 'package:velora/features/settings/domain/entities/user_preferences.dart';
import 'package:velora/features/settings/presentation/screens/account/account_status_screen.dart';
import 'package:velora/features/settings/presentation/screens/account/activity_screen.dart';
import 'package:velora/features/settings/presentation/screens/account/my_donation_screen.dart';
import 'package:velora/features/settings/presentation/screens/appearance/accessibility_screen.dart';
import 'package:velora/features/settings/presentation/screens/appearance/language_screen.dart';
import 'package:velora/features/settings/presentation/screens/appearance/notification_detail_screen.dart';
import 'package:velora/features/settings/presentation/screens/appearance/theme_screen.dart';
import 'package:velora/features/settings/presentation/screens/help/about_screen.dart';
import 'package:velora/features/settings/presentation/screens/help/faq_screen.dart';
import 'package:velora/features/settings/presentation/screens/help/help_screen.dart';
import 'package:velora/features/settings/presentation/screens/profile/edit_profile_screen.dart';
import 'package:velora/features/settings/presentation/screens/profile/profile_detail_screen.dart';
import 'package:velora/features/settings/presentation/screens/profile/profile_field_edit_screen.dart';
import 'package:velora/features/settings/presentation/screens/security/password_security_screen.dart';
import 'package:velora/features/settings/presentation/screens/security/privacy_screen.dart';
import 'package:velora/features/settings/presentation/screens/settings_screen.dart';
import 'package:velora/l10n/app_localizations.dart';

import 'package:velora/features/feed/presentation/screens/feed_screen.dart';
import 'package:velora/features/notification/presentation/screens/notification_screen.dart';

class AppRouter {
  AppRouter(
    this.navigationService,
    UserPreferences userPreferences,
    AuthBloc authBloc,
  ) : router = GoRouter(
        navigatorKey: navigationService.navigatorKey,
        initialLocation: AppRoutePath.home,
        refreshListenable: GoRouterRefreshStream(authBloc.stream),
        redirect: (context, state) {
          final status = authBloc.state.status;

          final loggingIn = state.matchedLocation == AppRoutePath.signIn;
          final signingUp = state.matchedLocation == AppRoutePath.signUp;
          final resetting = state.matchedLocation == AppRoutePath.resetPassword;
          final verifying =
              state.matchedLocation == AppRoutePath.verificationEmail;
          final onSplash = state.matchedLocation == AppRoutePath.splash;

          if (status == AuthStatus.unknown) {
            // Show splash screen while checking auth
            if (!onSplash) {
              return AppRoutePath.splash;
            }
            return null;
          }

          if (status == AuthStatus.unauthenticated) {
            if (loggingIn || signingUp || resetting) return null;
            return AppRoutePath.signIn;
          }

          if (status == AuthStatus.emailUnverified) {
            if (!verifying) {
              return AppRoutePath.verificationEmail;
            }
            return null;
          }

          if (status == AuthStatus.authenticated) {
            final isAuthRoute =
                loggingIn || signingUp || resetting || verifying;
            if (isAuthRoute) {
              return AppRoutePath.home;
            }
          }

          if (state.matchedLocation == '/') {
            return AppRoutePath.home;
          }

          return null;
        },
        routes: [
          GoRoute(
            path: AppRoutePath.splash,
            name: AppRouteName.splash,
            builder: (context, state) => const SplashScreen(),
          ),
          GoRoute(
            path: AppRoutePath.signIn,
            name: AppRouteName.signIn,
            builder: (context, state) => const LoginScreen(),
          ),
          GoRoute(
            path: AppRoutePath.signUp,
            name: AppRouteName.signUp,
            builder: (context, state) => const SignUpScreen(),
          ),
          GoRoute(
            path: AppRoutePath.resetPassword,
            name: AppRouteName.resetPassword,
            builder: (context, state) => const ResetPasswordScreen(),
          ),
          GoRoute(
            path: AppRoutePath.verificationEmail,
            name: AppRouteName.verificationEmail,
            builder: (context, state) => const VerificationEmailScreen(),
          ),
          GoRoute(
            path: AppRoutePath.mediaGallery,
            name: AppRouteName.mediaGallery,
            parentNavigatorKey: navigationService.navigatorKey, // root
            builder: (context, state) => const MediaGalleryScreen(),
          ),
          StatefulShellRoute(
            builder: (context, state, navigationShell) =>
                AppShell(navigationShell: navigationShell),
            navigatorContainerBuilder: (context, navigationShell, children) =>
                AdaptiveBranchContainer(
                  navigationShell: navigationShell,
                  userPreferences: userPreferences,
                  children: children,
                ),
            branches: [
              StatefulShellBranch(
                navigatorKey: NavigationKeys.homeBranch,
                routes: [
                  GoRoute(
                    path: AppRoutePath.home,
                    name: AppRouteName.home,
                    builder: (context, state) => const FeedScreen(),
                    routes: [
                      GoRoute(
                        path: AppRouteSinglePath.notification,
                        name: AppRouteName.notification,
                        parentNavigatorKey:
                            navigationService.navigatorKey, // root
                        builder: (context, state) => const NotificationScreen(),
                      ),
                      GoRoute(
                        path: AppRouteSinglePath.userProfile,
                        name: AppRouteName.userProfile,
                        parentNavigatorKey:
                            navigationService.navigatorKey, // root
                        builder: (context, state) {
                          final userId = state.pathParameters['userId'];
                          if (userId == null || userId.isEmpty) {
                            return const Scaffold(
                              body: Center(child: Text('User not found')),
                            );
                          }
                          return OtherUserProfileScreen(userId: userId);
                        },
                      ),
                      GoRoute(
                        path: AppRouteSinglePath.createPost,
                        name: AppRouteName.createPost,
                        parentNavigatorKey:
                            navigationService.navigatorKey, // root
                        builder: (context, state) {
                          final args = state.extra as CreatePostMediaArgs?;
                          if (args == null) {
                            // No media provided, redirect to gallery
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              if (context.mounted) {
                                context.goNamed(AppRouteName.mediaGallery);
                              }
                            });
                            return const SizedBox.shrink();
                          }
                          return CreatePostScreen(
                            selectedMedia: args.selectedMedia ?? [],
                          );
                        },
                        routes: [
                          GoRoute(
                            path: AppRouteSinglePath.moreOptions,
                            name: AppRouteName.moreOptions,
                            parentNavigatorKey:
                                navigationService.navigatorKey, // root
                            builder: (context, state) {
                              final args = state.extra as MoreOptionPostArgs;
                              return MoreOptionPostScreen(
                                initialOptions: args.initialOptions,
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              StatefulShellBranch(
                navigatorKey: NavigationKeys.searchBranch,
                routes: [
                  GoRoute(
                    path: AppRoutePath.search,
                    name: AppRouteName.search,
                    builder: (context, state) => const ChatSearchScreen(),
                  ),
                ],
              ),
              StatefulShellBranch(
                navigatorKey: NavigationKeys.chatBranch,
                routes: [
                  GoRoute(
                    path: AppRoutePath.chat,
                    name: AppRouteName.chat,
                    builder: (context, state) => const ChatScreen(),
                    routes: [
                      GoRoute(
                        path: AppRouteSinglePath.searchFollowUser,
                        name: AppRouteName.searchFollowUser,
                        builder: (context, state) =>
                            const SearchFollowUserScreen(),
                      ),
                    ],
                  ),
                ],
              ),
              StatefulShellBranch(
                navigatorKey: NavigationKeys.campaignBranch,
                routes: [
                  GoRoute(
                    path: AppRoutePath.campaign,
                    name: AppRouteName.campaign,
                    builder: (context, state) => const CampaignScreen(),
                  ),
                ],
              ),
              StatefulShellBranch(
                navigatorKey: NavigationKeys.profileBranch,
                routes: [
                  GoRoute(
                    path: AppRoutePath.profile,
                    name: AppRouteName.profile,
                    builder: (context, state) => const ProfileScreen(),
                    routes: [
                      GoRoute(
                        path: AppRouteSinglePath.settings,
                        name: AppRouteName.settings,
                        parentNavigatorKey: navigationService.navigatorKey,
                        builder: (context, state) => const SettingScreen(),
                        routes: [
                          GoRoute(
                            path: AppRouteSinglePath.settingsProfiles,
                            name: AppRouteName.settingsProfiles,
                            parentNavigatorKey:
                                navigationService.navigatorKey, // root
                            builder: (context, state) =>
                                const ProfileDetailScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsActivity,
                            name: AppRouteName.settingsActivity,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) => const ActivityScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsAccountStatus,
                            name: AppRouteName.settingsAccountStatus,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) =>
                                const AccountStatusScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsPasswordSecurity,
                            name: AppRouteName.settingsPasswordSecurity,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) =>
                                const PasswordSecurityScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsEditProfile,
                            name: AppRouteName.settingsEditProfile,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) =>
                                const EditProfileScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsPrivacy,
                            name: AppRouteName.settingsPrivacy,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) => const PrivacyScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsMyDonation,
                            name: AppRouteName.settingsMyDonation,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) =>
                                const MyDonationScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsNotificationDetail,
                            name: AppRouteName.settingsNotificationDetail,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) =>
                                const NotificationDetailScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsTheme,
                            name: AppRouteName.settingsTheme,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) => const ThemeScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsLanguage,
                            name: AppRouteName.settingsLanguage,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) => const LanguageScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsAccessibility,
                            name: AppRouteName.settingsAccessibility,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) =>
                                const AccessibilityScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsHelp,
                            name: AppRouteName.settingsHelp,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) => const HelpScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsFaq,
                            name: AppRouteName.settingsFaq,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) => const FaqScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsAbout,
                            name: AppRouteName.settingsAbout,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) => const AboutScreen(),
                          ),
                          GoRoute(
                            path: AppRouteSinglePath.settingsProfileFieldEdit,
                            name: AppRouteName.settingsProfileFieldEdit,
                            parentNavigatorKey: navigationService.navigatorKey,
                            builder: (context, state) {
                              final t = AppLocalizations.of(context)!;
                              final args = state.extra as ProfileFieldEditArgs?;
                              if (args == null) {
                                return ProfileFieldEditScreen(
                                  title:
                                      t.settingsProfileFieldEditFallbackTitle,
                                  label:
                                      t.settingsProfileFieldEditFallbackLabel,
                                  saveLabel: t.settingsProfileFieldSave,
                                );
                              }
                              return ProfileFieldEditScreen(
                                title: args.title,
                                label: args.label,
                                initialValue: args.initialValue,
                                helperText: args.helperText,
                                keyboardType: args.keyboardType,
                                maxLines: args.maxLines,
                                hintText: args.hintText,
                                saveLabel:
                                    args.saveLabel ??
                                    t.settingsProfileFieldSave,
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      );

  final GoRouter router;
  final NavigationService navigationService;
}

class AppRouteName {
  static const splash = 'splash';
  static const home = 'home';
  static const mediaGallery = 'mediaGallery';
  static const notification = 'notification';
  static const userProfile = 'userProfile';
  static const createPost = 'createPost';
  static const moreOptions = 'moreOptions';
  static const search = 'search';
  static const chat = 'chat';
  static const searchFollowUser = 'searchFollowUser';
  static const campaign = 'campaign';
  static const profile = 'profile';
  static const settings = 'settings';
  static const settingsProfiles = 'settingsProfiles';
  static const settingsActivity = 'settingsActivity';
  static const settingsAccountStatus = 'settingsAccountStatus';
  static const settingsPasswordSecurity = 'settingsPasswordSecurity';
  static const settingsEditProfile = 'settingsEditProfile';
  static const settingsPrivacy = 'settingsPrivacy';
  static const settingsMyDonation = 'settingsMyDonation';
  static const settingsNotificationDetail = 'settingsNotificationDetail';
  static const settingsTheme = 'settingsTheme';
  static const settingsLanguage = 'settingsLanguage';
  static const settingsAccessibility = 'settingsAccessibility';
  static const settingsHelp = 'settingsHelp';
  static const settingsFaq = 'settingsFaq';
  static const settingsAbout = 'settingsAbout';
  static const settingsProfileFieldEdit = 'settingsProfileFieldEdit';
  static const signIn = 'signIn';
  static const signUp = 'signUp';
  static const resetPassword = 'resetPassword';
  static const verificationEmail = 'verificationEmail';
}

class AppRoutePath {
  static const splash = '/splash';
  static const home = '/home';
  static const mediaGallery = '/media-gallery';
  static const notification = '/home/notification';
  static const userProfile = '/home/user/:userId';
  static const createPost = '/home/create-post';
  static const moreOptions = '/home/create-post/more-options';
  static const settings = '/profile/settings';
  static const settingsProfiles = '/profile/settings/profiles';
  static const settingsActivity = '/profile/settings/activity';
  static const settingsAccountStatus = '/profile/settings/account-status';
  static const settingsPasswordSecurity = '/profile/settings/password-security';
  static const settingsEditProfile = '/profile/settings/edit-profile';
  static const settingsPrivacy = '/profile/settings/privacy';
  static const settingsMyDonation = '/profile/settings/my-donation';
  static const settingsNotificationDetail =
      '/profile/settings/notification-detail';
  static const settingsTheme = '/profile/settings/theme';
  static const settingsAccessibility = '/profile/settings/accessibility';
  static const settingsHelp = '/profile/settings/help';
  static const settingsFaq = '/profile/settings/faq';
  static const settingsAbout = '/profile/settings/about';
  static const settingsProfileFieldEdit =
      '/profile/settings/profile-field-edit';
  static const search = '/search';
  static const chat = '/chat';
  static const searchFollowUser = 'search-follow-user';
  static const campaign = '/campaign';
  static const profile = '/profile';
  static const signIn = '/auth/signin';
  static const signUp = '/auth/signup';
  static const resetPassword = '/auth/reset-password';
  static const verificationEmail = '/auth/verification-email';
}

class AppRouteSinglePath {
  static const notification = 'notification';
  static const userProfile = 'user/:userId';
  static const createPost = 'create-post';
  static const moreOptions = 'more-options';
  static const settings = 'settings';
  static const settingsProfiles = 'profiles';
  static const settingsActivity = 'activity';
  static const settingsAccountStatus = 'account-status';
  static const settingsPasswordSecurity = 'password-security';
  static const settingsLanguage = 'language';
  static const settingsEditProfile = 'edit-profile';
  static const settingsPrivacy = 'privacy';
  static const settingsMyDonation = 'my-donation';
  static const settingsNotificationDetail = 'notification-detail';
  static const settingsTheme = 'theme';
  static const settingsAccessibility = 'accessibility';
  static const settingsHelp = 'help';
  static const settingsFaq = 'faq';
  static const settingsAbout = 'about';
  static const settingsProfileFieldEdit = 'profile-field-edit';
  static const searchFollowUser = 'search-follow-user';
}

/// Helper to make GoRouter listen to a stream (e.g. a Cubit/Bloc).
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    _subscription = stream.asBroadcastStream().listen((_) {
      notifyListeners();
    });
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
