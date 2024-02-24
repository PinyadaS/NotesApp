import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/controllers/registercontroller.dart';
import 'package:notes_app/models/registerRequestModel.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final RegisterController registercontroller = RegisterController();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final birthdayController = TextEditingController();

  DateTime? selectedDate;
  Future<void> selectdate(BuildContext buildContext) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        firstDate: DateTime(1950),
        lastDate: DateTime.now(),
        helpText: "Select your birthday.");
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        birthdayController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

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
          controller: birthdayController,
          readOnly: true,
          decoration: InputDecoration(labelText: "Birthday"),
          onTap: () => selectdate(context),
        ),
        InkWell(
            child: Container(child: Text("Sign Up")),
            onTap: () {
              registercontroller.register(
                  context,
                  RegisterRequestModel(
                      firstname: firstnameController.text,
                      lastname: lastnameController.text,
                      username: usernameController.text,
                      password: passwordController.text,
                      birthday: birthdayController.text));
            }),
      ],
    ));
  }
}
