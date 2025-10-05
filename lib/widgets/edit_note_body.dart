import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../consts.dart';
import '../cubits/cubit/cubit/note_cubit_cubit.dart';
import '../models/note_model.dart';
import 'color_note.dart';
import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 60),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.done,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NoteCubitCubit>(context).fitchNote();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 24),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (valu) {
              title = valu;
            },
          ),
          const SizedBox(height: 15),
          CustomTextField(
            hint: widget.note.subtitle,
            maxLines: 5,
            onChanged: (valu) {
              subtitle = valu;
            },
          ),
          const SizedBox(height: 15),
          EditNoteColor(note: widget.note),
        ],
      ),
    );
  }
}

class EditNoteColor extends StatefulWidget {
  const EditNoteColor({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColor> createState() => _EditNoteColorState();
}

class _EditNoteColorState extends State<EditNoteColor> {
  late int cindex;
  @override
  void initState() {
    cindex = colorsList.indexOf(Color(widget.note.color));
    super.initState();
  }

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
                widget.note.color = colorsList[index].value;
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
