import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/cubit/note_cubit_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

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
          const SizedBox(height: 10),
          CustomTextField(
            hint: widget.note.subtitle,
            maxLines: 5,
            onChanged: (valu) {
              subtitle = valu;
            },
          ),
        ],
      ),
    );
  }
}
