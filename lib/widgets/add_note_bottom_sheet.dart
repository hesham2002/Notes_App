import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_buttom.dart';
import 'package:note_app/widgets/custom_textfield.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(

        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), topLeft: Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(

          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CustomTextField(hintText: 'Title',),
              SizedBox(
                height: 20,
              ),
              CustomTextField(hintText: 'Content',maxLines: 5),
              SizedBox(
                height: 50,
              ),
              CustomButtom(buttomName: 'add'),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
