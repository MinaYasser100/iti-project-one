import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String note;
  @HiveField(2)
  final String date;

  NoteModel({required this.title, required this.note, required this.date});

  factory NoteModel.formjson(Map<String, String> json) {
    return NoteModel(
      title: json['title'] as String,
      note: json['note'] as String,
      date: json['date'] as String,
    );
  }

  Map<String, String> toMap() {
    return {
      'title': title,
      'note': note,
      'date': date,
    };
  }
}
