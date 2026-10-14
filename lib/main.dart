import 'package:evently_test/config/theme/theme_manager.dart';
import 'package:evently_test/core/routes/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(Evently());
}

class Evently extends StatelessWidget {
  const Evently({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesManager.register,
          onGenerateRoute: RoutesManager.getRoute,
          theme: ThemeManager.light,
          darkTheme: ThemeManager.dark,
          themeMode: ThemeMode.light,
        );
      },
    );
  }
}
