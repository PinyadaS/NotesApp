import 'package:flutter/material.dart';
import 'package:notes_app/models/registerRequestModel.dart';
import 'package:notes_app/services/user_service.dart';

class RegisterController {
  UserService userService = UserService();

  void register(BuildContext context, RegisterRequestModel requestdata) async {
    try {
      final data = await userService.register(requestdata);
      print(data);
      if (Navigator.canPop(context)) {
        Navigator.popAndPushNamed(context, '/main');
      }
    } catch (e) {
      print(e);
    }
  }
}
