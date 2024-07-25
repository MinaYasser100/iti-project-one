import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/core/constant.dart';

import 'custom_text_form_field.dart';

class AddNoteAlertDialog extends StatefulWidget {
  const AddNoteAlertDialog({
    super.key,
  });

  @override
  State<AddNoteAlertDialog> createState() => _AddNoteAlertDialogState();
}

class _AddNoteAlertDialogState extends State<AddNoteAlertDialog> {
  TextEditingController titleNoteController = TextEditingController();
  TextEditingController contentNoteController = TextEditingController();

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
            controller: titleNoteController,
            labelText: 'Title',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            controller: contentNoteController,
            labelText: 'Note',
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text('OK'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Cancle'),
        ),
      ],
    );
  }
}
