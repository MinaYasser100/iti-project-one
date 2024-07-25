import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/core/func/getting_day_date.dart';
import 'package:one_project_iti/note_app/core/hive_helper.dart';
import 'package:one_project_iti/note_app/data/note_model.dart';
import 'package:one_project_iti/note_app/presentation/views/widgets/add_note_alert_dialog.dart';

import 'note_app_bar_widget.dart';
import 'note_item_widget.dart';

class NoteBodyView extends StatefulWidget {
  const NoteBodyView({super.key});

  @override
  State<NoteBodyView> createState() => _NoteBodyViewState();
}

class _NoteBodyViewState extends State<NoteBodyView> {
  TextEditingController titleNoteController = TextEditingController();
  TextEditingController contentNoteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          NoteAppBarWidget(
            clearAllNotes: () {
              HiveHelper.noteList.clear();
              setState(() {});
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => NoteItemWidget(
                noteitem: HiveHelper.noteList[index],
                deleteNoteItem: () {
                  HiveHelper.noteList.removeAt(index);
                  setState(() {});
                },
                editNoteItem: () {
                  NoteModel itemNote = HiveHelper.noteList[index];
                  titleNoteController.text = itemNote.title;
                  contentNoteController.text = itemNote.note;
                  showDialog(
                    context: context,
                    builder: (context) => NoteAlertDialog(
                      titleNoteController: titleNoteController,
                      contentNoteController: contentNoteController,
                      okPressed: () {
                        if (titleNoteController.text != '' &&
                            contentNoteController.text != '') {
                          NoteModel updatedNote = NoteModel(
                            title: titleNoteController.text,
                            note: contentNoteController.text,
                            date: gettingDayDate(),
                          );
                          HiveHelper.noteList[index] = updatedNote;
                          Navigator.pop(context);
                          setState(() {});
                        } else {
                          Navigator.pop(context);
                        }
                      },
                    ),
                  );
                },
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: HiveHelper.noteList.length,
            ),
          )
        ],
      ),
    );
  }
}
