import 'package:flutter/material.dart';
import 'package:spotify_clone/app/auth/views/pages/signup_page.dart';
import 'package:spotify_clone/core/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      theme: AppTheme.darkThemeMode,
      home: const SignupPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
