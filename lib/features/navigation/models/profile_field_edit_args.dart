import 'package:flutter/material.dart';

class ProfileFieldEditArgs {
  final String title;
  final String label;
  final String initialValue;
  final String? helperText;
  final TextInputType? keyboardType;
  final int maxLines;
  final String? hintText;
  final String? saveLabel;

  const ProfileFieldEditArgs({
    required this.title,
    required this.label,
    this.initialValue = '',
    this.helperText,
    this.keyboardType,
    this.maxLines = 1,
    this.hintText,
    this.saveLabel,
  });
}
