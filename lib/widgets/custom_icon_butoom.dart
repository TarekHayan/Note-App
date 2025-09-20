import 'package:flutter/material.dart';

class CustomIconButoom extends StatelessWidget {
  const CustomIconButoom({
    super.key,
    required this.icon,
    this.size = 30,
    required this.onPressed,
  });
  final IconData icon;
  final double size;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white.withOpacity(0.1),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, size: 30)),
    );
  }
}
