import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_icon_butoom.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.fontSize = 30,
    required this.icon,
  });
  final String title;
  final double fontSize;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 30)),
        CustomIconButoom(icon: icon),
      ],
    );
  }
}
