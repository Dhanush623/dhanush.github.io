import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/src/screens/dashboard.dart';
import 'package:portfolio/src/utils/app_constants.dart';
import 'package:portfolio/src/utils/screen_util.dart';

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const MyApp({super.key, this.savedThemeMode});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.name,
      home: Scaffold(
        body: AdaptiveTheme(
          light: ThemeData(
            useMaterial3: true,
            brightness: Brightness.light,
            colorSchemeSeed: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          dark: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            colorSchemeSeed: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initial: savedThemeMode ?? AdaptiveThemeMode.system,
          builder: (theme, darkTheme) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppConstants.name,
            theme: theme,
            darkTheme: darkTheme,
            home: const Dashboard(),
          ),
          debugShowFloatingThemeButton: true,
        ),
      ),
    );
  }
}
