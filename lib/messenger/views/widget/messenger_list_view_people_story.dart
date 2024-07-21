import 'package:flutter/material.dart';
import 'package:one_project_iti/messenger/views/func/messenger_people_story.dart';

class MessengerListViewPeopleStory extends StatelessWidget {
  const MessengerListViewPeopleStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => messengerPeopleStory(),
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: 10,
      ),
    );
  }
}
