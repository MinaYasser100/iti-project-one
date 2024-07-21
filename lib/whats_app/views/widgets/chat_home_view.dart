import 'package:flutter/material.dart';
import 'package:one_project_iti/whats_app/core/constant.dart';
import 'package:one_project_iti/whats_app/views/widgets/chat_home_body.dart';

class ChatHomeView extends StatelessWidget {
  const ChatHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        title: const Text(
          'WhatsAPP',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          actionAppBarButton(Icons.camera_alt_rounded),
          actionAppBarButton(Icons.search),
          actionAppBarButton(Icons.more_vert)
        ],
      ),
      body: const ChatHomeBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {},
        child: const Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
      ),
    );
  }

  IconButton actionAppBarButton(IconData icon) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
      ),
    );
  }
}
