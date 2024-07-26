import 'package:one_project_iti/note_app/data/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String notesBox = 'notes';

class HiveHelper {
  static List<NoteModel> noteList = [];

  static void addNote(NoteModel noteModel) async {
    noteList.add(noteModel);
    await Hive.box<NoteModel>(notesBox).add(noteModel);
  }

  static void getNotes() {
    noteList = Hive.box<NoteModel>(notesBox).values.toList();
  }

  static void delectNote(int index) async {
    noteList.removeAt(index);
    await Hive.box<NoteModel>(notesBox).deleteAt(index);
  }

  static void updateNote(int index, NoteModel updatedNote) {
    noteList[index] = updatedNote;
    Hive.box<NoteModel>(notesBox).putAt(index, updatedNote);
  }

  static void delectAllNotes() {
    noteList.clear();
    Hive.box<NoteModel>(notesBox).clear();
  }
}
