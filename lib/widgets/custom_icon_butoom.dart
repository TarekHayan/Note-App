import 'package:flutter/material.dart';

class CustomIconButoom extends StatelessWidget {
  const CustomIconButoom({super.key, required this.icon, this.size = 30});
  final IconData icon;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white.withOpacity(0.1),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon, size: 30)),
    );
  }
}
