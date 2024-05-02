import 'package:flutter/material.dart';

class ChatHiveThemeNotifier extends ValueNotifier<ThemeMode> {
  ChatHiveThemeNotifier() : super(ThemeMode.system);

  late bool _isDark = value == ThemeMode.dark;
  bool get isDark => _isDark;

  void toggleTheme() {
    value = isDark ? ThemeMode.dark : ThemeMode.light;
    _isDark = !isDark;
  }
}
