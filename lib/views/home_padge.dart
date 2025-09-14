import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_view.dart';

class HomePadge extends StatelessWidget {
  const HomePadge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: NotesView());
  }
}
