import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children: [
          SizedBox(height: 60),
          CustomAppBar(title: "Edit Note", icon: Icons.done),
          SizedBox(height: 24),
          CustomTextField(hint: "title"),
          SizedBox(height: 10),
          CustomTextField(hint: "describtion", maxLines: 5),
        ],
      ),
    );
  }
}
