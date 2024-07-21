import 'package:flutter/material.dart';
import 'package:one_project_iti/messenger/model/messenger_chat_model.dart';
import 'package:one_project_iti/messenger/views/func/messenger_search_chat.dart';

import '../func/messenger_person_item.dart';
import 'messenger_list_view_people_story.dart';

class MessengerHomeBody extends StatelessWidget {
  const MessengerHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MessengerChatModel> list = jsonItems
        .map((element) => MessengerChatModel.fromJson(element))
        .toList();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            messengerSearchChat(),
            const SizedBox(
              height: 10,
            ),
            const MessengerListViewPeopleStory(),
            const SizedBox(
              height: 10,
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    messengerPersonItem(messengerChatModel: list[index]),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: list.length),
          ],
        ),
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
  },
  {
    'name': 'Amgad',
    'message': 'hello firend',
    'image':
        'https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg',
  },
  {
    'name': 'Khald',
    'message': 'hello firend',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpd4mJRIUwqgE8D_Z2znANEbtiz4GhI4M8NQ&s',
  },
  {
    'name': 'Emad',
    'message': 'hello firend',
    'image':
        'https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg',
  },
  {
    'name': 'Mohamed',
    'message': 'hello firend',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpd4mJRIUwqgE8D_Z2znANEbtiz4GhI4M8NQ&s',
  },
];
