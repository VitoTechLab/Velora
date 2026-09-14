import 'package:flutter/material.dart';
import 'package:velora/features/auth/presentation/screens/auth_entry_screen.dart';
import 'package:velora/features/auth/presentation/widgets/auth_mode.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthEntryScreen(mode: AuthMode.signUp);
  }
}
