import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.buttomName});
 final String buttomName ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(10),
      ),

      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: Text(
            buttomName,
            style: TextStyle(color: Colors.black, fontSize: 30),
          )),
    );
  }
}
