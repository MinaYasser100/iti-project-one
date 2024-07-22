class MessengerChatModel {
  String? name;
  String? message;
  String? image;
  ChatStatus? status;

  MessengerChatModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    message = json['message'];
    image = json['image'];
    status = _stringToChatStatus(json['status']);
  }
}

enum ChatStatus { read, received, online }

ChatStatus? _stringToChatStatus(String? status) {
  switch (status) {
    case 'read':
      return ChatStatus.read;
    case 'received':
      return ChatStatus.received;
    case 'online':
      return ChatStatus.online;
    default:
      return null;
  }
}
