import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/widgets/add_note_form.dart';
import 'package:note_app/widgets/custom_buttom.dart';
import 'package:note_app/widgets/custom_textfield.dart';


class AddNoteButtomSheet extends StatelessWidget {
   AddNoteButtomSheet({super.key});



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

          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if(state is AddNoteFailure)
                {
                  print('failed');
                }

              if(state is AddNoteSuccess)
                {
                  Navigator.pop(context);
                }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                  inAsyncCall: state is AddNoteLoading?true:false,
                  child: AddNoteForm());
            },
          ),
        ),
      ),
    );
  }
}

