import 'package:evently_test/core/resources/colors_manager/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeManager {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: ColorsManager.white,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorsManager.white,
      filled: true,
      prefixIconColor: ColorsManager.grey,
      suffixIconColor: ColorsManager.grey,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorsManager.grey),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorsManager.grey),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorsManager.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorsManager.grey),
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
        color: ColorsManager.grey,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: ColorsManager.grey,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: ColorsManager.blue0E,
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
        padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 133.5.w),
      ),
    ),
  );
  static ThemeData dark = ThemeData();
}
