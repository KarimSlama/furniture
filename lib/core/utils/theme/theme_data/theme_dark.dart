import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:furniture/core/utils/theme/app_colors/app_colors.dart';

ThemeData themeDark = ThemeData(
    scaffoldBackgroundColor: Colors.black26,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: Colors.blue,
      secondary: Colors.black26,
      surface: AppColors.green,
      background: Colors.black26,
      error: Colors.red,
      onPrimary: AppColors.white,
      onSecondary: AppColors.white,
      onSurface: AppColors.white,
      onBackground: AppColors.white,
      onError: AppColors.white,
      brightness: Brightness.dark,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      elevation: 0,
      titleTextStyle: GoogleFonts.rubik(
        color: AppColors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      actionsIconTheme: const IconThemeData(color: AppColors.white, size: 26),
      toolbarTextStyle: GoogleFonts.rubik(
        color: AppColors.white,
        fontSize: 14,
      ),
      iconTheme: const IconThemeData(
        color: AppColors.white,
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.white,
    ),
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.rubik(
          color: AppColors.white, fontSize: 18, fontWeight: FontWeight.w400),
    ),
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: AppColors.grey,
      labelColor: AppColors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      selectedItemColor: AppColors.yellow,
      unselectedItemColor: AppColors.white,
    ));
