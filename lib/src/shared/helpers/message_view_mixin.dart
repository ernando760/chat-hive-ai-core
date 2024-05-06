import 'dart:developer';

import 'package:chat_hive_ai_core/src/shared/helpers/message_state_mixin.dart';
import 'package:chat_hive_ai_core/src/shared/helpers/messages.dart';
import 'package:flutter/material.dart';

mixin MessagesViewMixin<T extends StatefulWidget> on State<T> {
  void Function()? _messagelisterner;
  void messagelistener(MessagesStateMixin messagesStateMixin) {
    _messagelisterner = () {
      final MessagesStateMixin(:typeMessage, :message) = messagesStateMixin;
      switch (typeMessage) {
        case TypeMessage.error:
          if (message!.isNotEmpty) {
            Messages.showError(context, message);
          }
        case TypeMessage.success:
          if (message!.isNotEmpty) {
            Messages.showSuccess(context, message);
          }
        case TypeMessage.info:
          if (message!.isNotEmpty) {
            Messages.showInfo(context, message);
          }
        case _:
      }
      // setState(() {});
    };
    if (_messagelisterner != null) {
      log("_messagelisterner != null => ${_messagelisterner != null}",
          name: "Add message listerner");
      messagesStateMixin.addListener(_messagelisterner!);
    }
  }

  void removeMessageListerner(MessagesStateMixin messagesStateMixin) {
    if (_messagelisterner != null) {
      log("_messagelisterner != null => ${_messagelisterner != null}",
          name: "Remove message listerner");
      messagesStateMixin.removeListener(_messagelisterner!);
    }
  }
}
