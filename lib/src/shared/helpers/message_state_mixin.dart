import 'package:flutter/material.dart';

mixin MessageStateMixin on ChangeNotifier {
  String? _messageInfo = '';
  String? _messageSuccess = '';
  String? _messageError = '';

  String? get messageInfo => _messageInfo;
  String? get messageSuccess => _messageSuccess;
  String? get messageError => _messageError;

  void showInfo(String message) {
    _messageInfo = "";
    _messageInfo = message;
    // notifyListeners();
  }

  void showSuccess(String message) {
    _messageSuccess = "";
    _messageSuccess = message;
    // notifyListeners();
  }

  void showError(String message) {
    _messageError = "";
    _messageError = message;
    // notifyListeners();
  }

  void cleanMessages() {
    _messageError = "";
    _messageInfo = "";
    _messageSuccess = "";
  }
}
