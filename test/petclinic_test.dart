// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:flutterpetclinic/petclinic.dart';
import 'package:test/test.dart';

/**
 *
 */
void main() {
  group('Configuration tests', () {
    test('Server configuration', () {
      final config = PetClinic();
      expect(config.username, isNotNull);
      expect(config.password, isNotNull);
      expect(config.address, startsWith('http'));
    });
  });
}
