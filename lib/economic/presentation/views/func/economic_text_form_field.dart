import 'package:flutter/material.dart';
import 'package:one_project_iti/core/constant.dart';

Container economicTextFormField() {
  return Container(
    decoration: BoxDecoration(
      color: economicGrayColor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: TextFormField(
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search_rounded,
            color: Colors.grey,
          ),
          labelText: 'Search...',
          labelStyle: TextStyle(color: Colors.grey)),
    ),
  );
}
