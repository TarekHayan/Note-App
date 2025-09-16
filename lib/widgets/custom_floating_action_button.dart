import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.greenAccent,
      shape: const CircleBorder(),
      child: const Icon(Icons.add, color: Colors.black),
    );
  }
}
