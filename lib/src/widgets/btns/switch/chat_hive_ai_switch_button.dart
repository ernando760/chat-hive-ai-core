import 'package:flutter/material.dart';

class ChatHiveAiSwitchButton extends StatelessWidget {
  const ChatHiveAiSwitchButton(
      {super.key,
      this.margin,
      this.padding,
      this.onPressed,
      this.sizedSwitchButton,
      this.width,
      this.height,
      this.backgroundColor,
      this.foregroundColor,
      this.icon,
      this.isSelected = false,
      this.constraints});
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final VoidCallback? onPressed;
  final Size? sizedSwitchButton;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Widget? icon;
  final bool isSelected;
  final BoxConstraints? constraints;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.only(right: 5),
      constraints: constraints,
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 1, horizontal: 2),
      width: width ?? 60,
      height: height ?? 30,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          color: backgroundColor),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        alignment: isSelected ? Alignment.centerRight : Alignment.centerLeft,
        child: SizedBox(
          height: sizedSwitchButton?.height ?? 30,
          width: sizedSwitchButton?.width ?? 30,
          child: IconButton(
            onPressed: onPressed,
            style: IconButton.styleFrom(
              backgroundColor: foregroundColor,
            ),
            icon: icon ?? Container(),
          ),
        ),
      ),
    );
  }
}
