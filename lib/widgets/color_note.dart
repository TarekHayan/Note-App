import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../consts.dart';
import '../cubits/cubit/add_notes_cubit/add_note_cubit.dart';

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

class _WcolorListState extends State<WcolorList> {
  int cindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: GestureDetector(
              onTap: () {
                cindex = index;
                BlocProvider.of<AddNoteCubit>(context).color =
                    colorsList[index];
                setState(() {});
              },
              child: Wcolor(
                isActive: cindex == index,
                color: colorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
