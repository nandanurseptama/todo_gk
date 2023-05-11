import 'package:flutter/material.dart';

class AppTheme {
  static AppTheme? instance;
  final Brightness brightness;
  AppTheme._({required this.brightness});

  factory AppTheme.fromIsDarkModeActive(bool isDarkModeActive) {
    var brightness = isDarkModeActive ? Brightness.dark : Brightness.light;
    instance ??= AppTheme._(brightness: brightness);

    if (instance!.brightness != brightness) {
      instance = AppTheme._(brightness: brightness);
    }
    return instance!;
  }
  factory AppTheme() => instance!;

  ColorScheme get colorScheme {
    return ColorScheme.fromSeed(
        seedColor: const Color(0xff0044ff), brightness: brightness);
  }

  ThemeData get theme {
    return ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: brightness == Brightness.dark
            ? const Color.fromARGB(0, 4, 4, 43)
            : const Color(0xfff4f4f4),
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        )))),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
            ) 
          )
        ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 158, 155, 155),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedItemColor: const Color.fromARGB(255, 158, 155, 155),
            selectedItemColor: colorScheme.primary,
            type: BottomNavigationBarType.fixed),
        inputDecorationTheme: inputDecorationTheme);
  }

  InputDecorationTheme get inputDecorationTheme {
    return InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.outline)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.outline)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.primary, width: 1)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.error, width: 1)),
    );
  }

  LinearGradient get shimmerGradient => LinearGradient(
        colors: [
          colorScheme.outline,
          colorScheme.onBackground,
          colorScheme.outline,
        ],
        stops: const [
          0.1,
          0.3,
          0.4,
        ],
        begin: const Alignment(-1.0, -0.3),
        end: const Alignment(1.0, 0.3),
        tileMode: TileMode.clamp,
      );
}
