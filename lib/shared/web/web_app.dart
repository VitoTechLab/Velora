import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/themes/material_theme.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/routes/app_router.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/post/presentation/bloc/post_bloc.dart';
import 'package:velora/features/media/presentation/bloc/media_upload_bloc.dart';
import 'package:velora/features/media/presentation/bloc/media_gallery_bloc.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_bloc.dart';
import 'package:velora/features/wallet/presentation/bloc/wallet_bloc.dart';

class WebApp extends StatelessWidget {
  const WebApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>().router;

    return MultiBlocProvider(
      providers: [
        // Global AuthBloc - singleton instance from service locator
        BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
        // FeedBloc - factory instance, new instance per provider
        BlocProvider<FeedBloc>(create: (_) => getIt<FeedBloc>()),
        // PostBloc - factory instance
        BlocProvider<PostBloc>(create: (_) => getIt<PostBloc>()),
        // MediaUploadBloc - factory instance
        BlocProvider<MediaUploadBloc>(
          create: (_) => getIt<MediaUploadBloc>(),
        ),
        // MediaGalleryBloc - factory instance
        BlocProvider<MediaGalleryBloc>(
          create: (_) => getIt<MediaGalleryBloc>(),
        ),
        // CampaignBloc - factory instance
        BlocProvider<CampaignBloc>(create: (_) => getIt<CampaignBloc>()),
        // WalletBloc - factory instance
        BlocProvider<WalletBloc>(create: (_) => getIt<WalletBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Velora Web',
        routerConfig: router,
        theme: materialLightTheme,
        darkTheme: materialDarkTheme,
        scaffoldMessengerKey: AppMessenger.messengerKey,
      ),
    );
  }
}
