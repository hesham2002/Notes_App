import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 25, left: 20, right: 10),
      margin: EdgeInsets.all(15),
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
              padding: const EdgeInsets.only(bottom: 30),
              child: Text(
                'Flutter Tips',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 40,
                ),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                'Build your career with Abdelrahman Atef',
                style: TextStyle(fontSize: 25),
              ),
            ),
            trailing: IconButton(
              padding: EdgeInsets.only(bottom: 15),
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text('sep 22,2023'),
          ),
        ],
      ),
    );
  }
}
