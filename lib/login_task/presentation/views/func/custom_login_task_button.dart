import 'package:flutter/material.dart';

Container customLoginTaskButton() {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 6, 87, 154),
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Center(
      child: Text(
        'Login',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    ),
  );
}
