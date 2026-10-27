import 'package:evently_test/config/theme/theme_manager.dart';
import 'package:evently_test/core/routes/routes_manager.dart';
import 'package:evently_test/l10n/app_localizations.dart';
import 'package:evently_test/prefs_manager/prefs_manager.dart';
import 'package:evently_test/providers/lang_provider.dart';
import 'package:evently_test/providers/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefsManager.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => LangProvider()),
      ],
      child: const Evently(),
    ),
  );
}

class Evently extends StatelessWidget {
  const Evently({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var langProvider = Provider.of<LangProvider>(context);
    return ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesManager.homeScreen,
          onGenerateRoute: RoutesManager.getRoute,
          theme: ThemeManager.light,
          darkTheme: ThemeManager.dark,
          themeMode: themeProvider.currentMode,

          supportedLocales: [
            Locale('en'), // English
            Locale('ar'),
          ],
          locale: Locale(langProvider.currentLang),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
        );
      },
    );
  }
}
