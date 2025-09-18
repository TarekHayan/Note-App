import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_buttom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

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

class CheakAvaildNote extends StatefulWidget {
  const CheakAvaildNote({super.key});

  @override
  State<CheakAvaildNote> createState() => _CheakAvaildNoteState();
}

class _CheakAvaildNoteState extends State<CheakAvaildNote> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? title, subtitle;
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomTextField(
            hint: "title",
            onSave: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 10),
          CustomTextField(
            hint: "describtion",
            maxLines: 5,
            onSave: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(height: 40),
          CustomButtom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
