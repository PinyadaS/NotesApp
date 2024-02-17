import 'package:flutter/material.dart';
import 'package:notes_app/views/homescreen.dart';
import 'package:notes_app/views/loginscreen.dart';
import 'package:notes_app/views/mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/main':(context) => MainScreen()
      },
    );
  }
}
