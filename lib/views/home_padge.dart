import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_floating_action_button.dart';
import 'package:note_app/widgets/notes_view.dart';

class HomePadge extends StatelessWidget {
  const HomePadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomFloatingActionButton(),
      body: const NotesView(),
    );
  }
}
