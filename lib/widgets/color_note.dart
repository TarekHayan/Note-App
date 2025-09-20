import 'package:flutter/material.dart';

class Wcolor extends StatelessWidget {
  const Wcolor({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(backgroundColor: Colors.red, radius: 30);
  }
}

class WcolorList extends StatelessWidget {
  const WcolorList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Wcolor(),
          );
        },
      ),
    );
  }
}
