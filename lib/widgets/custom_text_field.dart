import 'package:flutter/material.dart';
import 'package:note_app/consts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSave,
    this.onChanged,
  });
  final String hint;
  final int maxLines;
  final Function(String?)? onSave;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSave,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "this field is requrid";
        }
      },
      keyboardType: TextInputType.name,
      maxLines: maxLines,
      cursorColor: pcolor,
      decoration: InputDecoration(
        hint: Text(hint.replaceFirst(hint[0], hint[0].toUpperCase())),
        hintStyle: TextStyle(fontSize: 20),
        border: inputborder(),
        enabledBorder: inputborder(),
        focusedBorder: inputborder(wcolor: pcolor),
      ),
    );
  }

  OutlineInputBorder inputborder({Color wcolor = Colors.white}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: wcolor),
    );
  }
}
