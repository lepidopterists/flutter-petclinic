import 'dart:io';

import 'package:safe_config/safe_config.dart';

class ApplicationConfiguration extends Configuration {
  ApplicationConfiguration() : super.fromFile(File("petclinic.yaml"));

  String username;
  String password;
  String address;
}
