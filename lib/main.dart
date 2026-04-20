import 'package:flutter/material.dart';
import 'theme.dart';
import 'login_screen.dart';

void main() {
  runApp(const CineSwipeApp());
}

class CineSwipeApp extends StatelessWidget {
  const CineSwipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CineSwipe',
      debugShowCheckedModeBanner: false,
      theme: CineSwipeTheme.darkTheme,
      home: const LoginScreen(),
    );
  }
}
