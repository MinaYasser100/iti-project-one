import 'package:flutter/material.dart';
import 'package:one_project_iti/login_task/presentation/views/widgets/login_task_body_view.dart';

class LoginTaskView extends StatelessWidget {
  const LoginTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: LoginTaskBodyView(),
    );
  }
}
