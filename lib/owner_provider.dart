import 'dart:convert';

import 'package:http/http.dart';

import 'owner.dart';

class OwnerProvider {
  Future<List<Owner>> fetchAllOwners() async {
    String username = 'admin';
    String password = 'admin';
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));
    //print(basicAuth);
    Client end_point = Client();

    final response = await end_point.get(
        'http://localhost:9966/petclinic/api/owners',
        headers: <String, String>{'authorization': basicAuth});
    //print(response);
    if (response.statusCode == 200) {
      // TODO: this is a list of Owners
      //var data = jsonDecode(response.body);
      //List<dynamic> list = List();
      //List<Owner> owners = List.from(tags);
      //List<Owner> owners = List();

      //list = data[0].map((result) => new Owner.fromJson(result)).toList();

      //for(int b=0;b<list.length;b++)
      //{
      //  Owner myModel = list[b] as Owner;
      //  owners.add(myModel);
      //}

      var owners = List<Owner>.from(
          jsonDecode(response.body).map((i) => Owner.fromJson(i)));

      //var tags = json.decode(response.body);

      return owners;
    } else {
      throw Exception('Failed to load postal address.');
    }
  }
}
