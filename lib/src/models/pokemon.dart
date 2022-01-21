class Pokemon {
  String? name;
  String? height;

  Pokemon({this.name, this.height});

  Pokemon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    height = json['height'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['height'] = height;
    return data;
  }
}
