import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 30,),
            CustomAppBar(text: ' Edit Note',icon: FontAwesomeIcons.check),
            SizedBox(height: 20,),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 15,),
            CustomTextField(hintText: 'Content',maxLines: 4,),

          ],
        ),
      ),
    );
  }
}
