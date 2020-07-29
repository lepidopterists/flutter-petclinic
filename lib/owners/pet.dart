// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/**
 * Simple domain object representing a pet.
 */
class Pet {
  /**
   *
   */
  int id;

  /**
   *
   */
  String name;

  /**
   *
   */
  String birthDate;

  //String Owner;
  //String Visits;

  /**
   *
   */
  Pet(this.id, this.name, this.birthDate);

  /**
   *
   */
  factory Pet.fromJson(Map<String, dynamic> parsedJson) {
    return Pet(parsedJson['id'], parsedJson['name'], parsedJson['birthDate']);
  }

// TODO: Add visits
}
