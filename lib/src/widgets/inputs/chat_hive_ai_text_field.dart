import 'package:chat_hive_ai_core/chat_hive_ai_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatHiveAiTextFormField extends StatefulWidget {
  const ChatHiveAiTextFormField(
      {super.key,
      this.label,
      this.controller,
      this.prefix,
      this.suffix,
      this.validator,
      this.textInputAction,
      this.textInputFomatters,
      this.keyboardType,
      this.contentPadding,
      this.width,
      this.height,
      this.obscureText = false,
      this.statesController,
      this.onListenMaterialState,
      this.hintText,
      this.hintStyle,
      this.hintTextDirection,
      this.labelStyle,
      this.focusNode,
      this.onTapOutside,
      this.errorText,
      this.errorStyle});
  final TextEditingController? controller;
  final double? width;
  final double? height;
  final String? label;
  final TextStyle? labelStyle;
  final Widget? prefix;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextDirection? hintTextDirection;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? textInputFomatters;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final MaterialStatesController? statesController;
  final void Function(Set<MaterialState> states)? onListenMaterialState;
  final FocusNode? focusNode;
  final void Function(PointerDownEvent event)? onTapOutside;
  final String? errorText;
  final TextStyle? errorStyle;
  @override
  State<ChatHiveAiTextFormField> createState() =>
      _ChatHiveAiTextFormFieldState();
}

class _ChatHiveAiTextFormFieldState extends State<ChatHiveAiTextFormField> {
  double finalHeight = 45;
  @override
  void initState() {
    super.initState();

    if (widget.statesController != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.statesController!.addListener(() {
          Future.delayed(Duration.zero, () {
            if (widget.onListenMaterialState != null) {
              widget.onListenMaterialState!(widget.statesController!.value);
            }
          });
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? context.sizeOf.width * .8,
      height: widget.height ?? 45,
      child: TextFormField(
        obscureText: widget.obscureText,
        controller: widget.controller,
        statesController: widget.statesController,
        focusNode: widget.focusNode,
        decoration: InputDecoration(
            contentPadding: widget.contentPadding ??
                const EdgeInsets.symmetric(vertical: 12),
            labelText: widget.label,
            labelStyle: widget.labelStyle,
            prefixIcon: widget.prefix,
            suffixIcon: widget.suffix,
            hintText: widget.hintText,
            errorText: widget.errorText,
            errorStyle: widget.errorStyle,
            hintStyle: widget.hintStyle,
            hintTextDirection: widget.hintTextDirection),
        textInputAction: widget.textInputAction,
        inputFormatters: widget.textInputFomatters,
        validator: widget.validator,
        keyboardType: widget.keyboardType,
        onTapOutside: widget.onTapOutside,
      ),
    );
  }
}
