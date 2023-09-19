import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/notes_view_body.dart';
import 'package:note_app/widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.cyan,
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  context: context,
                  builder: (context) {
                    return AddNoteButtomSheet();
                  });
            },
            child: Icon(
              Icons.add,
              color: Colors.black,
            )),
        body: NotesViewBody(),
      ),
    );
  }
}
