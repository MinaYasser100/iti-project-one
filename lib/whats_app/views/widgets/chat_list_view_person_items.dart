import 'package:flutter/material.dart';
import 'package:one_project_iti/whats_app/model/chat_model.dart';
import 'package:one_project_iti/whats_app/views/widgets/chat_person_item.dart';

class ChatListViewPersonItems extends StatelessWidget {
  const ChatListViewPersonItems({
    super.key,
    required this.list,
  });

  final List<ChatModel> list;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => ChatPersonItem(
          chatModel: list[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 5,
        ),
        itemCount: list.length,
      ),
    );
  }
}
