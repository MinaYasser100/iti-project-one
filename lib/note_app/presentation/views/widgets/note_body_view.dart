import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/core/constant.dart';
import 'package:one_project_iti/note_app/core/func/getting_day_date.dart';
import 'package:one_project_iti/note_app/core/hive_helper.dart';
import 'package:one_project_iti/note_app/data/note_model.dart';
import 'package:one_project_iti/note_app/presentation/views/widgets/add_note_alert_dialog.dart';

import '../func/delete_backgound.dart';
import 'note_app_bar_widget.dart';
import 'note_item_widget.dart';
import 'search_node_view.dart';

class NoteBodyView extends StatefulWidget {
  const NoteBodyView({super.key});

  @override
  State<NoteBodyView> createState() => _NoteBodyViewState();
}

class _NoteBodyViewState extends State<NoteBodyView> {
  TextEditingController titleNoteController = TextEditingController();
  TextEditingController contentNoteController = TextEditingController();
  FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _focusNode.unfocus();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SearchNodeView(),
          ),
        );
      }
    });
    super.initState();
  }

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
              HiveHelper.delectAllNotes();
              setState(() {});
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            focusNode: _focusNode,
            decoration: InputDecoration(
              fillColor: secondNoteColor.withOpacity(0.4),
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              hintText: "Search",
              hintStyle: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                HiveHelper.getNotes();
                setState(() {});
              },
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final note = HiveHelper.noteList[index];
                  return Dismissible(
                    key: Key(note.title),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      HiveHelper.delectNote(index);
                      setState(() {});
                    },
                    background: deleteBackground(),
                    child: NoteItemWidget(
                      noteitem: HiveHelper.noteList[index],
                      deleteNoteItem: () {
                        HiveHelper.delectNote(index);
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
                itemCount: HiveHelper.noteList.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
