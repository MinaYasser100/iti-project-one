import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/core/constant.dart';

class NoteAppBarWidget extends StatelessWidget {
  const NoteAppBarWidget({
    super.key,
    this.clearAllNotes,
  });
  final void Function()? clearAllNotes;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Note App',
          style: TextStyle(
            color: secondNoteColor,
            fontWeight: FontWeight.w600,
            fontSize: 26,
          ),
        ),
        TextButton(
          onPressed: clearAllNotes,
          child: const Text(
            'Clear All',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
