import 'package:flutter/material.dart';
import 'package:one_project_iti/whats_app/model/chat_model.dart';

class ChatPersonItem extends StatelessWidget {
  const ChatPersonItem({
    super.key,
    required this.chatModel,
  });
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            chatModel.image!,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              chatModel.name!,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(chatModel.message!),
          ],
        ),
        const Spacer(),
        Text(chatModel.time!),
      ],
    );
  }
}
