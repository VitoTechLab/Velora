import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/features/post/presentation/widgets/caption_input_section.dart';

void main() {
  testWidgets('CaptionInputSection renders text field with hint', (
    tester,
  ) async {
    final controller = TextEditingController();
    final focusNode = FocusNode();

    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: CaptionInputSection(
            controller: controller,
            focusNode: focusNode,
          ),
        ),
      ),
    );

    expect(find.text('Write a caption...'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'Hello caption');
    expect(controller.text, 'Hello caption');
  });
}
