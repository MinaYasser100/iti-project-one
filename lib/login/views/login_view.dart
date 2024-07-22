import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isVisibility = true;
  IconData? icon = Icons.visibility_off_outlined;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            TextFormField(
              obscureText: isVisibility,
              decoration: InputDecoration(
                suffix: IconButton(
                  onPressed: () {
                    isVisibility = !isVisibility;
                    if (isVisibility) {
                      icon = Icons.visibility_off_outlined;
                    } else {
                      icon = Icons.visibility;
                    }
                    setState(() {});
                  },
                  icon: Icon(
                    icon,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
