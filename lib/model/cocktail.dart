class Cocktail {
  String? name;
  String? description1;
  String? description2;
  String? description3;
  String? compound1;
  String? compoundText1;
  String? compound2;
  String? compoundText2;
  String? photo;
  bool? isLiked;

  Cocktail({
    this.name,
    this.description1,
    this.compound1,
    this.compoundText1,
    this.compound2,
    this.compoundText2,
    this.description2,
    this.description3,
    this.photo,
    this.isLiked,
  });
  factory Cocktail.fromJson(Map<String, dynamic> parsedJson) {
    return Cocktail(
      name: parsedJson['name'] ?? "",
      description1: parsedJson['description1'] ?? "",
      description2: parsedJson['description2'] ?? "",
      description3: parsedJson['description3'] ?? "",
      compound1: parsedJson['compound1'] ?? "",
      compoundText1: parsedJson['compoundText1'] ?? "",
      compound2: parsedJson['compound2'] ?? "",
      compoundText2: parsedJson['compoundText2'] ?? "",
      photo: parsedJson['photo'] ?? "",
      isLiked: parsedJson['isLiked'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      "description1": description1,
      "description2": description2,
      "description3": description3,
      'compound1': compound1,
      'compoundText1': compoundText1,
      'compoundText2': compoundText2,
      'compound2': compound2,
      'photo': photo,
      'isLiked': isLiked,
    };
  }
}
