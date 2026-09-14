import 'dart:io';
import 'dart:ui' as ui;
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:velora/core/themes/material_theme.dart';
import 'package:velora/features/campaign/domain/entities/campaign_model.dart';
import 'package:velora/features/campaign/domain/entities/campaign_type.dart';
import 'package:velora/features/campaign/presentation/widgets/campaign_card.dart';
import 'package:velora/features/campaign/presentation/widgets/progress_summary_card.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_primary_button.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_brand_mark.dart';
import 'package:velora/features/chat/presentation/widgets/molecules/chat_bubble_widget.dart';
import 'package:velora/features/feed/presentation/widgets/thread_post_layout.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/features/profile/domain/entities/user_profile_entity.dart';
import 'package:velora/features/profile/presentation/widgets/molecules/profile_header_panel.dart';
import 'package:velora/features/campaign/presentation/widgets/transparency_tab_content.dart';

const campaign = CampaignModel(
  id: 'preview',
  title: 'Bersama, bangun ruang belajar untuk anak-anak di Sumba',
  creatorName: 'Komunitas Ruang Tumbuh Indonesia',
  isVerified: true,
  type: CampaignType.donation,
  category: 'Pendidikan',
  raised: 128450000,
  target: 200000000,
  donorsCount: 1240,
  updatesCount: 3,
  milestonesCount: 2,
  timeLeftLabel: '12 hari lagi',
);

ThemeData reviewTheme(Brightness brightness) {
  final theme = buildTheme(brightness);
  return theme.copyWith(
    textTheme: theme.textTheme.apply(fontFamily: 'Roboto'),
    listTileTheme: theme.listTileTheme.copyWith(
      titleTextStyle: theme.textTheme.bodyLarge!.copyWith(fontFamily: 'Roboto'),
    ),
    appBarTheme: theme.appBarTheme.copyWith(
      titleTextStyle: theme.textTheme.titleLarge!.copyWith(
        fontFamily: 'Roboto',
      ),
    ),
    navigationBarTheme: theme.navigationBarTheme.copyWith(
      labelTextStyle: WidgetStatePropertyAll(
        theme.textTheme.labelSmall!.copyWith(fontFamily: 'Roboto'),
      ),
    ),
  );
}

Widget app(
  Widget body, {
  Brightness brightness = Brightness.light,
  double scale = 1,
}) => MaterialApp(
  theme: reviewTheme(brightness),
  locale: const Locale('id'),
  supportedLocales: AppLocalizations.supportedLocales,
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  builder: (context, child) => MediaQuery(
    data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale)),
    child: child!,
  ),
  home: Scaffold(body: SingleChildScrollView(child: body)),
);

void main() {
  setUpAll(() async {
    final flutterRoot = Platform.environment['FLUTTER_ROOT'];
    if (flutterRoot != null) {
      final fontDirectory = '$flutterRoot/bin/cache/artifacts/material_fonts';
      for (final font in {
        'Roboto': 'roboto-regular.ttf',
        'Ahem': 'roboto-regular.ttf',
        'MaterialIcons': 'materialicons-regular.otf',
      }.entries) {
        final loader = FontLoader(font.key)
          ..addFont(
            Future.value(
              ByteData.sublistView(
                File('$fontDirectory/${font.value}').readAsBytesSync(),
              ),
            ),
          );
        await loader.load();
      }
    }
  });
  for (final width in [320.0, 390.0, 430.0]) {
    for (final scale in [1.0, 2.0]) {
      testWidgets('campaign variants and chat fit width $width scale $scale', (
        tester,
      ) async {
        tester.view.physicalSize = Size(width, 900);
        tester.view.devicePixelRatio = 1;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);
        await tester.pumpWidget(
          app(
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const CampaignCard(campaign: campaign),
                  const CampaignCard(campaign: campaign, compact: true),
                  const ProgressSummaryCard(
                    raised: 128450000000,
                    target: 200000000000,
                    progressPercent: 64,
                    timeLeftLabel: '12 hari lagi',
                    donorsCount: 1240,
                    updatesCount: 3,
                    milestonesCount: 2,
                  ),
                  const ChatBubbleWidget(
                    message:
                        'Terima kasih sudah ikut membantu. Besok kami bagikan kabar terbaru dari sekolah.',
                    time: '14:32',
                    isSender: true,
                  ),
                  AuthPrimaryButton(
                    label: 'Lanjutkan bersama komunitas',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            scale: scale,
          ),
        );
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull);
      });
    }
  }
  testWidgets('thread keeps text before embedded content and exposes actions', (
    tester,
  ) async {
    var replies = 0;
    await tester.pumpWidget(
      app(
        ThreadPostLayout(
          avatar: const CircleAvatar(child: Text('A')),
          header: const Text('Alya Putri'),
          content: const Text('Cerita dari sekolah hari ini.'),
          campaign: const CampaignCard(campaign: campaign, compact: true),
          hasReplies: true,
          actions: IconButton(
            tooltip: 'Balas',
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () => replies++,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(
      tester.getTopLeft(find.text('Cerita dari sekolah hari ini.')).dy,
      lessThan(tester.getTopLeft(find.byType(CampaignCard)).dy),
    );
    await tester.tap(find.byTooltip('Balas'));
    expect(replies, 1);
    expect(tester.takeException(), isNull);
  });
  testWidgets('profile and transparency remain readable at 200 percent', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      app(
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ProfileHeaderPanel(
                profile: UserProfileEntity(
                  id: 'preview',
                  createdAt: DateTime(2026),
                  updatedAt: DateTime(2026),
                  username: 'komunitas_ruang_tumbuh_indonesia',
                  fullName: 'Komunitas Ruang Tumbuh Indonesia',
                  bio: 'Bersama membangun ruang belajar.',
                  location: 'Sumba, Nusa Tenggara Timur',
                  followersCount: 1240,
                  followingCount: 84,
                ),
                reportsCount: 12,
                isMe: true,
                isFollowing: false,
                isFollowRequestPending: false,
                onEditProfile: () {},
                onSettings: () {},
                onFollowToggle: null,
                onMessage: null,
                onReportsTap: () {},
              ),
              const TransparencyTabContent(
                fundBreakdown: [],
                documents: [],
                milestones: [],
                proofItems: [],
              ),
            ],
          ),
        ),
        scale: 2,
      ),
    );
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });
  for (final brightness in Brightness.values) {
    testWidgets('render review ${brightness.name}', (tester) async {
      tester.view.physicalSize = const Size(390, 844);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final key = GlobalKey();
      await tester.pumpWidget(
        MaterialApp(
          theme: reviewTheme(brightness),
          home: RepaintBoundary(
            key: key,
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Velora'),
                actions: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none),
                  ),
                ],
              ),
              body: ListView(
                children: [
                  ListTile(
                    leading: const AuthBrandMark(size: 36),
                    title: const Text('Bagikan cerita...'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit_outlined),
                    ),
                  ),
                  const Divider(height: 1),
                  ThreadPostLayout(
                    avatar: const CircleAvatar(child: Text('A')),
                    header: const Text('Alya Putri · 12 menit'),
                    content: const Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text(
                        'Hari ini, 30 anak kembali belajar di ruang yang lebih nyaman. Hal kecil yang kita lakukan bersama ternyata berarti banyak.',
                      ),
                    ),
                    hasReplies: true,
                    actions: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ),
                        const Text('24'),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.chat_bubble_outline),
                        ),
                        const Text('8'),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.ios_share_outlined),
                        ),
                      ],
                    ),
                  ),
                  ThreadPostLayout(
                    avatar: const CircleAvatar(child: Text('R')),
                    header: const Text('Ruang Tumbuh · 35 menit'),
                    content: const Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text(
                        'Satu ruang belajar, banyak harapan baru. Terima kasih sudah menjadi bagian dari perjalanan ini.',
                      ),
                    ),
                    campaign: const CampaignCard(
                      campaign: campaign,
                      compact: true,
                    ),
                    actions: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ),
                        const Text('128'),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.chat_bubble_outline),
                        ),
                        const Text('16'),
                      ],
                    ),
                  ),
                ],
              ),
              bottomNavigationBar: NavigationBar(
                destinations: const [
                  NavigationDestination(
                    icon: Icon(Icons.home_outlined),
                    label: 'Home',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.volunteer_activism_outlined),
                    label: 'Campaign',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.chat_bubble_outline),
                    label: 'Chat',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.person_outline),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      final boundary =
          key.currentContext!.findRenderObject()! as RenderRepaintBoundary;
      await tester.runAsync(() async {
        final img = await boundary.toImage(pixelRatio: 2);
        final bytes = await img.toByteData(format: ui.ImageByteFormat.png);
        await Directory('docs/ui').create(recursive: true);
        await File(
          'docs/ui/velora-${brightness.name}.png',
        ).writeAsBytes(bytes!.buffer.asUint8List());
        img.dispose();
      });
    });
  }
}
