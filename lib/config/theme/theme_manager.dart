import 'package:evently_test/core/resources/colors_manager/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeManager {
  static ThemeData light = ThemeData(
    hintColor: ColorsManager.blue0E,
    primaryColor: ColorsManager.white,
    disabledColor: ColorsManager.greyB9,
    cardColor: ColorsManager.white,
    focusColor: ColorsManager.whitef4,

    appBarTheme: AppBarThemeData(
      backgroundColor: ColorsManager.whitef4,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 18,
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
  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: ColorsManager.blue00,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorsManager.blue45,
      foregroundColor: ColorsManager.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: ColorsManager.blue45,
      unselectedItemColor: ColorsManager.greyB9,
      backgroundColor: ColorsManager.blue00,
      type: BottomNavigationBarType.fixed,
    ),
    appBarTheme: AppBarThemeData(
      backgroundColor: ColorsManager.blue00,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: ColorsManager.white,
      ),
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: ColorsManager.white,
        textStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: ColorsManager.blue45,
        padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 120.w),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorsManager.blue00,
      filled: true,
      prefixIconColor: ColorsManager.greyB9,
      suffixIconColor: ColorsManager.greyB9,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorsManager.blue002D),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorsManager.greyB9),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorsManager.greyB9),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: ColorsManager.greyB9),
      ),
    ),
    primaryColor: ColorsManager.blue002D,
    hintColor: ColorsManager.blue45,
    disabledColor: ColorsManager.blue00,
    cardColor: ColorsManager.blue0014,
    focusColor: ColorsManager.blue002D,

    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: ColorsManager.white,
      ),
      labelSmall: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorsManager.greyB9,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: ColorsManager.greyD6,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: ColorsManager.blue45,
        decoration: TextDecoration.underline,
        decorationColor: ColorsManager.blue45,
      ),
      headlineMedium: GoogleFonts.poppins(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManager.white,
      ),
      labelMedium: GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManager.white,
      ),

      titleSmall: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManager.white,
      ),
      headlineLarge: GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: ColorsManager.white,
      ),
    ),
  );
}
