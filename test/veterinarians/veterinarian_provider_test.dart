// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:flutterpetclinic/veterinarians/veterinarian.dart';
import 'package:flutterpetclinic/veterinarians/veterinarian_provider.dart';
import 'package:test/test.dart';

/**
 *
 */
void main() {
  group('Veterinarian Provider tests', () {
    test('Veterinarian list from test database', () async {
      VeterinarianProvider provider = VeterinarianProvider();
      List<Veterinarian> owners = await provider.getVeterinarians();
      expect(owners.length, 6);
      Veterinarian first = owners.elementAt(0);
      expect(first.firstName, 'James');
    });
  });
}
