import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/core/constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.controller, this.maxLine = 1});
  final TextEditingController controller;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: secondNoteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        maxLines: maxLine,
        controller: controller,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
