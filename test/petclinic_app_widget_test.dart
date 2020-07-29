// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';
import 'package:flutterpetclinic/petclinic_app.dart';

/**
 *
 */
void main() {
  testWidgets('PetClinic shows on screen', (WidgetTester tester) async {
    await tester.pumpWidget(PetClinicApp());

    expect(find.text('PetClinic'), findsOneWidget);
  });
}
