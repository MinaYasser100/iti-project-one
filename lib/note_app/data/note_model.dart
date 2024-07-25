class NoteModel {
  final String title;
  final String note;
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
