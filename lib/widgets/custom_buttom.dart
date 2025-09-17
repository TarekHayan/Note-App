import 'package:flutter/material.dart';
import 'package:note_app/consts.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: pcolor,
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
          child: Text(
            "Add",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
