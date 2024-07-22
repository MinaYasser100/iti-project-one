import 'package:flutter/material.dart';

Container loginButton() {
  return Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 19, 116, 196),
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Center(
      child: Text(
        'LOGIN',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ),
  );
}
