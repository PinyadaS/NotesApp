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
          Center(
              child: Image.asset('images/note.png',
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 2)),
          InkWell(
              child: Center(
                child: Container(
                  child: Text(
                    "Log In",
                    style: TextStyles.style3(),
                  ),
                  padding: EdgeInsets.only(left:20, top:5, right:20, bottom:5),
                  decoration: BoxDecoration(color: Utility.getColorFromHex(Colour.aegean), borderRadius: BorderRadius.circular(14)),
                ),
              ),
              onTap: () => Navigator.pushNamed(context, '/login')),
          SizedBox(
            height: 30,
          ),
          InkWell(
            child: Center(
                child: Container(
                    child: Text(
              "Sign Up",
              style: TextStyles.style4(),
            ))),
            onTap: () => Navigator.pushNamed(context, '/register'),
          )
        ]),
      ),
    );
  }
}
