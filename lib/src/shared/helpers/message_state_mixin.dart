import 'package:flutter/material.dart';

enum TypeMessage {
  error,
  success,
  info;
}

mixin MessagesStateMixin on ChangeNotifier {
  TypeMessage? typeMessage;
  String? message;

  void showMessageError(String value) {
    clearMessage();
    typeMessage = TypeMessage.error;
    message = value;
  }

  void showMessageInfo(String value) {
    clearMessage();
    typeMessage = TypeMessage.info;
    message = value;
  }

  void showMessageSuccess(String value) {
    clearMessage();
    typeMessage = TypeMessage.success;
    message = value;
  }

  void clearMessage() {
    typeMessage = null;
    message = null;
  }
}
