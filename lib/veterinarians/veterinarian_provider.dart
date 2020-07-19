import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import 'veterinarian.dart';

class VeterinarianProvider {
  Future<List<Veterinarian>> fetchAllVeterinarians() async {
    String username = 'admin';
    String password = 'admin';
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));
    log("Inside provider");
    final serverEndpoint = 'http://192.168.15.47:9966/petclinic/api/vets';
    final response = await http.get(serverEndpoint,
        headers: <String, String>{'authorization': basicAuth});
    log("After response");

    if (response.statusCode == 200) {
      log("Status OK");

      List<Veterinarian> owners = List<Veterinarian>.from(
          jsonDecode(response.body).map((i) => Veterinarian.fromJson(i)));

      return owners;
    } else {
      log("Status BAD");

      //throw Exception('Failed to load postal address.');
      return null;
    }
  }
}
