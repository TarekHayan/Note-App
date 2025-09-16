import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:note_app/consts.dart';
import 'package:note_app/widgets/custom_buttom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class CustomModelButtomSheet extends StatelessWidget {
  const CustomModelButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: const Column(
            children: [
              SizedBox(height: 50),
              CustomTextField(hint: "title"),
              SizedBox(height: 10),
              CustomTextField(hint: "describtion", maxLines: 5),
              SizedBox(height: 40),
              CustomButtom(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
