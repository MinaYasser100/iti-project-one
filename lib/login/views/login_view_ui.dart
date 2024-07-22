import 'package:flutter/material.dart';
import 'package:one_project_iti/login/func/login_view_title_text.dart';

import 'widgets/login_view_content_body.dart';

class LoginViewUi extends StatelessWidget {
  const LoginViewUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 116, 196),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 80,
          ),
          loginViewTitleText(),
          const SizedBox(
            height: 20,
          ),
          const Expanded(
            child: LoginViewContentBody(),
          ),
        ],
      ),
    );
  }
}
