// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:flutterpetclinic/owners/owner.dart';
import 'package:flutterpetclinic/owners/owner_provider.dart';
import 'package:test/test.dart';

/**
 *
 */
void main() {
  group('Owner Provider tests', () {
    test('Get owner list from test database', () async {
      OwnerProvider provider = OwnerProvider();
      List<Owner> owners = await provider.getOwners();
      expect(owners.length, greaterThanOrEqualTo(10));
      Owner first = owners.elementAt(1);
      expect(first.firstName, contains('Betty'));
    });

    test('Update first owner to test database', () async {
      OwnerProvider provider = OwnerProvider();
      Owner owner = Owner(1, 'Charles', 'Aznavour', '52 Av. de Champs-Élysées',
          'Paris', '1234567890');
      await provider.updateOwner(owner);
      //expect('James', 'George');
    });
  });
}
