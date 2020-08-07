// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutterpetclinic/petclinic.dart';
import 'package:http/http.dart' as http;

import 'owner.dart';

/**
 *
 */
class OwnerProvider {
  /**
   *
   */
  Future<List<Owner>> getOwners() async {
    var config = PetClinic();
    String username = config.username;
    String password = config.password;
    String address = config.address;
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));
    log("Inside provider");
    final serverEndpoint = '$address/api/owners';
    final response = await http.get(serverEndpoint,
        headers: <String, String>{'authorization': basicAuth});
    log("After response");

    if (response.statusCode == 200) {
      log("Status OK");

      List<Owner> owners = List<Owner>.from(
          jsonDecode(response.body).map((i) => Owner.fromJson(i)));

      return owners;
    } else {
      log("Status BAD");

      throw Exception('Failed to load postal address.');
      return null;
    }
  }

  /**
   *
   */
  void updateOwner(Owner owner) async {
    assert(owner != null);

    String username = 'admin';
    String password = 'admin';
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));
    log("Inside provider update owner method");
    final serverEndpoint =
        'http://192.168.15.47:9966/petclinic/api/owners/${owner.id}';
    final response = await http.put(
      serverEndpoint,
      headers: <String, String>{
        HttpHeaders.authorizationHeader: basicAuth,
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.acceptHeader: 'application/json'
      },
      body: jsonEncode(owner),
    );

    if (response.statusCode == 204) {
      log("Status OK");
    } else {
      log("Status BAD");
      throw Exception('Failed to update owner.');
    }
  }
}
