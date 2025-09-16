import 'package:flutter/material.dart';
import 'package:note_app/consts.dart';
import 'package:note_app/widgets/custom_model_buttom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return CustomModelButtomSheet();
          },
        );
      },
      backgroundColor: pcolor,
      shape: const CircleBorder(),
      child: const Icon(Icons.add, color: Colors.black),
    );
  }
}
