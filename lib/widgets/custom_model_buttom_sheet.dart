import 'package:flutter/material.dart';
import 'package:note_app/widgets/cheak_availb_note.dart';

class CustomModelButtomSheet extends StatelessWidget {
  const CustomModelButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(child: CheakAvaildNote()),
    );
  }
}
