import 'package:flutter/material.dart';
import 'package:notes_app/views/mainscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Text("Log In"),
          TextField(
            decoration: InputDecoration(labelText: "Username"),
          ),
          TextField(
            decoration: InputDecoration(labelText: "Password"),
          ),
          InkWell(
            child: Container(child: Text("Log In")),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            ),
          ),
        ]),
      ),
    );
  }
}
