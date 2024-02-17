import 'package:flutter/material.dart';
import 'package:notes_app/controllers/logincontroller.dart';
import 'package:notes_app/views/mainscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController logincontroller = LoginController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Log In"),
            TextField(
              decoration: InputDecoration(labelText: "Username"),
              controller: usernameController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Password"),
              controller: passwordController,
            ),
            InkWell(
                child: Container(child: Text("Log In")),
                onTap: () {
                  print(usernameController.text);
                  print(passwordController.text);
                  logincontroller.login(usernameController.text, passwordController.text,context);
                }),
          ],
        ),
      ),
    );
  }
}
