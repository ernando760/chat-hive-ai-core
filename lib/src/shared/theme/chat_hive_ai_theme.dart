import 'package:chat_hive_ai_core/src/shared/theme/chat_hive_ai_colors.dart';
import 'package:chat_hive_ai_core/src/shared/theme/chat_hive_ai_text_styles.dart';
import 'package:flutter/material.dart';

class ChatHiveAITheme {
  static const _defaultBorder = OutlineInputBorder(
    borderSide: BorderSide(color: ChatHiveAIColors.purple, width: 2),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ChatHiveAIColors.black,
    // InputDecorationTheme
    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: ChatHiveAIColors.white,
      prefixIconColor: ChatHiveAIColors.white,
      labelStyle: ChatHiveAITextStyles.caption12Regular
          .copyWith(color: Colors.white.withOpacity(.5)),
      border: _defaultBorder,
      enabledBorder: _defaultBorder,
      focusedBorder: _defaultBorder,
      disabledBorder: _defaultBorder.copyWith(
          borderSide: const BorderSide(color: ChatHiveAIColors.gray, width: 2)),
      errorBorder: _defaultBorder.copyWith(
          borderSide: const BorderSide(color: ChatHiveAIColors.red, width: 2)),
    ),
    // ElevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: ChatHiveAIColors.purple,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            textStyle: ChatHiveAITextStyles.caption12Medium
                .copyWith(color: ChatHiveAIColors.white))),
  );

  static final light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: ChatHiveAIColors.white,
    // InputDecorationTheme
    inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: ChatHiveAIColors.black,
        prefixIconColor: ChatHiveAIColors.black,
        labelStyle: ChatHiveAITextStyles.caption12Regular
            .copyWith(color: Colors.black.withOpacity(.8)),
        enabledBorder: _defaultBorder,
        focusedBorder: _defaultBorder,
        disabledBorder: _defaultBorder.copyWith(
            borderSide:
                const BorderSide(color: ChatHiveAIColors.gray, width: 2)),
        errorBorder: _defaultBorder.copyWith(
            borderSide:
                const BorderSide(color: ChatHiveAIColors.red, width: 2)),
        border: _defaultBorder),
    // ElevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: ChatHiveAIColors.purple,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            textStyle: ChatHiveAITextStyles.caption12Medium
                .copyWith(color: ChatHiveAIColors.white))),
  );
}
