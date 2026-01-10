import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/themes/material_theme.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/media/presentation/bloc/media_gallery_bloc.dart';
import 'package:velora/features/media/presentation/cubit/media_upload_cubit.dart';
import 'package:velora/features/post/presentation/bloc/post_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:velora/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:velora/features/social_relation/presentation/bloc/social_relation_bloc.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>().router;

    return MultiBlocProvider(
      providers: [
        // Global AuthBloc - singleton instance from service locator
        BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
        // Global UserPresenceBloc - singleton, auto-start for heartbeat
        BlocProvider<UserPresenceBloc>(
          create: (_) => getIt<UserPresenceBloc>(),
          lazy: false,
        ),
        // FeedBloc - factory instance, new instance per provider
        BlocProvider<FeedBloc>(create: (_) => getIt<FeedBloc>()),
        // PostBloc - factory instance
        BlocProvider<PostBloc>(create: (_) => getIt<PostBloc>()),
        // MediaUploadCubit - factory instance
        BlocProvider<MediaUploadCubit>(
          create: (_) => getIt<MediaUploadCubit>(),
        ),
        // MediaGalleryBloc - factory instance
        BlocProvider<MediaGalleryBloc>(
          create: (_) => getIt<MediaGalleryBloc>(),
        ),
        // SocialRelationBloc - factory instance
        BlocProvider<SocialRelationBloc>(
          create: (_) => getIt<SocialRelationBloc>(),
        ),
        // ProfileBloc - factory instance
        BlocProvider<ProfileBloc>(create: (_) => getIt<ProfileBloc>()),
        // NotificationBloc - factory instance
        BlocProvider<NotificationBloc>(
          create: (_) => getIt<NotificationBloc>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Velora',
        // localizationsDelegates: const [
        //   AppLocalizations.delegate,
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        supportedLocales: AppLocalizations.supportedLocales,
        theme: buildTheme(Brightness.light),
        darkTheme: buildTheme(Brightness.dark),
        scaffoldMessengerKey: AppMessenger.messengerKey,
        routerConfig: router,
      ),
    );
  }
}
