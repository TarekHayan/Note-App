import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/consts.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/home_padge.dart';

void main() async {
  runApp(NoteApp());
  await Hive.initFlutter();
  await Hive.openBox(pname);
  Hive.registerAdapter(NoteModelAdapter());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: HomePadge(),
    );
  }
}
