
import 'package:fl_components/router/app_routers.dart';
import 'package:fl_components/themes/app_theme_indigo.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static bool theme = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.getAppRoutes(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      theme: theme ? AppThemeIndigo.lightTheme : AppThemeIndigo.darkTheme,
    );
  }
}