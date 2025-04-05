class Example {
  String? id;
  String? name;
  String? description;
  String? image;
  String? calories;
  String? sodium;
  String? fats;
  String? carbs;
  String? protein;

  Example({
    this.id,
    this.name,
    this.description,
    this.image,
    this.calories,
    this.sodium,
    this.fats,
    this.carbs,
    this.protein,
  });

  Example.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    description = json["description"];
    image = json["image"];
    calories = json["calories"];
    sodium = json["sodium"];
    fats = json["fats"];
    carbs = json["carbs"];
    protein = json["protein"];
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "description": description,
      "image": image,
      "calories": calories,
      "sodium": sodium,
      "fats": fats,
      "carbs": carbs,
      "protein": protein,
    };
  }
}
