import 'package:flutter/material.dart';

Row forgetPasswordLoginTask() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      TextButton(
        onPressed: () {},
        child: const Text(
          'Forget Password',
          style: TextStyle(color: Colors.grey),
        ),
      ),
    ],
  );
}
