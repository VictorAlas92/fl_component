import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.teal;

//**   creacion de lightTheme **//
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //** Color primario
    primaryColor: primary,
    //** appBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    //** TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),

    //** floatingActionBotton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0.2,
    ),

    //** elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          shape: const StadiumBorder(),
          elevation: 0.2),
    ),
  );

//**   creacion de darkTheme **//
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //** Color primario
    primaryColor: Colors.indigo,
    //** appBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black26,
  );
}
