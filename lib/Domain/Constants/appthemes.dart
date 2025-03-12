import 'package:chatapp/Domain/Constants/appcolors.dart';
import 'package:flutter/material.dart';

class AppThemes{
  static final ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: AppColor.scaffoldlight,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: AppColor.buttonlightmode)
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: AppColor.textlightmode),
      bodyLarge: TextStyle(color: AppColor.textlightmode),
    )
  );

  static final ThemeData darkTheme=ThemeData(
    scaffoldBackgroundColor: AppColor.scoffolddark,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: AppColor.buttondarkmode)
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: AppColor.textdarkmode),
      bodyLarge: TextStyle(color: AppColor.textdarkmode),
    )
  );
}