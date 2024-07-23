import 'package:flutter/material.dart';

Row collectionTitle(String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      TextButton(
        onPressed: () {},
        child: const Text(
          'View All',
          style: TextStyle(color: Colors.grey),
        ),
      ),
    ],
  );
}
