class Pet {
  int id;
  String name;
  String birthDate;

  //String Owner;
  //String Visits;

  Pet(this.id, this.name, this.birthDate);

  factory Pet.fromJson(Map<String, dynamic> parsedJson) {
    return Pet(parsedJson['id'], parsedJson['name'], parsedJson['birthDate']);
  }

// TODO: Add visits
}
