class ChatModel {
  String? name;
  String? message;
  String? image;
  String? time;

  ChatModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    message = json['message'];
    image = json['image'];
    time = json['time'];
  }
}
