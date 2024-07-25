import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:one_project_iti/note_app/data/note_model.dart';
import 'package:one_project_iti/note_app/presentation/views/note_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<List<NoteModel>>('notesBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const NoteView(),
    );
  }
}
