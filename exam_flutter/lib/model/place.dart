class Place {
  int? id;
  String? name;
  String? image;
  int? rate;
  Place({this.id, this.name, this.image, this.rate});

  factory Place.valueFromJson(Map<String, dynamic> json) {
    return Place(
        id: json["id"] as int,
        name: json["name"] as String,
        image: json["address"] as String,
        rate: json["age"] as int
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return "id: $id, name: $name, address: $image, age: $rate";
  }

}