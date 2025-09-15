import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class NoteItemList extends StatelessWidget {
  const NoteItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: CustomNeteItem(),
        );
      },
    );
  }
}
