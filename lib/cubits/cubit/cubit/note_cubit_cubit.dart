import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import '../../../consts.dart';
import '../../../models/note_model.dart';

part 'note_cubit_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  List<NoteModel>? notes;
  NoteCubitCubit() : super(NoteCubitInitial());
  fitchNote() {
    var noteBox = Hive.box<NoteModel>(pname);
    notes = noteBox.values.toList();
    emit((NoteCubitSucess()));
  }
}
