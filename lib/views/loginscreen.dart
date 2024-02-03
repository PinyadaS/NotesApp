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
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final LoginController logincontroller = LoginController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Log In"),
              TextFormField(
                decoration: InputDecoration(labelText: "Username"),
                validator: (value) => logincontroller.validateUsername(value),
                onChanged: (newValue) => logincontroller.updateUsername(newValue),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                validator: (value) => logincontroller.validatePassword(value),
                onChanged: (newValue) => logincontroller.updatePassword(newValue),
              ),
              InkWell(
                  child: Container(child: Text("Log In")),
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      logincontroller.login();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
