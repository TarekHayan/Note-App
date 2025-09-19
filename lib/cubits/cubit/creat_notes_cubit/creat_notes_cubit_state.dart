part of 'creat_notes_cubit_cubit.dart';

@immutable
sealed class CreatNotesCubitState {}

final class CreatNotesCubitInitial extends CreatNotesCubitState {}

final class CreatNotesLoading extends CreatNotesCubitState {}

final class CreatNotesSuccess extends CreatNotesCubitState {
  final List<NoteModel> notes;

  CreatNotesSuccess(this.notes);
}

final class CreatNotesFaliar extends CreatNotesCubitState {
  final String error;
  CreatNotesFaliar(this.error);
}
