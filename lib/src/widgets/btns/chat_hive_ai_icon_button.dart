import 'package:chat_hive_ai_core/chat_hive_ai_core.dart';
import 'package:flutter/material.dart';

class ChatHiveAIIconButton extends StatelessWidget {
  const ChatHiveAIIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.padding,
    this.shapeBorder,
    this.backgroundColor,
    this.sizedIcon,
  });
  final Widget icon;
  final VoidCallback onPressed;
  final EdgeInsets? padding;
  final ShapeBorder? shapeBorder;
  final Size? sizedIcon;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ChatHiveAiButton(
      onPressed: onPressed,
      padding: padding ?? const EdgeInsets.all(8),
      backgroundColor: backgroundColor ?? context.purple,
      shape: shapeBorder ?? const CircleBorder(),
      child: SizedBox(
          width: sizedIcon?.width, height: sizedIcon?.height, child: icon),
    );
  }
}
