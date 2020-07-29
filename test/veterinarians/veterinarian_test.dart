// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:flutterpetclinic/veterinarians/veterinarian.dart';
import 'package:test/test.dart';

/**
 *
 */
void main() {
  group('Veterinarian tests', () {
    test('Veterinarian specification', () {
      final owner = Veterinarian(1, 'James', 'Carter');

      expect(owner.id, 1);
      expect(owner.firstName, 'James');
      expect(owner.lastName, 'Carter');

      // TODO: Test specialties
    });
  });
}
