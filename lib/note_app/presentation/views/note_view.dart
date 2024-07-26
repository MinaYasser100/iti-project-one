import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/core/constant.dart';
import 'package:one_project_iti/note_app/core/func/getting_day_date.dart';
import 'package:one_project_iti/note_app/core/hive_helper.dart';
import 'package:one_project_iti/note_app/data/note_model.dart';
import 'package:one_project_iti/note_app/presentation/views/widgets/note_body_view.dart';

import 'widgets/add_note_alert_dialog.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  TextEditingController titleNoteController = TextEditingController();
  TextEditingController contentNoteController = TextEditingController();
  @override
  void initState() {
    HiveHelper.getNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondNoteColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: _scaffoldBackgroundColor(),
        ),
        child: const NoteBodyView(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryNoteColor,
        onPressed: () {
          _showDialogMethod(context);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  LinearGradient _scaffoldBackgroundColor() {
    return const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomLeft,
      colors: [
        primaryNoteColor,
        secondNoteColor,
      ],
    );
  }

  void _showDialogMethod(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => NoteAlertDialog(
        titleNoteController: titleNoteController,
        contentNoteController: contentNoteController,
        okPressed: () {
          if (titleNoteController.text != '' &&
              contentNoteController.text != '') {
            NoteModel noteModel = NoteModel(
              title: titleNoteController.text,
              note: contentNoteController.text,
              date: gettingDayDate(),
            );
            HiveHelper.addNote(noteModel);
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const NoteView(),
              ),
              (route) => false,
            );
            titleNoteController.clear();
            contentNoteController.clear();
            setState(() {});
          } else {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const NoteView(),
              ),
              (route) => false,
            );
          }
        },
      ),
    );
  }
}
