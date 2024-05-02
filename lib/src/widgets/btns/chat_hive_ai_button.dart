import 'package:flutter/material.dart';

class ChatHiveAiButton extends StatelessWidget {
  const ChatHiveAiButton(
      {super.key,
      required this.child,
      this.onPressed,
      this.padding = EdgeInsets.zero,
      this.borderRadius,
      this.shape = const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      this.constraints = const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
      this.backgroundColor});

  final Widget child;
  final EdgeInsets padding;
  final VoidCallback? onPressed;
  final ShapeBorder shape;
  final BorderRadius? borderRadius;
  final BoxConstraints constraints;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: constraints,
      onPressed: onPressed,
      shape: shape,
      padding: padding,
      fillColor: backgroundColor,
      child: child,
    );
  }
}
