import 'package:flutter/material.dart';
import 'package:notes_app/views/createnotescreen.dart';
import 'package:notes_app/views/homescreen.dart';
import 'package:notes_app/views/loginscreen.dart';
import 'package:notes_app/views/mainscreen.dart';
import 'package:notes_app/views/registerscreen.dart';

void main() {
  runApp(const MyApp());
}
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      navigatorKey: navigatorKey,
      routes: {
        '/login': (context) => LoginScreen(),
        '/main':(context) => MainScreen(),
        '/register':(context) => RegisterScreen(),
        '/createnote':(context) => CreateNoteScreen(),
      },
    );
  }
}
