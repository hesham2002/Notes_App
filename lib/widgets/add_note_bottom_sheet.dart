import 'package:flutter/material.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          TextField(
            decoration: InputDecoration(
              hintText:'Title',
              hintStyle: TextStyle(color: Colors.cyan),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          TextField(

            decoration: InputDecoration(
              hintText:'Content',
              hintStyle: TextStyle(color: Colors.cyan),
              border: OutlineInputBorder(
                borderSide: BorderSide(

                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          Container(
            color: Colors.cyan,
            height: 50,
            width: double.infinity,

            child: Center(child: Text('add',style: TextStyle(color: Colors.black,fontSize: 30),)),
          ),
        ],
      ),
    );
  }
}
