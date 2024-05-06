import 'package:chat_hive_ai_core/chat_hive_ai_core.dart';
import 'package:flutter/material.dart';

class ChatHiveAiDrawer extends StatelessWidget {
  const ChatHiveAiDrawer(
      {super.key,
      this.headerDrawer,
      this.bodyDrawer,
      this.footerDrawer,
      this.isDivider,
      this.colorDivider,
      this.heightDivider,
      this.padding});
  final Widget? headerDrawer;
  final Widget? bodyDrawer;
  final Widget? footerDrawer;
  final bool? isDivider;
  final Color? colorDivider;
  final double? heightDivider;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.isDark ? context.darkGrey : context.lightGrey,
      child: Padding(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            headerDrawer ?? Container(),
            isDivider != null && isDivider!
                ? Divider(
                    height: heightDivider,
                    color: colorDivider,
                  )
                : Container(),
            Flexible(
              child: bodyDrawer ?? Container(),
            ),
            isDivider != null && isDivider!
                ? Divider(
                    height: heightDivider,
                    color: colorDivider,
                  )
                : Container(),
            footerDrawer ?? Container()
          ],
        ),
      ),
    );
  }
}
