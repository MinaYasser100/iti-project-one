import 'package:flutter/material.dart';
import 'package:one_project_iti/messenger/model/messenger_chat_model.dart';

Row messengerPersonItem({required MessengerChatModel messengerChatModel}) {
  return Row(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(messengerChatModel.image!),
      ),
      const SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            messengerChatModel.name!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            messengerChatModel.message!,
          )
        ],
      ),
      const Spacer(),
      if (messengerChatModel.status == ChatStatus.received)
        const Icon(
          Icons.check_circle_rounded,
          color: Colors.blue,
        ),
      if (messengerChatModel.status == ChatStatus.online)
        const Icon(
          Icons.circle,
          color: Colors.blue,
        ),
    ],
  );
}
