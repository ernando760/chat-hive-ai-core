import 'package:chat_hive_ai_core/chat_hive_ai_core.dart';
import 'package:flutter/material.dart';

import 'package:svg_flutter/svg.dart';

class ChatHiveAiGoogleButton extends StatelessWidget {
  const ChatHiveAiGoogleButton(
      {super.key,
      required this.text,
      this.onPressed,
      required this.iconPath,
      this.padding = EdgeInsets.zero});
  final String iconPath;
  final String text;
  final VoidCallback? onPressed;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return ChatHiveAiButton(
      onPressed: onPressed,
      padding: padding,
      backgroundColor:
          context.isDark ? context.darkGrey.withOpacity(.2) : context.lightGrey,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Row(
          children: [
            SizedBox.fromSize(
                size: const Size(21, 21), child: SvgPicture.asset(iconPath)),
            SizedBox(width: context.sizeOf.width * .05),
            Text(
              text,
              textAlign: TextAlign.center,
              style: context.isDark
                  ? ChatHiveAITextStyles.caption12Medium
                      .copyWith(color: context.white.withOpacity(.6))
                  : ChatHiveAITextStyles.caption12Medium
                      .copyWith(color: context.black.withOpacity(.6)),
            ),
          ],
        ),
      ),
    );
  }
}
