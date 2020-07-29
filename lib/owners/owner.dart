// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/**
 * Simple domain object representing a pet owner.
 */
class Owner {
  /**
   * Identity property.
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
  String address;

  /**
   *
   */
  String city;

  /**
   *
   */
  String telephone;

  /**
   *
   */
  Owner(this.id, this.firstName, this.lastName, this.address, this.city,
      this.telephone);

  /**
   *
   */
  factory Owner.fromJson(Map<String, dynamic> parsedJson) {
    return Owner(
        parsedJson['id'],
        parsedJson['firstName'],
        parsedJson['lastName'],
        parsedJson['address'],
        parsedJson['city'],
        parsedJson['telephone']);
  }

  /**
   *
   */
  Map<String, dynamic> toJson() => {
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'address': address,
        'city': city,
        'telephone': telephone,
        'pets': [],
      };
// TODO: Add pets
}
