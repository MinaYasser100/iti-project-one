import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/core/constant.dart';
import 'package:one_project_iti/note_app/core/func/getting_day_date.dart';
import 'package:one_project_iti/note_app/core/hive_helper.dart';
import 'package:one_project_iti/note_app/data/note_model.dart';

import '../func/delete_backgound.dart';
import 'add_note_alert_dialog.dart';
import 'note_app_bar_widget.dart';
import 'note_item_widget.dart';

class SearchNodeBodyView extends StatefulWidget {
  const SearchNodeBodyView({super.key});

  @override
  State<SearchNodeBodyView> createState() => _SearchNodeBodyViewState();
}

class _SearchNodeBodyViewState extends State<SearchNodeBodyView> {
  TextEditingController titleNoteController = TextEditingController();
  TextEditingController contentNoteController = TextEditingController();
  List<NoteModel> filterList = [];

  @override
  void initState() {
    super.initState();
    // Initialize filterList with all items initially
    filterList = HiveHelper.noteList;
  }

  void _filterNotes(String query) {
    if (query.isEmpty) {
      setState(() {
        filterList = HiveHelper.noteList;
      });
    } else {
      setState(() {
        filterList = HiveHelper.noteList
            .where((note) =>
                note.title.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const NoteAppBarWidget(
            isSearch: true,
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            onChanged: _filterNotes,
            decoration: InputDecoration(
              fillColor: secondNoteColor.withOpacity(0.4),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              hintText: "Search",
              hintStyle: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          if (filterList.isNotEmpty)
            const Text(
              'The results',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                final noteItem = filterList[index];
                return Dismissible(
                  key: Key(noteItem.title),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    HiveHelper.delectNote(index);
                    setState(() {});
                  },
                  background: deleteBackground(),
                  child: NoteItemWidget(
                    noteitem: filterList[index],
                    deleteNoteItem: () {
                      HiveHelper.delectNote(index);
                      setState(() {});
                    },
                    editNoteItem: () {
                      NoteModel itemNote = filterList[index];
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
                              HiveHelper.updateNote(index, updatedNote);
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
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: filterList.length,
            ),
          )
        ],
      ),
    );
  }
}
