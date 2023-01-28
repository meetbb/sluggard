import 'package:flutter/material.dart';

class AppTheme {
  //
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.teal,
    appBarTheme: const AppBarTheme(
      color: Colors.teal,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.white,
      primaryContainer: Colors.white38,
      secondary: Colors.red,
    ),
    cardTheme: const CardTheme(
      color: Colors.teal,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
        ),
        titleMedium: TextStyle(
          color: Colors.white70,
          fontSize: 22.0,
        ),
        titleSmall: TextStyle(
          color: Colors.white70,
          fontSize: 20,
        )),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 33, 33, 33),
    appBarTheme: const AppBarTheme(
      color: Color.fromARGB(255, 38, 50, 56),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.dark(
      primary: Colors.white,
      onPrimary: Colors.blueGrey,
      primaryContainer: Colors.black,
      secondary: Colors.white,
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: Colors.white70,
        fontSize: 22.0,
      ),
      titleSmall: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: 15,
      ),
    ),
  );
}
