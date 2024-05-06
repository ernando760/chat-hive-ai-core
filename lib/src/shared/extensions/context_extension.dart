import 'package:chat_hive_ai_core/chat_hive_ai_core.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  bool get isDark => theme.brightness == Brightness.dark;

  Size get sizeOf => MediaQuery.sizeOf(this);

  //colors
  Color get black => const Color(0xFF0C120C);
  Color get darkGrey => Colors.grey[900]!;
  Color get purple => const Color(0xFFA42CD6);
  Color get white => Colors.white;
  Color get lightGrey => Colors.grey[100]!;
  Color get red => const Color(0xFFC1292E);

  //TextStyles
  TextStyle get body16Medium => ChatHiveAITextStyles.body16Medium;
  TextStyle get body18Medium => ChatHiveAITextStyles.body18Medium;
  TextStyle get caption10SemiBold => ChatHiveAITextStyles.caption10SemiBold;
  TextStyle get caption10Medium => ChatHiveAITextStyles.caption10Medium;
  TextStyle get caption12Medium => ChatHiveAITextStyles.caption12Medium;
  TextStyle get caption12Regular => ChatHiveAITextStyles.caption12Regular;
  TextStyle get caption8Regular => ChatHiveAITextStyles.caption8Regular;
}
