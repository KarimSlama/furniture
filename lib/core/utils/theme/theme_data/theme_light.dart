import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:furniture/core/utils/theme/app_colors/app_colors.dart';

ThemeData themeLight = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      secondary: Colors.white,
      background: Colors.white,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
      onBackground: Colors.white,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      elevation: 0,
      titleTextStyle: GoogleFonts.rubik(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      actionsIconTheme: const IconThemeData(color: Colors.black, size: 26),
      toolbarTextStyle: GoogleFonts.rubik(
        color: Colors.black,
        fontSize: 14,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.rubik(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
    ),
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: AppColors.grey,
      labelColor: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedItemColor: AppColors.yellow,
      backgroundColor: AppColors.white,
      unselectedItemColor: AppColors.lightBlack,
    ));
