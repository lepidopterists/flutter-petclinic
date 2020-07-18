import 'dart:developer';

import 'package:flutter/material.dart';

import 'owner_provider.dart';

void main() {
  runApp(PetClinicApp());
}

class PetClinicApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetClinic',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'PetClinic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  OwnerProvider provider;

  @override
  void initState() {
    provider = OwnerProvider();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: provider.fetchAllOwners(),
        builder: (context, snapshot) {
          log("$snapshot.data");
          final owners = snapshot.data;
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
                  title: Text('${owners[index].firstName} ${owners[index]
                      .lastName} (${owners[index].telephone})'),
                  subtitle: Text(
                      '${owners[index].address}, ${owners[index].city} '),
                );
              },
              itemCount: owners.length,
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
