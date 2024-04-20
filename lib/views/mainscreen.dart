import 'package:flutter/material.dart';
import 'package:notes_app/assets/colour.dart';
import 'package:notes_app/assets/utility.dart';
import 'package:notes_app/components/note_card.dart';
import 'package:notes_app/models/noteResponse.dart';
import 'package:notes_app/services/note_service.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<NoteResponse> notelist = [];
  bool loading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNotes();
  }

  Future<void> getNotes() async {
    try {
      setState(() {
        loading = true;
      });
      final data = await NoteService().getNotes("1");
      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          notelist = data;
          loading = false;
        });
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (loading == true) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("My Notes"),
            Container(
              padding: EdgeInsets.all(20),
              child: ListView.builder(
                itemCount: notelist.length,
                itemBuilder: (context, index) {
                  final item = notelist[index];
                  return NoteCard(item.title ?? "Untitled");
                },
              ),
              height: 400,
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Utility.getColorFromHex(Colour.aegean)),
        child: IconButton(
          icon: Icon(
            Icons.add,
            color: Utility.getColorFromHex(Colour.daisy),
            size: 32,
          ),
          onPressed: () => {
            Navigator.pushNamed(context, '/createnote'),
          },
        ),
      ),
    );
  }
}
