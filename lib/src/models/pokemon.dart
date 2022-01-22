class Pokemon {
  String? num;
  String? name;
  String? img;
  String? height;
  String? weight;
  Pokemon({
    this.num,
    this.name,
    this.img,
    this.height,
    this.weight,
  });

  Pokemon.fromJson(Map<String, dynamic> json) {
    num = json['num'];
    name = json['name'];
    img = json['img'];
    height = json['height'];
    weight = json['weight'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['num'] = num;
    data['name'] = name;
    data['img'] = img;
    data['height'] = height;
    data['weight'] = weight;
    return data;
  }
}
