import 'package:chat_hive_ai_core/chat_hive_ai_core.dart';
import 'package:chat_hive_ai_core/src/shared/notifier/chat_hive_theme_notifier.dart';
import 'package:chat_hive_ai_core/src/widgets/btns/switch/chat_hive_ai_switch_button.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatHiveAiToggleThemeButton extends StatelessWidget {
  const ChatHiveAiToggleThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<ChatHiveThemeNotifier>();
    return Container(
      padding: const EdgeInsets.all(7),
      // constraints: const BoxConstraints(maxHeight: 50, maxWidth: 200),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color:
              context.isDark ? ChatHiveAIColors.black2 : ChatHiveAIColors.gray),
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        children: [
          ChatHiveAiSwitchButton(
            backgroundColor: context.isDark
                ? ChatHiveAIColors.gray
                : ChatHiveAIColors.black2,
            foregroundColor: context.isDark
                ? ChatHiveAIColors.black2
                : ChatHiveAIColors.gray,
            icon: Icon(
              context.isDark
                  ? Icons.mode_night_outlined
                  : Icons.wb_sunny_outlined,
              color: context.isDark
                  ? ChatHiveAIColors.gray
                  : ChatHiveAIColors.black,
              size: 14,
            ),
            isSelected: context.isDark,
            onPressed: notifier.toggleTheme,
          ),
          Text(
            context.isDark ? "Escuro" : "Claro",
            style: ChatHiveAITextStyles.caption10Medium.copyWith(
              color: context.isDark
                  ? ChatHiveAIColors.gray
                  : ChatHiveAIColors.black2,
            ),
          ),
        ],
      ),
    );
  }
}
