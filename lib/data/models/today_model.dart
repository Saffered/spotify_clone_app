class TodayModel {
  String? image;
  String? name;
  String? singername;
  bool? tralingicon;
  TodayModel(
      {required this.image,
      required this.name,
      required this.singername,
      required this.tralingicon});
  TodayModel.fromJson(Map<String, dynamic> json)
      : image = json["image"],
        name = json["name"],
        tralingicon = json["tralingicon"],
        singername = json["singername"];
  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "tralingicon": tralingicon,
        "singername": singername,
      };
}
