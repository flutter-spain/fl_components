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

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: primaryColor,
          ),
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primaryColor,
          elevation: 0
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
           style: ElevatedButton.styleFrom(
              primary: AppThemeIndigo.primaryColor,
              shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(20)
              )
           ),
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