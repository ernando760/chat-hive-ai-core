import 'package:chat_hive_ai_core/src/shared/theme/chat_hive_ai_text_styles.dart';
import 'package:flutter/material.dart';

class ChatHiveAITheme {
  static const _defaultBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFA42CD6), width: 2),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF0C120C),
    // InputDecorationTheme
    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: const Color(0xFFFFFFFF),
      prefixIconColor: const Color(0xFFFFFFFF),
      labelStyle: ChatHiveAITextStyles.caption12Regular
          .copyWith(color: Colors.white.withOpacity(.5)),
      border: _defaultBorder,
      enabledBorder: _defaultBorder,
      focusedBorder: _defaultBorder,
      disabledBorder: _defaultBorder.copyWith(
          borderSide: BorderSide(color: Colors.grey[100]!, width: 2)),
      errorBorder: _defaultBorder.copyWith(
          borderSide: const BorderSide(color: Color(0xFFC1292E), width: 2)),
    ),
    // ElevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFA42CD6),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            textStyle: ChatHiveAITextStyles.caption12Medium
                .copyWith(color: const Color(0xFFFFFFFF)))),
  );

  static final light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    // InputDecorationTheme
    inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: const Color(0xFF0C120C),
        prefixIconColor: const Color(0xFF0C120C),
        labelStyle: ChatHiveAITextStyles.caption12Regular
            .copyWith(color: const Color(0xFF000000).withOpacity(.8)),
        enabledBorder: _defaultBorder,
        focusedBorder: _defaultBorder,
        disabledBorder: _defaultBorder.copyWith(
            borderSide: BorderSide(color: Colors.grey[100]!, width: 2)),
        errorBorder: _defaultBorder.copyWith(
            borderSide: const BorderSide(color: Color(0xFFC1292E), width: 2)),
        border: _defaultBorder),
    // ElevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFA42CD6),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            textStyle: ChatHiveAITextStyles.caption12Medium
                .copyWith(color: const Color(0xFFFFFFFF)))),
  );
}
