import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/core/constant.dart';

LinearGradient scaffoldBackgroundColor() {
  return const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomLeft,
    colors: [
      primaryNoteColor,
      secondNoteColor,
    ],
  );
}
