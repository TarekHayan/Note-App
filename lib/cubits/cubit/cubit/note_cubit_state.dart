part of 'note_cubit_cubit.dart';

@immutable
sealed class NoteCubitState {}

final class NoteCubitInitial extends NoteCubitState {}

final class NoteCubitSucess extends NoteCubitState {
  final List<NoteModel> notes;

  NoteCubitSucess(this.notes);
}
