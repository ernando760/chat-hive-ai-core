import 'package:chat_hive_ai_core/chat_hive_ai_core.dart';
import 'package:flutter/material.dart';

class ChatHiveAISettingsCards extends StatelessWidget {
  const ChatHiveAISettingsCards(
      {super.key,
      required this.settingItems,
      this.width,
      this.height,
      this.constraints = const BoxConstraints(maxHeight: 100, maxWidth: 150)});
  final double? width;
  final double? height;
  final BoxConstraints constraints;
  final List<ChatHiveAISettingsItems> settingItems;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
      constraints: constraints,
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: context.isDark ? context.darkGrey : context.lightGrey),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: settingItems,
      ),
    );
  }
}

class ChatHiveAISettingsItems extends StatelessWidget {
  const ChatHiveAISettingsItems(
      {super.key,
      required this.icon,
      required this.label,
      this.labelStyle,
      this.onPressed,
      this.gap});
  final Widget icon;
  final String label;
  final TextStyle? labelStyle;
  final double? gap;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ChatHiveAiButton(
        onPressed: onPressed,
        padding: const EdgeInsets.all(2),
        child: Row(
          children: [
            icon,
            SizedBox(
              width: gap ?? 5,
            ),
            Text(
              label,
              style: labelStyle ??
                  ChatHiveAITextStyles.caption10Medium.copyWith(
                      color: context.isDark
                          ? context.lightGrey
                          : context.darkGrey),
            )
          ],
        ));
  }
}
