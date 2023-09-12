import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/note_item.dart';
import 'package:note_app/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(text: 'Notes',icon: FontAwesomeIcons.magnifyingGlass),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: NotesListView(),
          ),

        ],
      ),
    );
  }
}
