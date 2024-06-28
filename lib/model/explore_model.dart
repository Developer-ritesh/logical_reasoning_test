class ExploreModel {
  final String title, img, url, hindi, id;

  ExploreModel({
    required this.title,
    required this.img,
    required this.url,
    required this.hindi,
    required this.id,
  });

  factory ExploreModel.fromJson(Map<String, dynamic> json) {
    return ExploreModel(
      title: json['title'] ?? '',
      img: json['img'] ?? '',
      url: json['url'] ?? '',
      hindi: json['hindi'] ?? '',
      id: json['id'] ?? '',
    );
  }
}
