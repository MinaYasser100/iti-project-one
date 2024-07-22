import 'package:flutter/material.dart';
import 'package:one_project_iti/login/func/login_button.dart';
import 'package:one_project_iti/login/func/register_text_button.dart';

import 'custom_text_form_field.dart';

class LoginViewContentBody extends StatelessWidget {
  const LoginViewContentBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 120,
              ),
              const CustomTextFromField(
                icon: Icons.email_outlined,
                labelText: 'Your Eamil',
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextFromField(
                icon: Icons.lock_outline,
                labelText: 'Password',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('forget password'),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              loginButton(),
              const SizedBox(
                height: 60,
              ),
              reginsterTextButton(),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
