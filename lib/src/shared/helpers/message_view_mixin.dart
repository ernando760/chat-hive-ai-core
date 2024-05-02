import 'package:chat_hive_ai_core/src/shared/helpers/message_state_mixin.dart';
import 'package:chat_hive_ai_core/src/shared/helpers/messages.dart';
import 'package:flutter/material.dart';

mixin MessageViewMixin<T extends StatefulWidget> on State<T> {
  void messageViewListener(MessageStateMixin controller) {
    if (context.mounted) {
      switch (controller) {
        case MessageStateMixin(:final messageError?):
          Messages.showError(context, messageError);
          controller.cleanMessages();
        case MessageStateMixin(:final messageSuccess?):
          Messages.showSuccess(context, messageSuccess);
          controller.cleanMessages();
        case MessageStateMixin(:final messageInfo?):
          Messages.showInfo(context, messageInfo);
          controller.cleanMessages();
      }
    }
  }
}
