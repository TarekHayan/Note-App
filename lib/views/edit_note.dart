import 'package:flutter/material.dart';
import '../models/note_model.dart';
import '../widgets/edit_note_body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteBody(note: note));
  }
}
