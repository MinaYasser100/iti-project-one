import 'package:flutter/material.dart';

Stack messengerPeopleStory() {
  return const Stack(
    alignment: Alignment.bottomRight,
    children: [
      CircleAvatar(
        radius: 28,
        backgroundColor: Colors.blue,
        child: CircleAvatar(
          radius: 26,
          child: CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
                'https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg'),
          ),
        ),
      ),
      CircleAvatar(
        radius: 8,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 6,
          backgroundColor: Colors.green,
        ),
      )
    ],
  );
}
