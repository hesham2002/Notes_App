import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon,});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Color(0xff3C3B3C),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Icon(icon),
    );
  }
}
