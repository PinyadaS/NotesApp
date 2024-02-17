import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // final RegisterController registercontroller = RegisterController();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  // final birthdayController = ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text("Register"),
        TextField(
          decoration: InputDecoration(labelText: "First Name"),
          controller: firstnameController,
        ),
        TextField(
          decoration: InputDecoration(labelText: "Last Name"),
          controller: lastnameController,
        ),
        TextField(
          decoration: InputDecoration(labelText: "Username"),
          controller: usernameController,
        ),
        TextField(
          decoration: InputDecoration(labelText: "Password"),
          controller: passwordController,
        ),
        TextField(
          decoration: InputDecoration(labelText: "Birthday"),
          // controller: birthdayController,
        ),
        InkWell(
            child: Container(child: Text("Log In")),
            onTap: () {

            }),
      ],
    ));
  }
}
