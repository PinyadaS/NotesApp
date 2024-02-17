import 'package:flutter/material.dart';
import 'package:notes_app/services/user_service.dart';
import 'package:notes_app/views/mainscreen.dart';

class LoginController {
  UserService userService = UserService();
  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return "You have not entered a username.";
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "You have not entered a username.";
    }
    return null;
  }

  void login(String username, String password, BuildContext context) async {
    try {
      final data = await userService.authenticate(username, password);
      if (Navigator.canPop(context)) {
        Navigator.popAndPushNamed(context, '/main');
      }
    } catch (e) {
      print(e);
    }
  }
}
