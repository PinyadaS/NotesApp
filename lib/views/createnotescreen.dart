import 'package:flutter/material.dart';
import 'package:notes_app/assets/colour.dart';
import 'package:notes_app/assets/utility.dart';

class CreateNoteScreen extends StatefulWidget {
  @override
  State<CreateNoteScreen> createState() => _CreateNoteScreenState();
}

class _CreateNoteScreenState extends State<CreateNoteScreen> {
  final TextEditingController textcontroller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textcontroller.addListener(onChange);
  }
  void onChange() {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
          backgroundColor: Utility.getColorFromHex(Colour.aegean),
          foregroundColor: Utility.getColorFromHex(Colour.daisy),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: textcontroller,
                    maxLines: null,
                    decoration: InputDecoration(border: InputBorder.none),
                    autofocus: true,
                  )),
            ],
          ),
        ));
  }
}
