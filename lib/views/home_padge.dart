import 'package:flutter/material.dart';
import '../widgets/custom_floating_action_button.dart';
import '../widgets/notes_view_body.dart';

class HomePadge extends StatelessWidget {
  const HomePadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomFloatingActionButton(),
      body: const NotesViewBody(),
    );
  }
}
