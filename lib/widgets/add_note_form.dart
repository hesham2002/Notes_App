import 'custom_buttom.dart';
import 'package:flutter/material.dart';
import 'custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;

  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTextField(hintText: 'Title',onSaved: (value){title =value;},),
          SizedBox(
            height: 20,
          ),
          CustomTextField(hintText: 'Content',maxLines: 5,onSaved: (value){
            subTitle =value;
          }),
          SizedBox(
            height: 50,
          ),
          CustomButtom(buttomName: 'add',
              onTap:()
              {
                if(formKey.currentState!.validate())
                {
                  formKey.currentState!.save();
                }
                else
                {
                  autovalidateMode =AutovalidateMode.always;
                  setState(() {

                  });

                }

              }

          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
