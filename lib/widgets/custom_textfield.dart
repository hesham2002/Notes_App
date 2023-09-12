import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.cyan,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white)),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.cyan),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
