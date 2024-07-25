import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/core/constant.dart';
import 'package:one_project_iti/note_app/presentation/views/widgets/note_body_view.dart';

import 'widgets/add_note_alert_dialog.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryNoteColor,
        title: const Text(
          'Note App',
          style: TextStyle(
            color: secondNoteColor,
            fontWeight: FontWeight.w600,
            fontSize: 26,
          ),
        ),
      ),
      backgroundColor: primaryNoteColor,
      body: const NoteBodyView(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: secondNoteColor,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const AddNoteAlertDialog(),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
