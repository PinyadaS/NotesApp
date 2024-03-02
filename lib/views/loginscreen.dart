import 'package:flutter/material.dart';
import 'package:notes_app/assets/colour.dart';
import 'package:notes_app/assets/text_styles.dart';
import 'package:notes_app/assets/utility.dart';
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
            Text(
              "Log In",
              style: TextStyles.style2(),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Username"),
              controller: usernameController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Password"),
              controller: passwordController,
            ),
            SizedBox(height: 30,),
            InkWell(
              child: Container(
                child: Text(
                  "Log In",
                  style: TextStyles.style3(),
                ),
                padding: EdgeInsets.only(left:20, top:5, right:20, bottom:5),
                decoration: BoxDecoration(color: Utility.getColorFromHex(Colour.aegean), borderRadius: BorderRadius.circular(14)),
              ),
              onTap: () {
                print(usernameController.text);
                print(passwordController.text);
                logincontroller.login(
                    usernameController.text, passwordController.text, context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
