import 'package:flutter/material.dart';

Container messengerSearchChat() {
  return Container(
    height: 40,
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(20),
    ),
    child: const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Icon(Icons.search),
          SizedBox(
            width: 5,
          ),
          Text('Search'),
        ],
      ),
    ),
  );
}
