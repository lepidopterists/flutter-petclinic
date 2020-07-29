// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/**
 * Simple domain object representing a veterinarian.
 */
class Veterinarian {
  /**
   *
   */
  int id;

  /**
   *
   */
  String firstName;

  /**
   *
   */
  String lastName;

  /**
   *
   */
  Veterinarian(this.id, this.firstName, this.lastName);

  /**
   *
   */
  factory Veterinarian.fromJson(Map<String, dynamic> parsedJson) {
    return Veterinarian(
        parsedJson['id'], parsedJson['firstName'], parsedJson['lastName']);
  }
}

// TODO: Add specialties
