import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class AppTheme{
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackGround,
    brightness: Brightness.light,
    fontFamily: "Satoshi",
    inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.all(30),
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
      ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
  );

  static final darkTheme = ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.darkBackGround,
      brightness: Brightness.dark,
      fontFamily: "Satoshi",
      inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.all(30),
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          elevation: 0,
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
}