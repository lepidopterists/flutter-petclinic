import 'dart:io';

import 'package:yaml/yaml.dart';

/**
 *
 */
class PetClinic {
  /**
   *
   */
  String _username;

  /**
   *
   */
  String _password;

  /**
   *
   */
  String _address;

  /**
   *
   */
  PetClinic() {
    File file = new File('petclinic.yaml');
    String yamlString = file.readAsStringSync();
    Map yaml = loadYaml(yamlString);
    _username = yaml['username'];
    _password = yaml['password'];
    _address = yaml['address'];
  }

  String get address => _address;

  String get password => _password;

  String get username => _username;
}
