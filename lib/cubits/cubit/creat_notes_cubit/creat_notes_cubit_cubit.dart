import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/consts.dart';
import 'package:note_app/models/note_model.dart';

part 'creat_notes_cubit_state.dart';

class CreatNotesCubitCubit extends Cubit<CreatNotesCubitState> {
  CreatNotesCubitCubit() : super(CreatNotesCubitInitial());

  fitchNotes() async {
    emit(CreatNotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(pname);
      List<NoteModel> note = noteBox.values.toList();
      emit(CreatNotesSuccess(note));
    } catch (e) {
      emit(CreatNotesFaliar(e.toString()));
    }
  }
}
