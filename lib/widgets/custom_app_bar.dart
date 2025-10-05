import 'package:flutter/material.dart';
import 'custom_icon_butoom.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.fontSize = 30,
    required this.icon,
    required this.onPressed,
  });
  final String title;
  final double fontSize;
  final IconData icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 30)),
        CustomIconButoom(icon: icon, onPressed: onPressed),
      ],
    );
  }
}
