class Veterinarian {
  int id;
  String firstName;
  String lastName;

  Veterinarian(this.id, this.firstName, this.lastName);

  factory Veterinarian.fromJson(Map<String, dynamic> parsedJson) {
    return Veterinarian(
        parsedJson['id'], parsedJson['firstName'], parsedJson['lastName']);
  }
}

// TODO: Add specialties
