import 'package:flutter/material.dart';

class Wcolor extends StatelessWidget {
  const Wcolor({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(backgroundColor: color, radius: 25),
          )
        : CircleAvatar(backgroundColor: color, radius: 30);
  }
}

class WcolorList extends StatefulWidget {
  const WcolorList({super.key});

  @override
  State<WcolorList> createState() => _WcolorListState();
}

List<Color> colors = [
  Color(0xffFFBE0B),
  Color(0xffFB5607),
  Color(0xffFF006E),
  Color(0xff8338EC),
  Color(0xff3A86FF),
];

class _WcolorListState extends State<WcolorList> {
  int cindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: GestureDetector(
              onTap: () {
                cindex = index;
                setState(() {});
              },
              child: Wcolor(isActive: cindex == index, color: colors[index]),
            ),
          );
        },
      ),
    );
  }
}
