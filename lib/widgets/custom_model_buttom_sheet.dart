import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/add_notes_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/cubit/cubit/note_cubit_cubit.dart';
import 'package:note_app/widgets/cheak_availb_note.dart';

class CustomModelButtomSheet extends StatelessWidget {
  const CustomModelButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNotefaliar) {
            throw Exception(state.errorMassege);
          }

          if (state is AddNoteSuccess) {
            Navigator.pop(context);
            BlocProvider.of<NoteCubitCubit>(context).fitchNote();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                right: 16,
                left: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(child: CheakAvaildNote()),
            ),
          );
        },
      ),
    );
  }
}
