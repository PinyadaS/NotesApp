import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  NoteCard(this.noteText);
  final String noteText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(padding: EdgeInsets.all(5), child: Text(noteText)),
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
