import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => EditNoteView(),));
        },
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 30, left: 30, right: 10),
          decoration: BoxDecoration(
            color: Color(0xffC76817),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Flutter Tips',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Build your career with Abdelrahman Atef',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                  padding: EdgeInsets.only(bottom: 5),
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text('sep 22,2023'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
