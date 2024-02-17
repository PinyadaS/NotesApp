import 'package:flutter/material.dart';
import 'package:notes_app/assets/colour.dart';
import 'package:notes_app/assets/text_styles.dart';
import 'package:notes_app/assets/utility.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utility.getColorFromHex(Colour.daisy),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Center(
              child: Text(
            "Notes App",
            style: TextStyles.style1(),
          )),
          Text("Description"),
          InkWell(
            child: Container(child: Text("Log In")),
            onTap: () => Navigator.pushNamed(context, '/login')
          ),
          InkWell(
            child: Container(child: Text("Sign Up")),
            onTap:() => Navigator.pushNamed(context, '/register'),
          )
        ]),
      ),
    );
  }
}
