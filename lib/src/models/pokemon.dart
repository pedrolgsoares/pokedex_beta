class Pokemon {
  String? num;
  String? name;
  String? img;
  String? height;
  String? weight;
  List<String>? type;
  List<String>? weaknesses;
  Pokemon({
    this.num,
    this.name,
    this.img,
    this.height,
    this.weight,
    this.type,
    this.weaknesses,
  });

  Pokemon.fromJson(Map<String, dynamic> json) {
    num = json['num'];
    name = json['name'];
    img = json['img'];
    height = json['height'];
    weight = json['weight'];
    type = json['type'].cast<String>();
    weaknesses = json['weaknesses'].cast<String>();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['num'] = num;
    data['name'] = name;
    data['img'] = img;
    data['height'] = height;
    data['weight'] = weight;
    data['type'] = type;
    data['weaknesses'] = weaknesses;
    return data;
  }
}
