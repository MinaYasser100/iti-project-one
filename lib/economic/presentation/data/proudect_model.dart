class ProudectModel {
  final String image;
  final String title;
  final String price;

  ProudectModel(
      {required this.image, required this.title, required this.price});

  factory ProudectModel.fromJson(Map<dynamic, String> json) {
    return ProudectModel(
      image: json['image'] as String,
      title: json['title'] as String,
      price: json['price'] as String,
    );
  }

  Map<dynamic, String> toMap() {
    return {
      'image': image,
      'title': title,
      'price': price,
    };
  }
}
