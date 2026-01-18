import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/firebase/firebase_analytics_service.dart';
import 'package:velora/core/firebase/firebase_messaging_service.dart';
import 'package:velora/core/network/dio_factory.dart';
import 'package:velora/core/services/connectivity_service.dart';
import 'package:velora/core/services/file_download_service.dart';
import 'package:velora/core/supabase/supabase_initializer.dart';
import 'package:velora/features/auth/domain/usecases/watch_auth_snapshot_usecase.dart';
import 'package:velora/features/settings/domain/entities/user_preferences.dart';
import 'package:velora/features/settings/data/datasources/local/settings_local_datasource.dart';
import 'package:velora/features/settings/data/datasources/local/settings_local_datasource_impl.dart';
import 'package:velora/routes/app_router.dart';
import 'package:velora/features/navigation/services/navigation_service.dart';

// Auth feature imports
import 'package:velora/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:velora/features/auth/data/datasources/auth_remote_datasource_impl.dart';
import 'package:velora/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:velora/features/auth/domain/repositories/auth_repository.dart';
import 'package:velora/features/auth/domain/usecases/sign_in_with_google_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:velora/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';

// Feed feature imports
import 'package:velora/features/feed/data/datasources/feed_remote_datasource.dart';
import 'package:velora/features/feed/data/datasources/feed_remote_datasource_impl.dart';
import 'package:velora/features/feed/data/repositories/feed_repository_impl.dart';
import 'package:velora/features/feed/data/services/feed_notification_service.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';
import 'package:velora/features/feed/domain/usecases/get_feed_usecase.dart';
import 'package:velora/features/feed/domain/usecases/refresh_feed_usecase.dart';
import 'package:velora/features/feed/domain/usecases/toggle_like_post_usecase.dart';
import 'package:velora/features/feed/domain/usecases/toggle_bookmark_post_usecase.dart';
import 'package:velora/features/feed/domain/usecases/get_comments_usecase.dart';
import 'package:velora/features/feed/domain/usecases/get_replies_usecase.dart';
import 'package:velora/features/feed/domain/usecases/add_comment_usecase.dart';
import 'package:velora/features/feed/domain/usecases/delete_comment_usecase.dart';
import 'package:velora/features/feed/domain/usecases/toggle_like_comment_usecase.dart';
import 'package:velora/features/feed/domain/usecases/get_post_by_id_usecase.dart';
import 'package:velora/features/feed/domain/usecases/update_post_usecase.dart';
import 'package:velora/features/feed/domain/usecases/delete_post_usecase.dart';
import 'package:velora/features/feed/domain/usecases/watch_new_comments_usecase.dart';
import 'package:velora/features/feed/domain/usecases/stop_watch_comments_usecase.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_comment_bloc.dart';

// Post feature imports
import 'package:velora/features/post/data/datasources/post_remote_datasource.dart';
import 'package:velora/features/post/data/datasources/post_remote_datasource_impl.dart';
import 'package:velora/features/post/data/repositories/post_repository_impl.dart';
import 'package:velora/features/post/domain/repositories/post_repository.dart';
import 'package:velora/features/post/domain/usecases/create_post_feed_usecase.dart';
import 'package:velora/features/post/presentation/bloc/post_bloc.dart';

// Media feature imports
import 'package:velora/features/media/data/datasources/remote/media_remote_datasource.dart';
import 'package:velora/features/media/data/datasources/remote/media_remote_datasource_impl.dart';
import 'package:velora/features/media/data/repositories/media_repository_impl.dart';
import 'package:velora/features/media/domain/repositories/media_repository.dart';
import 'package:velora/features/media/domain/usecases/upload_media_asset_usecase.dart';
import 'package:velora/features/media/presentation/bloc/media_upload_bloc.dart';

// Media Gallery (Local) feature imports
import 'package:velora/features/media/data/datasources/local/media_local_datasource.dart';
import 'package:velora/features/media/data/datasources/local/media_local_datasource_impl.dart';
import 'package:velora/features/media/data/repositories/media_gallery_repository_impl.dart';
import 'package:velora/features/media/domain/repositories/media_gallery_repository.dart';
import 'package:velora/features/media/domain/usecases/request_media_permission_usecase.dart';
import 'package:velora/features/media/domain/usecases/load_media_assets_usecase.dart';
import 'package:velora/features/media/domain/usecases/get_file_from_asset_usecase.dart';
import 'package:velora/features/media/presentation/bloc/media_gallery_bloc.dart';

// Chat feature imports
import 'package:velora/features/chat/data/datasources/chat_remote_datasource.dart';
import 'package:velora/features/chat/data/datasources/chat_remote_datasource_impl.dart';
import 'package:velora/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';
import 'package:velora/features/chat/domain/usecases/get_messages_usecase.dart';
import 'package:velora/features/chat/domain/usecases/send_text_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/send_media_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/edit_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/delete_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/mark_conversation_read_usecase.dart';
import 'package:velora/features/chat/domain/usecases/watch_new_messages_usecase.dart';
import 'package:velora/features/chat/domain/usecases/stop_watch_messages_usecase.dart';
import 'package:velora/features/chat/domain/usecases/get_conversation_list_usecase.dart';
import 'package:velora/features/chat/domain/usecases/get_message_reads_usecase.dart';
import 'package:velora/features/chat/domain/usecases/mark_message_read_usecase.dart';
import 'package:velora/features/chat/domain/usecases/mark_messages_read_batch_usecase.dart';
import 'package:velora/features/chat/domain/usecases/watch_message_reads_usecase.dart';
import 'package:velora/features/chat/domain/usecases/send_typing_indicator_usecase.dart';
import 'package:velora/features/chat/domain/usecases/watch_typing_indicators_usecase.dart';
import 'package:velora/features/chat/domain/usecases/search_followed_users_usecase.dart';
import 'package:velora/features/chat/domain/usecases/create_direct_conversation_usecase.dart';
import 'package:velora/features/chat/domain/usecases/send_event_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/send_poll_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/vote_poll_option_usecase.dart';
import 'package:velora/features/chat/domain/usecases/unvote_poll_option_usecase.dart';
import 'package:velora/features/chat/domain/usecases/respond_to_event_usecase.dart';
import 'package:velora/features/chat/domain/usecases/cancel_event_rsvp_usecase.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/search_user_bloc.dart';

// Social Relation feature imports
import 'package:velora/features/social_relation/data/datasources/social_relation_remote_datasource.dart';
import 'package:velora/features/social_relation/data/datasources/social_relation_remote_datasource_impl.dart';
import 'package:velora/features/social_relation/data/repositories/social_relation_repository_impl.dart';
import 'package:velora/features/social_relation/domain/repositories/social_relation_repository.dart';
import 'package:velora/features/social_relation/domain/usecases/follow_user.dart';
import 'package:velora/features/social_relation/domain/usecases/unfollow_user.dart';
import 'package:velora/features/social_relation/domain/usecases/send_follow_request.dart';
import 'package:velora/features/social_relation/domain/usecases/accept_follow_request.dart';
import 'package:velora/features/social_relation/domain/usecases/block_user.dart';
import 'package:velora/features/social_relation/domain/usecases/unblock_user.dart';
import 'package:velora/features/social_relation/domain/usecases/get_blocked_users.dart';
import 'package:velora/features/social_relation/domain/usecases/get_pending_follow_requests.dart';
import 'package:velora/features/social_relation/domain/usecases/mute_user.dart';
import 'package:velora/features/social_relation/domain/usecases/restrict_user.dart';
import 'package:velora/features/social_relation/presentation/bloc/social_relation_bloc.dart';

// Profile feature imports
import 'package:velora/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:velora/features/profile/data/datasources/profile_remote_datasource_impl.dart';
import 'package:velora/features/profile/domain/repositories/profile_repository.dart';
import 'package:velora/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:velora/features/profile/domain/usecases/get_profile_usecase.dart';
import 'package:velora/features/profile/domain/usecases/toggle_follow_usecase.dart';
import 'package:velora/features/profile/domain/usecases/block_user_usecase.dart';
import 'package:velora/features/profile/domain/usecases/unblock_user_usecase.dart';
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';

// Notification feature imports
import 'package:velora/features/notification/data/datasources/notification_remote_datasource.dart';
import 'package:velora/features/notification/data/datasources/notification_remote_datasource_impl.dart';
import 'package:velora/features/notification/data/repositories/notification_repository_impl.dart';
import 'package:velora/features/notification/domain/repositories/notification_repository.dart';
import 'package:velora/features/notification/domain/usecases/get_notifications_usecase.dart';
import 'package:velora/features/notification/domain/usecases/get_unread_count_usecase.dart';
import 'package:velora/features/notification/domain/usecases/mark_notifications_read_usecase.dart';
import 'package:velora/features/notification/domain/usecases/delete_notification_usecase.dart';
import 'package:velora/features/notification/domain/usecases/watch_notifications_usecase.dart';
import 'package:velora/features/notification/presentation/bloc/notification_bloc.dart';

// Settings feature imports
import 'package:velora/features/settings/presentation/bloc/settings_bloc.dart';

// Translation services imports
import 'package:velora/core/translation/translation.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  if (getIt.isRegistered<NavigationService>()) {
    return;
  }

  // SharedPreferences - must be registered first (async initialization)
  if (!getIt.isRegistered<SharedPreferences>()) {
    final prefs = await SharedPreferences.getInstance();
    getIt.registerSingleton<SharedPreferences>(prefs);
  }

  // Settings feature - Local Data Source (depends on SharedPreferences)
  if (!getIt.isRegistered<SettingsLocalDataSource>()) {
    getIt.registerLazySingleton<SettingsLocalDataSource>(
      () => SettingsLocalDataSourceImpl(
        sharedPreferences: getIt<SharedPreferences>(),
      ),
    );
  }

  // Core services
  getIt
    ..registerLazySingleton<NavigationService>(() => NavigationService())
    ..registerLazySingleton<ConnectivityService>(() => ConnectivityService())
    ..registerLazySingleton<FileDownloadService>(
      () => FileDownloadService(dio: getIt<Dio>()),
    )
    ..registerLazySingleton<FirebaseAnalyticsService>(
      () => FirebaseAnalyticsService(),
    )
    ..registerLazySingleton<FirebaseMessagingService>(
      () => FirebaseMessagingService(),
    )
    ..registerLazySingleton<UserPreferences>(() => UserPreferences())
    ..registerLazySingleton<TranslationService>(() => TranslationService())
    ..registerLazySingleton<TranslationPreloader>(
      () => TranslationPreloader(getIt<TranslationService>()),
    )
    ..registerLazySingleton<TranslationQueue>(
      () => TranslationQueue(getIt<TranslationService>()),
    );

  // Supabase client - initialize and register
  if (!getIt.isRegistered<SupabaseClient>()) {
    final client = await SupabaseInitializer.initialize();
    if (client != null) {
      getIt.registerLazySingleton<SupabaseClient>(() => client);
    }
  }

  // Dio clients for Supabase Edge Functions and Cloudinary
  if (!getIt.isRegistered<Dio>(instanceName: 'supabaseFunctionsDio')) {
    getIt.registerLazySingleton<Dio>(
      () => DioFactory.createSupabaseFunctionsClient(),
      instanceName: 'supabaseFunctionsDio',
    );
  }

  if (!getIt.isRegistered<Dio>(instanceName: 'cloudinaryDio')) {
    getIt.registerLazySingleton<Dio>(
      () => DioFactory.createCloudinaryClient(),
      instanceName: 'cloudinaryDio',
    );
  }

  // Feed feature - Data sources
  if (!getIt.isRegistered<SupabaseClient>()) {
    throw StateError(
      'SupabaseClient is required before registering feed data sources',
    );
  }

  // Feed Notification Service
  if (!getIt.isRegistered<FeedNotificationService>()) {
    getIt.registerLazySingleton<FeedNotificationService>(
      () => FeedNotificationService(supabaseClient: getIt<SupabaseClient>()),
    );
  }

  // Auth feature - Data source
  if (!getIt.isRegistered<AuthRemoteDataSource>()) {
    getIt.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(supabaseClient: getIt<SupabaseClient>()),
    );
  }

  if (!getIt.isRegistered<FeedRemoteDataSource>()) {
    getIt.registerLazySingleton<FeedRemoteDataSource>(
      () => FeedRemoteDataSourceImpl(
        supabaseClient: getIt<SupabaseClient>(),
        notificationService: getIt<FeedNotificationService>(),
      ),
    );
  }

  if (!getIt.isRegistered<PostRemoteDataSource>()) {
    getIt.registerLazySingleton<PostRemoteDataSource>(
      () => PostRemoteDataSourceImpl(supabaseClient: getIt<SupabaseClient>()),
    );
  }

  // Media feature - Data source
  if (!getIt.isRegistered<MediaRemoteDataSource>()) {
    getIt.registerLazySingleton<MediaRemoteDataSource>(
      () => MediaRemoteDataSourceImpl(
        supabaseFunctionsDio: getIt<Dio>(instanceName: 'supabaseFunctionsDio'),
        cloudinaryDio: getIt<Dio>(instanceName: 'cloudinaryDio'),
      ),
    );
  }

  // Media Gallery (Local) feature - Data source
  if (!getIt.isRegistered<MediaLocalDataSource>()) {
    getIt.registerLazySingleton<MediaLocalDataSource>(
      () => MediaLocalDataSourceImpl(),
    );
  }

  // Chat feature - Data source
  if (!getIt.isRegistered<ChatRemoteDataSource>()) {
    getIt.registerLazySingleton<ChatRemoteDataSource>(
      () => ChatRemoteDataSourceImpl(supabaseClient: getIt<SupabaseClient>()),
    );
  }

  // Social Relation feature - Data source
  if (!getIt.isRegistered<SocialRelationRemoteDataSource>()) {
    getIt.registerLazySingleton<SocialRelationRemoteDataSource>(
      () => SocialRelationRemoteDataSourceImpl(
        supabaseClient: getIt<SupabaseClient>(),
      ),
    );
  }

  // Profile feature - Data source
  if (!getIt.isRegistered<ProfileRemoteDataSource>()) {
    getIt.registerLazySingleton<ProfileRemoteDataSource>(
      () =>
          ProfileRemoteDataSourceImpl(supabaseClient: getIt<SupabaseClient>()),
    );
  }

  // Feed feature - Repositories
  getIt.registerLazySingleton<FeedRepository>(
    () => FeedRepositoryImpl(remoteDataSource: getIt<FeedRemoteDataSource>()),
  );

  // Post feature - Repositories
  getIt.registerLazySingleton<PostRepository>(
    () => PostRepositoryImpl(remoteDataSource: getIt<PostRemoteDataSource>()),
  );

  // Media feature - Repositories
  getIt.registerLazySingleton<MediaRepository>(
    () => MediaRepositoryImpl(remoteDataSource: getIt<MediaRemoteDataSource>()),
  );

  // Media Gallery (Local) feature - Repositories
  getIt.registerLazySingleton<MediaGalleryRepository>(
    () => MediaGalleryRepositoryImpl(
      localDataSource: getIt<MediaLocalDataSource>(),
    ),
  );

  // Chat feature - Repositories
  getIt.registerLazySingleton<ChatRepository>(
    () => ChatRepositoryImpl(remoteDataSource: getIt<ChatRemoteDataSource>()),
  );

  // Auth feature - Repositories
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: getIt<AuthRemoteDataSource>()),
  );

  // Social Relation feature - Repositories
  getIt.registerLazySingleton<SocialRelationRepository>(
    () => SocialRelationRepositoryImpl(
      remoteDataSource: getIt<SocialRelationRemoteDataSource>(),
    ),
  );

  // Profile feature - Repositories
  getIt.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(
      remoteDataSource: getIt<ProfileRemoteDataSource>(),
    ),
  );

  // Notification feature - Data source
  if (!getIt.isRegistered<NotificationRemoteDataSource>()) {
    getIt.registerLazySingleton<NotificationRemoteDataSource>(
      () => NotificationRemoteDataSourceImpl(
        supabaseClient: getIt<SupabaseClient>(),
      ),
    );
  }

  // Notification feature - Repositories
  getIt.registerLazySingleton<NotificationRepository>(
    () => NotificationRepositoryImpl(
      remoteDataSource: getIt<NotificationRemoteDataSource>(),
    ),
  );

  // Feed feature - Use cases
  getIt
    ..registerLazySingleton(
        () => LoadInitialFeedUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => LoadMoreFeedUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => RefreshFeedUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => ToggleLikePostUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => ToggleBookmarkPostUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => GetCommentsUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => GetRepliesUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => AddCommentUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => DeleteCommentUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => ToggleLikeCommentUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => WatchNewCommentsUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => StopWatchCommentsUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => GetPostByIdUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => UpdatePostUseCase(repository: getIt<FeedRepository>()))
    ..registerLazySingleton(
        () => DeletePostUseCase(repository: getIt<FeedRepository>()))
    // Post feature - Use cases
    ..registerLazySingleton(
      () => CreatePostFeedUseCase(repository: getIt<PostRepository>()),
    )
    // Media feature - Use cases
    ..registerLazySingleton(
        () => UploadMediaAssetUseCase(repository: getIt<MediaRepository>()))
    // Media Gallery (Local) feature - Use cases
    ..registerLazySingleton(
      () => RequestMediaPermissionUseCase(
          repository: getIt<MediaGalleryRepository>()),
    )
    ..registerLazySingleton(
      () => LoadMediaAssetsUseCase(repository: getIt<MediaGalleryRepository>()),
    )
    ..registerLazySingleton(
      () =>
          GetFileFromAssetUseCase(repository: getIt<MediaGalleryRepository>()),
    )
    // Auth feature - Use cases
    ..registerLazySingleton(
        () => SignUpUseCase(repository: getIt<AuthRepository>()))
    ..registerLazySingleton(
        () => SignInUseCase(repository: getIt<AuthRepository>()))
    ..registerLazySingleton(
        () => ResetPasswordUseCase(repository: getIt<AuthRepository>()))
    ..registerLazySingleton(
        () => SignOutUseCase(repository: getIt<AuthRepository>()))
    ..registerLazySingleton(
        () => SignInWithGoogleUseCase(repository: getIt<AuthRepository>()))
    ..registerLazySingleton(
      () => WatchAuthSnapshotUseCase(repository: getIt<AuthRepository>()),
    )
    // Chat feature - Use cases
    ..registerLazySingleton(
        () => GetMessagesUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => SendTextMessageUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => SendMediaMessageUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => EditMessageUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => DeleteMessageUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => MarkConversationReadUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => WatchNewMessagesUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => StopWatchMessagesUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => GetConversationListUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => GetMessageReadsUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => MarkMessageReadUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => WatchMessageReadsUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => SendTypingIndicatorUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
      () => WatchTypingIndicatorsUseCase(repository: getIt<ChatRepository>()),
    )
    ..registerLazySingleton(
        () => SearchFollowedUsersUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(() =>
        CreateDirectConversationUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => SendPollMessageUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => SendEventMessageUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => VotePollOptionUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => UnvotePollOptionUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => RespondToEventUseCase(repository: getIt<ChatRepository>()))
    ..registerLazySingleton(
        () => CancelEventRsvpUseCase(repository: getIt<ChatRepository>()))
    // Social Relation feature - Use cases
    ..registerLazySingleton(() => FollowUser(getIt<SocialRelationRepository>()))
    ..registerLazySingleton(
      () => UnfollowUser(getIt<SocialRelationRepository>()),
    )
    ..registerLazySingleton(
      () => SendFollowRequest(getIt<SocialRelationRepository>()),
    )
    ..registerLazySingleton(
      () => AcceptFollowRequest(getIt<SocialRelationRepository>()),
    )
    ..registerLazySingleton(() => BlockUser(getIt<SocialRelationRepository>()))
    ..registerLazySingleton(
      () => UnblockUser(getIt<SocialRelationRepository>()),
    )
    ..registerLazySingleton(
      () => GetBlockedUsers(getIt<SocialRelationRepository>()),
    )
    ..registerLazySingleton(
      () => GetPendingFollowRequests(getIt<SocialRelationRepository>()),
    )
    ..registerLazySingleton(() => MuteUser(getIt<SocialRelationRepository>()))
    ..registerLazySingleton(
      () => RestrictUser(getIt<SocialRelationRepository>()),
    );

  // Profile feature - Use cases
  getIt
    ..registerLazySingleton(() => GetProfileUseCase(getIt<ProfileRepository>()))
    ..registerLazySingleton(
      () => ToggleFollowUseCase(getIt<ProfileRepository>()),
    )
    ..registerLazySingleton(() => BlockUserUseCase(getIt<ProfileRepository>()))
    ..registerLazySingleton(
      () => UnblockUserUseCase(getIt<ProfileRepository>()),
    );

  // Notification feature - Use cases
  getIt
    ..registerLazySingleton(
      () => LoadInitialNotificationsUseCase(
        repository: getIt<NotificationRepository>(),
      ),
    )
    ..registerLazySingleton(
      () => LoadMoreNotificationsUseCase(
        repository: getIt<NotificationRepository>(),
      ),
    )
    ..registerLazySingleton(
      () => GetUnreadNotificationCountUseCase(
        repository: getIt<NotificationRepository>(),
      ),
    )
    ..registerLazySingleton(
      () => MarkAllNotificationsReadUseCase(
        repository: getIt<NotificationRepository>(),
      ),
    )
    ..registerLazySingleton(
      () => MarkNotificationsReadUseCase(
        repository: getIt<NotificationRepository>(),
      ),
    )
    ..registerLazySingleton(
      () => DeleteNotificationUseCase(
        repository: getIt<NotificationRepository>(),
      ),
    )
    ..registerLazySingleton(
      () => WatchNewNotificationsUseCase(
        repository: getIt<NotificationRepository>(),
      ),
    )
    ..registerLazySingleton(
      () => StopWatchNotificationsUseCase(
        repository: getIt<NotificationRepository>(),
      ),
    );

  // Feed feature - Bloc
  getIt.registerFactory(
    () => FeedBloc(
      loadInitialFeedUseCase: getIt<LoadInitialFeedUseCase>(),
      loadMoreFeedUseCase: getIt<LoadMoreFeedUseCase>(),
      toggleLikePostUseCase: getIt<ToggleLikePostUseCase>(),
      toggleBookmarkPostUseCase: getIt<ToggleBookmarkPostUseCase>(),
      getPostByIdUseCase: getIt<GetPostByIdUseCase>(),
      updatePostUseCase: getIt<UpdatePostUseCase>(),
      deletePostUseCase: getIt<DeletePostUseCase>(),
    ),
  );

  getIt.registerFactory(
    () => FeedCommentBloc(
      getCommentsUseCase: getIt<GetCommentsUseCase>(),
      getRepliesUseCase: getIt<GetRepliesUseCase>(),
      addCommentUseCase: getIt<AddCommentUseCase>(),
      deleteCommentUseCase: getIt<DeleteCommentUseCase>(),
      toggleLikeCommentUseCase: getIt<ToggleLikeCommentUseCase>(),
      watchNewCommentsUseCase: getIt<WatchNewCommentsUseCase>(),
      stopWatchCommentsUseCase: getIt<StopWatchCommentsUseCase>(),
    ),
  );

  // Chat feature - Bloc
  getIt.registerFactory(
    () => ChatMessageBloc(
      getMessagesUseCase: getIt<GetMessagesUseCase>(),
      sendTextMessageUseCase: getIt<SendTextMessageUseCase>(),
      sendMediaMessageUseCase: getIt<SendMediaMessageUseCase>(),
      editMessageUseCase: getIt<EditMessageUseCase>(),
      deleteMessageUseCase: getIt<DeleteMessageUseCase>(),
      markConversationReadUseCase: getIt<MarkConversationReadUseCase>(),
      watchNewMessagesUseCase: getIt<WatchNewMessagesUseCase>(),
      stopWatchMessagesUseCase: getIt<StopWatchMessagesUseCase>(),
      getConversationListUseCase: getIt<GetConversationListUseCase>(),
      getMessageReadsUseCase: getIt<GetMessageReadsUseCase>(),
      markMessageReadUseCase: getIt<MarkMessageReadUseCase>(),
      watchMessageReadsUseCase: getIt<WatchMessageReadsUseCase>(),
      sendTypingIndicatorUseCase: getIt<SendTypingIndicatorUseCase>(),
      watchTypingIndicatorsUseCase: getIt<WatchTypingIndicatorsUseCase>(),
      createDirectConversationUseCase: getIt<CreateDirectConversationUseCase>(),
      sendPollMessageUseCase: getIt<SendPollMessageUseCase>(),
      sendEventMessageUseCase: getIt<SendEventMessageUseCase>(),
      votePollOptionUseCase: getIt<VotePollOptionUseCase>(),
      unvotePollOptionUseCase: getIt<UnvotePollOptionUseCase>(),
      respondToEventUseCase: getIt<RespondToEventUseCase>(),
      cancelEventRsvpUseCase: getIt<CancelEventRsvpUseCase>(),
      markMessagesReadBatchUseCase: getIt<MarkMessagesReadBatchUseCase>(),
      mediaRepository: getIt<MediaRepository>(),
    ),
  );

  // User Presence - Bloc (global singleton, auto-started)
  if (!getIt.isRegistered<UserPresenceBloc>()) {
    getIt.registerLazySingleton<UserPresenceBloc>(
      () => UserPresenceBloc(
        chatRepository: getIt<ChatRepository>(),
        supabaseClient: getIt<SupabaseClient>(),
      ),
    );
  }

  // Search User - Bloc
  getIt.registerFactory(
    () => SearchUserBloc(
        searchFollowedUsers: getIt<SearchFollowedUsersUseCase>()),
  );

  // Social Relation feature - Bloc
  getIt.registerFactory(
    () => SocialRelationBloc(
      followUserUseCase: getIt<FollowUser>(),
      unfollowUserUseCase: getIt<UnfollowUser>(),
      sendFollowRequestUseCase: getIt<SendFollowRequest>(),
      acceptFollowRequestUseCase: getIt<AcceptFollowRequest>(),
      blockUserUseCase: getIt<BlockUser>(),
      unblockUserUseCase: getIt<UnblockUser>(),
      getBlockedUsersUseCase: getIt<GetBlockedUsers>(),
      getPendingFollowRequestsUseCase: getIt<GetPendingFollowRequests>(),
      muteUserUseCase: getIt<MuteUser>(),
      restrictUserUseCase: getIt<RestrictUser>(),
    ),
  );

  // Profile feature - Bloc
  getIt.registerFactory(
    () => ProfileBloc(
      getProfileUseCase: getIt<GetProfileUseCase>(),
      toggleFollowUseCase: getIt<ToggleFollowUseCase>(),
      blockUserUseCase: getIt<BlockUserUseCase>(),
      unblockUserUseCase: getIt<UnblockUserUseCase>(),
    ),
  );

  // Notification feature - Bloc
  getIt.registerFactory(
    () => NotificationBloc(
      loadInitialNotificationsUseCase: getIt<LoadInitialNotificationsUseCase>(),
      loadMoreNotificationsUseCase: getIt<LoadMoreNotificationsUseCase>(),
      getUnreadCountUseCase: getIt<GetUnreadNotificationCountUseCase>(),
      markAllAsReadUseCase: getIt<MarkAllNotificationsReadUseCase>(),
      markAsReadUseCase: getIt<MarkNotificationsReadUseCase>(),
      deleteNotificationUseCase: getIt<DeleteNotificationUseCase>(),
      watchNewNotificationsUseCase: getIt<WatchNewNotificationsUseCase>(),
      stopWatchNotificationsUseCase: getIt<StopWatchNotificationsUseCase>(),
      profileDataSource: getIt<ProfileRemoteDataSource>(),
    ),
  );

  // Post feature - Bloc
  getIt.registerFactory(
    () => PostBloc(createPostFeedUseCase: getIt<CreatePostFeedUseCase>()),
  );

  // Media feature - Bloc
  getIt.registerFactory(
    () => MediaUploadBloc(uploadMediaAsset: getIt<UploadMediaAssetUseCase>()),
  );

  // Media Gallery (Local) feature - Bloc
  getIt.registerFactory(
    () => MediaGalleryBloc(
      requestMediaPermission: getIt<RequestMediaPermissionUseCase>(),
      loadMediaAssets: getIt<LoadMediaAssetsUseCase>(),
      getFileFromAsset: getIt<GetFileFromAssetUseCase>(),
    ),
  );

  // Settings feature - Bloc (global singleton)
  if (!getIt.isRegistered<SettingsBloc>()) {
    getIt.registerLazySingleton<SettingsBloc>(
      () => SettingsBloc(
        localDataSource: getIt<SettingsLocalDataSource>(),
      ),
    );
  }

  // Auth feature - Bloc (global)
  if (!getIt.isRegistered<AuthBloc>()) {
    getIt.registerLazySingleton<AuthBloc>(
      () => AuthBloc(
        signUpUseCase: getIt<SignUpUseCase>(),
        signInUseCase: getIt<SignInUseCase>(),
        signInWithGoogleUseCase: getIt<SignInWithGoogleUseCase>(),
        resetPasswordUseCase: getIt<ResetPasswordUseCase>(),
        signOutUseCase: getIt<SignOutUseCase>(),
        watchAuthSnapshotUseCase: getIt<WatchAuthSnapshotUseCase>(),
      ),
    );
  }

  // App router (needs auth bloc & user preferences)
  if (!getIt.isRegistered<AppRouter>()) {
    getIt.registerLazySingleton<AppRouter>(
      () => AppRouter(
        getIt<NavigationService>(),
        getIt<UserPreferences>(),
        getIt<AuthBloc>(),
      ),
    );
  }
}
