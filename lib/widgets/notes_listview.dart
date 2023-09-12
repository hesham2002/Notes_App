import 'package:flutter/material.dart';

import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 15),
      itemBuilder: (context, index) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: NoteItem(),
    ),
    );
  }
}
