import 'package:evently_test/core/resources/colors_manager/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeManager {
  static ThemeData light = ThemeData(
    hintColor: ColorsManager.blue0E,
    appBarTheme: AppBarThemeData(
      backgroundColor: ColorsManager.whitef4,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorsManager.black1c,
      ),
      centerTitle: true,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorsManager.blue0E,
      foregroundColor: ColorsManager.white,
    ),
    scaffoldBackgroundColor: ColorsManager.whitef4,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorsManager.white,
      filled: true,
      prefixIconColor: ColorsManager.grey68,
      suffixIconColor: ColorsManager.grey68,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorsManager.grey68),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorsManager.grey68),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorsManager.grey68),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorsManager.grey68),
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: ColorsManager.blue0E,
      ),
      labelSmall: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorsManager.grey68,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: ColorsManager.grey68,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: ColorsManager.blue0E,
        decoration: TextDecoration.underline,
        decorationColor: ColorsManager.blue0E,
      ),

      headlineMedium: GoogleFonts.poppins(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManager.black1c,
      ),
      labelMedium: GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManager.black1c,
      ),
      titleSmall: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManager.black1c,
      ),
      headlineLarge: GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: ColorsManager.black1c,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: ColorsManager.white,
        textStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: ColorsManager.blue0E,
        padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 120.w),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: ColorsManager.blue0E,
      unselectedItemColor: ColorsManager.greyB9,
      backgroundColor: ColorsManager.white,
      type: BottomNavigationBarType.fixed,
    ),
  );
  static ThemeData dark = ThemeData();
}
