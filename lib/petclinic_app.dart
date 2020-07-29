// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import 'homepage.dart';

/**
 *
 */
class PetClinicApp extends StatelessWidget {
  /**
   *
   */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetClinic',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomepage(),
    );
  }
}
