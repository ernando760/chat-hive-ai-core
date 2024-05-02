import 'package:chat_hive_ai_core/src/shared/notifier/chat_hive_theme_notifier.dart';
import 'package:chat_hive_ai_core/src/shared/theme/chat_hive_ai_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatHiveAiAppMain extends StatelessWidget {
  const ChatHiveAiAppMain({
    super.key,
    this.routerConfig,
    this.title = "",
    required this.initialRoute,
    required this.routes,
  });

  final RouterConfig<Object>? routerConfig;
  final String title;
  final String initialRoute;
  final Map<String, Widget Function(BuildContext)> routes;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatHiveThemeNotifier(),
      builder: (context, _) {
        final notifier = context.watch<ChatHiveThemeNotifier>();
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          themeMode: notifier.value,
          theme: ChatHiveAITheme.light,
          darkTheme: ChatHiveAITheme.dark,
          initialRoute: initialRoute,
          routes: routes,
        );
      },
    );
  }
}
