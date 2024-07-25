import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/core/constant.dart';
import 'package:one_project_iti/note_app/data/note_model.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({
    super.key,
    required this.noteitem,
    this.deleteNoteItem,
    this.editNoteItem,
  });
  final NoteModel noteitem;
  final void Function()? deleteNoteItem;
  final void Function()? editNoteItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: itemNoteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.circle,
                color: Colors.white,
                size: 13,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                noteitem.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18,
                child: IconButton(
                  onPressed: editNoteItem,
                  icon: const Icon(
                    Icons.edit,
                    size: 18,
                    color: itemNoteColor,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18,
                child: IconButton(
                  onPressed: deleteNoteItem,
                  icon: const Icon(
                    Icons.delete_outline_rounded,
                    size: 18,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            noteitem.note,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              noteitem.date,
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
