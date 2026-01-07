import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velora/features/post/presentation/widgets/custom_media_gallery.dart';

class FakeImagePicker extends ImagePicker {
  FakeImagePicker({this.onPick});

  int pickCount = 0;
  final List<XFile> Function()? onPick;

  @override
  Future<List<XFile>> pickMultiImage({
    double? maxWidth,
    double? maxHeight,
    int? imageQuality,
    CameraDevice preferredCameraDevice = CameraDevice.rear,
  }) async {
    pickCount++;
    return onPick?.call() ?? <XFile>[];
  }
}

void main() {
  Future<void> pumpGallery(
    WidgetTester tester, {
    required ImagePicker imagePicker,
    required void Function(File, int) onMediaSelected,
  }) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CustomScrollView(
          slivers: [
            CustomMediaGallery(
              selectedMedia: const [],
              selectionOrder: const {},
              onMediaSelected: onMediaSelected,
              imagePicker: imagePicker,
            ),
          ],
        ),
      ),
    );
    await tester.pump();
  }

  testWidgets('shows placeholder when picker returns empty list', (
    tester,
  ) async {
    final picker = FakeImagePicker(onPick: () => []);

    await pumpGallery(tester, imagePicker: picker, onMediaSelected: (_, __) {});

    expect(find.text('Select Photos'), findsOneWidget);
    expect(picker.pickCount, 1);

    await tester.tap(find.text('Select Photos'));
    await tester.pump();
    expect(picker.pickCount, 2);
  });

  testWidgets('renders grid and handles selection callback', (tester) async {
    final tempFile = File(
      '${(await Directory.systemTemp.createTemp()).path}/image.jpg',
    )..writeAsBytesSync(List<int>.filled(10, 0));
    var selected = false;

    final picker = FakeImagePicker(onPick: () => [XFile(tempFile.path)]);

    await pumpGallery(
      tester,
      imagePicker: picker,
      onMediaSelected: (_, __) => selected = true,
    );

    expect(find.text('Select Photos'), findsNothing);
    expect(find.bySemanticsLabel('Gallery image'), findsOneWidget);

    await tester.tap(find.bySemanticsLabel('Gallery image').first);
    await tester.pump();

    expect(selected, isTrue);
  });
}
