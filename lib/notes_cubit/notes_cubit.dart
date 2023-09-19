import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes(NoteModel note)
  async{

  try {
  var notesBox =  Hive.box<NoteModel>('notes_box');

  emit(NotesSuccess(notesBox.values.toList()));
  }  catch (ex) {
  emit(NotesFailure('there is an error ${ex.toString()}'));
  }
}

 }

