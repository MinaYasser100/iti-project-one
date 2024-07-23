import 'package:flutter/material.dart';

Row loginReginsterTextButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('Don\'t Have An Account ?'),
      TextButton(
        onPressed: () {},
        child: const Text('Register Now'),
      ),
    ],
  );
}
