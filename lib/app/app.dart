import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../core/theme/app_theme.dart';
import '../core/theme/theme_view_model.dart';
import '../core/locale/locale_view_model.dart';
import '../l10n/app_localizations.dart';
import 'app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeViewModel, LocaleViewModel>(
      builder: (context, themeVM, localeVM, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          // THEME
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeVM.themeMode,

          // LANGUAGE
          locale: localeVM.locale,
          supportedLocales: const [
            Locale('en'),
            Locale('ta'),
            Locale('hi'),
          ],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          initialRoute: AppRoutes.login,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
