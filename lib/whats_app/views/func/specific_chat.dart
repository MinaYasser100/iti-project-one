import 'package:flutter/material.dart';
import 'package:one_project_iti/whats_app/core/constant.dart';

Row spicificChat(
    {required IconData icon, required String text, bool visible = false}) {
  return Row(
    children: [
      Icon(
        icon,
        size: 30,
        color: primaryColor,
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(),
      if (visible) const Text('1')
    ],
  );
}
