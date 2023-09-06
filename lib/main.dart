import 'package:flutter/material.dart';
import 'package:furniture/core/utils/theme/theme_data/theme_light.dart';
import 'package:furniture/furniture/presentation/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeLight,
      home: const SplashScreen(),
    );
  }
}
