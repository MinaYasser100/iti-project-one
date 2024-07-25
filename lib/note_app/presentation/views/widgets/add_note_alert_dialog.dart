import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/core/constant.dart';

import 'custom_text_form_field.dart';

class NoteAlertDialog extends StatefulWidget {
  const NoteAlertDialog({
    super.key,
    required this.titleNoteController,
    required this.contentNoteController,
    this.okPressed,
  });
  final TextEditingController titleNoteController;
  final TextEditingController contentNoteController;
  final void Function()? okPressed;

  @override
  State<NoteAlertDialog> createState() => _NoteAlertDialogState();
}

class _NoteAlertDialogState extends State<NoteAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Add Note',
        style: TextStyle(
          color: itemNoteColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextFormField(
            controller: widget.titleNoteController,
            labelText: 'Title',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            controller: widget.contentNoteController,
            labelText: 'Note',
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: widget.okPressed,
          child: const Text('OK'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancle'),
        ),
      ],
    );
  }
}
