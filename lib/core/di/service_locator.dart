import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/firebase/firebase_analytics_service.dart';
import 'package:velora/core/firebase/firebase_messaging_service.dart';
import 'package:velora/core/network/dio_factory.dart';
import 'package:velora/core/services/connectivity_service.dart';
import 'package:velora/core/services/navigation_service.dart';
import 'package:velora/core/supabase/supabase_initializer.dart';
import 'package:velora/features/auth/domain/usecases/auth_watch_auth_snapshot.dart';
import 'package:velora/features/settings/domain/entities/user_preferences.dart';
import 'package:velora/routes/app_router.dart';

// Auth feature imports
import 'package:velora/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:velora/features/auth/data/datasources/auth_remote_datasource_impl.dart';
import 'package:velora/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:velora/features/auth/domain/repositories/auth_repository.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_in_with_google.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_in.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_out.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_up.dart';
import 'package:velora/features/auth/domain/usecases/auth_reset_password.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';

// Feed feature imports
import 'package:velora/features/feed/data/datasources/feed_remote_datasource.dart';
import 'package:velora/features/feed/data/datasources/feed_remote_datasource_impl.dart';
import 'package:velora/features/feed/data/repositories/feed_repository_impl.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';
import 'package:velora/features/feed/domain/usecases/get_smart_feed.dart';
import 'package:velora/features/feed/domain/usecases/refresh_feed.dart';
import 'package:velora/features/feed/domain/usecases/toggle_like_post.dart';
import 'package:velora/features/feed/domain/usecases/toggle_bookmark_post.dart';
import 'package:velora/features/feed/domain/usecases/get_comments.dart';
import 'package:velora/features/feed/domain/usecases/add_comment.dart';
import 'package:velora/features/feed/domain/usecases/delete_comment.dart';
import 'package:velora/features/feed/domain/usecases/toggle_like_comment.dart';
import 'package:velora/features/feed/domain/usecases/get_post_by_id.dart';
import 'package:velora/features/feed/domain/usecases/update_post.dart';
import 'package:velora/features/feed/domain/usecases/delete_post.dart';
import 'package:velora/features/feed/domain/usecases/watch_new_comments.dart';
import 'package:velora/features/feed/domain/usecases/stop_watch_comments.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_comment_bloc.dart';

// Post feature imports
import 'package:velora/features/post/data/datasources/post_remote_datasource.dart';
import 'package:velora/features/post/data/datasources/post_remote_datasource_impl.dart';
import 'package:velora/features/post/data/repositories/post_repository_impl.dart';
import 'package:velora/features/post/domain/repositories/post_repository.dart';
import 'package:velora/features/post/domain/usecases/create_post.dart';
import 'package:velora/features/post/presentation/bloc/post_bloc.dart';

// Media feature imports
import 'package:velora/features/media/data/datasources/remote/media_remote_datasource.dart';
import 'package:velora/features/media/data/datasources/remote/media_remote_datasource_impl.dart';
import 'package:velora/features/media/data/repositories/media_repository_impl.dart';
import 'package:velora/features/media/domain/repositories/media_repository.dart';
import 'package:velora/features/media/domain/usecases/upload_media_asset.dart';
import 'package:velora/features/media/presentation/cubit/media_upload_cubit.dart';

// Media Gallery (Local) feature imports
import 'package:velora/features/media/data/datasources/local/media_local_datasource.dart';
import 'package:velora/features/media/data/datasources/local/media_local_datasource_impl.dart';
import 'package:velora/features/media/data/repositories/media_gallery_repository_impl.dart';
import 'package:velora/features/media/domain/repositories/media_gallery_repository.dart';
import 'package:velora/features/media/domain/usecases/request_media_permission.dart';
import 'package:velora/features/media/domain/usecases/load_media_assets.dart';
import 'package:velora/features/media/domain/usecases/get_file_from_asset.dart';
import 'package:velora/features/media/presentation/bloc/media_gallery_bloc.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  if (getIt.isRegistered<NavigationService>()) {
    return;
  }

  // Core services
  getIt
    ..registerLazySingleton<NavigationService>(() => NavigationService())
    ..registerLazySingleton<ConnectivityService>(() => ConnectivityService())
    ..registerLazySingleton<FirebaseAnalyticsService>(
      () => FirebaseAnalyticsService(),
    )
    ..registerLazySingleton<FirebaseMessagingService>(
      () => FirebaseMessagingService(),
    )
    ..registerLazySingleton<UserPreferences>(() => UserPreferences());

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

  // Auth feature - Data source
  if (!getIt.isRegistered<AuthRemoteDataSource>()) {
    getIt.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(supabaseClient: getIt<SupabaseClient>()),
    );
  }

  if (!getIt.isRegistered<FeedRemoteDataSource>()) {
    getIt.registerLazySingleton<FeedRemoteDataSource>(
      () => FeedRemoteDataSourceImpl(supabaseClient: getIt<SupabaseClient>()),
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
    () => MediaGalleryRepositoryImpl(localDataSource: getIt<MediaLocalDataSource>()),
  );

  // Auth feature - Repositories
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: getIt<AuthRemoteDataSource>()),
  );

  // Feed feature - Use cases
  getIt
    ..registerLazySingleton(() => LoadInitialFeed(getIt<FeedRepository>()))
    ..registerLazySingleton(() => LoadMoreFeed(getIt<FeedRepository>()))
    ..registerLazySingleton(() => RefreshFeed(getIt<FeedRepository>()))
    ..registerLazySingleton(() => ToggleLikePost(getIt<FeedRepository>()))
    ..registerLazySingleton(() => ToggleBookmarkPost(getIt<FeedRepository>()))
    ..registerLazySingleton(() => GetComments(getIt<FeedRepository>()))
    ..registerLazySingleton(() => AddComment(getIt<FeedRepository>()))
    ..registerLazySingleton(() => DeleteComment(getIt<FeedRepository>()))
    ..registerLazySingleton(() => ToggleLikeComment(getIt<FeedRepository>()))
    ..registerLazySingleton(() => WatchNewComments(getIt<FeedRepository>()))
    ..registerLazySingleton(() => StopWatchComments(getIt<FeedRepository>()))
    ..registerLazySingleton(() => GetPostById(getIt<FeedRepository>()))
    ..registerLazySingleton(() => UpdatePost(getIt<FeedRepository>()))
    ..registerLazySingleton(() => DeletePost(getIt<FeedRepository>()))
    // Post feature - Use cases
    ..registerLazySingleton(() => CreatePost(getIt<PostRepository>()))
    // Media feature - Use cases
    ..registerLazySingleton(() => UploadMediaAsset(getIt<MediaRepository>()))
    // Media Gallery (Local) feature - Use cases
    ..registerLazySingleton(() => RequestMediaPermission(repository: getIt<MediaGalleryRepository>()))
    ..registerLazySingleton(() => LoadMediaAssets(repository: getIt<MediaGalleryRepository>()))
    ..registerLazySingleton(() => GetFileFromAsset(repository: getIt<MediaGalleryRepository>()))
    // Auth feature - Use cases
    ..registerLazySingleton(() => AuthSignUp(getIt<AuthRepository>()))
    ..registerLazySingleton(() => AuthSignIn(getIt<AuthRepository>()))
    ..registerLazySingleton(() => AuthResetPassword(getIt<AuthRepository>()))
    ..registerLazySingleton(() => AuthSignOut(getIt<AuthRepository>()))
    ..registerLazySingleton(() => AuthSignInWithGoogle(getIt<AuthRepository>()))
    ..registerLazySingleton(() => AuthWatchAuthSnapshot(getIt<AuthRepository>()));

  // Feed feature - Bloc
  getIt.registerFactory(
    () => FeedBloc(
      loadInitialFeedUseCase: getIt<LoadInitialFeed>(),
      loadMoreFeedUseCase: getIt<LoadMoreFeed>(),
      toggleLikePostUseCase: getIt<ToggleLikePost>(),
      toggleBookmarkPostUseCase: getIt<ToggleBookmarkPost>(),
      getPostByIdUseCase: getIt<GetPostById>(),
      updatePostUseCase: getIt<UpdatePost>(),
      deletePostUseCase: getIt<DeletePost>(),
    ),
  );

  getIt.registerFactory(
    () => FeedCommentBloc(
      getCommentsUseCase: getIt<GetComments>(),
      addCommentUseCase: getIt<AddComment>(),
      deleteCommentUseCase: getIt<DeleteComment>(),
      toggleLikeCommentUseCase: getIt<ToggleLikeComment>(),
      watchNewCommentsUseCase: getIt<WatchNewComments>(),
      stopWatchCommentsUseCase: getIt<StopWatchComments>(),
    ),
  );

  // Post feature - Bloc
  getIt.registerFactory(() => PostBloc(createPostUseCase: getIt<CreatePost>()));

  // Media feature - Cubit
  getIt.registerFactory(() => MediaUploadCubit(getIt<UploadMediaAsset>()));

  // Media Gallery (Local) feature - Bloc
  getIt.registerFactory(
    () => MediaGalleryBloc(
      requestMediaPermission: getIt<RequestMediaPermission>(),
      loadMediaAssets: getIt<LoadMediaAssets>(),
      getFileFromAsset: getIt<GetFileFromAsset>(),
    ),
  );

  // Auth feature - Bloc (global)
  if (!getIt.isRegistered<AuthBloc>()) {
    getIt.registerLazySingleton<AuthBloc>(
      () => AuthBloc(
        signUpUseCase: getIt<AuthSignUp>(),
        signInUseCase: getIt<AuthSignIn>(),
        signInWithGoogleUseCase: getIt<AuthSignInWithGoogle>(),
        resetPasswordUseCase: getIt<AuthResetPassword>(),
        signOutUseCase: getIt<AuthSignOut>(),
        watchAuthSnapshotUseCase: getIt<AuthWatchAuthSnapshot>(),
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
