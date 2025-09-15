import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_view.dart';

class HomePadge extends StatelessWidget {
  const HomePadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.greenAccent,
        shape: CircleBorder(),
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: const NotesView(),
    );
  }
}
