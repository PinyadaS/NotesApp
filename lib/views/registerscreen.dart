import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/assets/colour.dart';
import 'package:notes_app/assets/text_styles.dart';
import 'package:notes_app/assets/utility.dart';
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
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text("Register",style: TextStyles.style2(),),
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
          SizedBox(height: 30,),
          InkWell(
              child: Container(
                child: Text(
                  "Sign Up",
                  style: TextStyles.style3(),
                ),
                padding: EdgeInsets.only(left:20, top:5, right:20, bottom:5),
                decoration: BoxDecoration(color: Utility.getColorFromHex(Colour.aegean), borderRadius: BorderRadius.circular(14)),
              ),
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
      ),
    ));
  }
}
