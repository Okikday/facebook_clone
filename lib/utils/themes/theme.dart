import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(

      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.black,
          onPrimary: Colors.black,
          secondary: Colors.white10,
          onSecondary: Colors.white10,
          error: Colors.red,
          onError: Colors.red,
          background: Colors.white,
          onBackground: Colors.white,
          surface: Colors.transparent,
          onSurface: Colors.transparent));

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      // appBarTheme: AppBarTheme(
      //   color: Colors.white,
      //   foregroundColor: Colors.white,
      //   backgroundColor: Colors.white
      // ),
      
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.white,
          onPrimary: Colors.white,
          secondary: Colors.black12,
          onSecondary: Colors.black12,
          error: Colors.red,
          onError: Colors.red,
          background: Colors.black,
          onBackground: Colors.black,
          surface: Colors.transparent,
          onSurface: Colors.transparent));
}
