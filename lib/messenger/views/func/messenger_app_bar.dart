import 'package:flutter/material.dart';

AppBar messengerAppBar() {
  return AppBar(
    foregroundColor: Colors.black,
    title: const Text(
      'Chat',
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    ),
    leading: const Padding(
      padding: EdgeInsetsDirectional.only(start: 10),
      child: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
            'https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg'),
      ),
    ),
    actions: [
      _actionAppBarButton(Icons.camera_alt_rounded),
      _actionAppBarButton(Icons.edit),
    ],
  );
}

IconButton _actionAppBarButton(IconData icon) {
  return IconButton(
    onPressed: () {},
    icon: Icon(
      icon,
    ),
  );
}
