import 'package:flutter/material.dart';
import 'package:one_project_iti/login_task/presentation/views/func/custom_login_task_button.dart';
import 'package:one_project_iti/login_task/presentation/views/func/forget_password_login_task.dart';

import '../func/login_register_text_button.dart';
import 'custom_login_text_form_field.dart';
import 'login_task_header.dart';

class LoginTaskBodyView extends StatefulWidget {
  const LoginTaskBodyView({super.key});

  @override
  State<LoginTaskBodyView> createState() => _LoginTaskBodyViewState();
}

class _LoginTaskBodyViewState extends State<LoginTaskBodyView> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LoginTaskHeader(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Email Address',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const CustomLoginTextFormField(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Password',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            CustomLoginTextFormField(
              isActionPassword: true,
              obscureText: obscureText,
              onPressed: () {
                obscureText = !obscureText;
              },
            ),
            forgetPasswordLoginTask(),
            const SizedBox(
              height: 20,
            ),
            customLoginTaskButton(),
            const SizedBox(
              height: 20,
            ),
            loginReginsterTextButton()
          ],
        ),
      ),
    );
  }
}
