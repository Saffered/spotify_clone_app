class CardModel {
  String? image;
  String? name;
  String? singername;
  CardModel(
      {required this.image, required this.name, required this.singername});
  CardModel.fromJson(Map<String, dynamic> json)
      : image = json["image"],
        name = json["name"],
        singername = json["singername"];
  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "singername": singername,
      };
}
