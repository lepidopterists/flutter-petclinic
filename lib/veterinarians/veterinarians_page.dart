import 'dart:developer';

import 'package:flutter/material.dart';

import 'veterinarian_provider.dart';

class VeterinariansPage extends StatefulWidget {
  VeterinariansPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _VeterinariansPageState createState() => _VeterinariansPageState();
}

class _VeterinariansPageState extends State<VeterinariansPage> {
  VeterinarianProvider provider;

  @override
  void initState() {
    provider = VeterinarianProvider();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: Text(widget.title),
      //),
      body: FutureBuilder(
        future: provider.fetchAllVeterinarians(),
        builder: (context, snapshot) {
          log("$snapshot.data");
          final veterinarians = snapshot.data;
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  height: 2,
                  color: Colors.black,
                );
              },
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      '${veterinarians[index].firstName} ${veterinarians[index].lastName}'),
                  //       subtitle: Text(
                  //         '${veterinarians[index].address}, ${veterinarians[index].city} '),
                );
              },
              itemCount: veterinarians.length,
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
