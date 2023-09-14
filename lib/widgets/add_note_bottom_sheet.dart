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

          child: AddNoteForm(),
        ),
      ),
    );
  }
}

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
