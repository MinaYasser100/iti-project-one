import 'package:flutter/material.dart';
import 'package:one_project_iti/whats_app/model/chat_model.dart';
import 'package:one_project_iti/whats_app/views/func/specific_chat.dart';

import 'chat_list_view_person_items.dart';

class ChatHomeBody extends StatelessWidget {
  const ChatHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChatModel> list =
        jsonItems.map((element) => ChatModel.fromJson(element)).toList();
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          spicificChat(
            icon: Icons.lock,
            text: 'Locked Chats',
          ),
          const SizedBox(
            height: 15,
          ),
          spicificChat(
            icon: Icons.archive,
            text: 'Archive Chats',
            visible: true,
          ),
          const SizedBox(
            height: 15,
          ),
          ChatListViewPersonItems(list: list),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> jsonItems = [
  {
    'name': 'Ahemd',
    'message': 'hello firend',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpd4mJRIUwqgE8D_Z2znANEbtiz4GhI4M8NQ&s',
    'time': '09:55 Am',
  },
  {
    'name': 'Amgad',
    'message': 'hello firend',
    'image':
        'https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg',
    'time': '09:55 Am',
  },
  {
    'name': 'Khald',
    'message': 'hello firend',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpd4mJRIUwqgE8D_Z2znANEbtiz4GhI4M8NQ&s',
    'time': '09:55 Am',
  },
  {
    'name': 'Emad',
    'message': 'hello firend',
    'image':
        'https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg',
    'time': '09:55 Am',
  },
  {
    'name': 'Mohamed',
    'message': 'hello firend',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpd4mJRIUwqgE8D_Z2znANEbtiz4GhI4M8NQ&s',
    'time': '09:55 Am',
  },
];
