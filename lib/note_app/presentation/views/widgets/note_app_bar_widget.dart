import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/core/constant.dart';

class NoteAppBarWidget extends StatelessWidget {
  const NoteAppBarWidget({
    super.key,
    this.clearAllNotes,
    this.isSearch = false,
  });
  final void Function()? clearAllNotes;
  final bool isSearch;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          isSearch ? 'Search Note' : 'Note App',
          style: const TextStyle(
            color: secondNoteColor,
            fontWeight: FontWeight.w600,
            fontSize: 26,
          ),
        ),
        if (!isSearch)
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
