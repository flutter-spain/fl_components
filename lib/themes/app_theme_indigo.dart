import 'package:flutter/material.dart';

class AppThemeIndigo {
  static const Color primaryColor = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        // Color primario
        primaryColor: primaryColor,

        // AppBar
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: primaryColor,
        ),
      );


  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        // Color primario
        primaryColor: primaryColor,

        // AppBar
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: primaryColor,
        ),

        // Texto
        scaffoldBackgroundColor: Colors.black
      );


}