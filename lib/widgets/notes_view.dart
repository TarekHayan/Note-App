import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: "Notes"),
        ],
      ),
    );
  }
}
