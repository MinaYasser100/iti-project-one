class MessengerChatModel {
  String? name;
  String? message;
  String? image;

  MessengerChatModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    message = json['message'];
    image = json['image'];
  }
}

enum ChatStatus { read, received, online }

String? chatStatusToString(ChatStatus? status) {
  switch (status) {
    case ChatStatus.read:
      return 'read';
    case ChatStatus.received:
      return 'received';
    case ChatStatus.online:
      return 'online';
    default:
      return null;
  }
}
