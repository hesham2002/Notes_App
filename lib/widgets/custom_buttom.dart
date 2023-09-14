import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.buttomName, this.onTap});
 final String buttomName ;
 final dynamic Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
