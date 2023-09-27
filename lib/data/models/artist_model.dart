class ArtistModel {
  String? image;
  String? name;
  String? subtitle;
  ArtistModel(
      {required this.image, required this.name, required this.subtitle});
  ArtistModel.fromJson(Map<String, dynamic> json)
      : image = json["image"],
        name = json["name"],
        subtitle = json["subtitle"];
  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "subtitle": subtitle,
      };
}
