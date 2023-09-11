import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Color(0xff3C3B3C),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Icon(Icons.search,size: 35,),
    );
  }
}
