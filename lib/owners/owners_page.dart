// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:developer';

import 'package:flutter/material.dart';

import 'owner_details.dart';
import 'owner_provider.dart';

/**
 *
 */
class OwnersPage extends StatefulWidget {
  OwnersPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OwnersPageState createState() => _OwnersPageState();
}

/**
 *
 */
class _OwnersPageState extends State<OwnersPage> {
  /**
   *
   */
  OwnerProvider provider;

  /**
   *
   */
  @override
  void initState() {
    provider = OwnerProvider();

    super.initState();
  }

  /**
   *
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: provider.getOwners(),
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
              itemCount: owners.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      '${owners[index].firstName} ${owners[index].lastName} (${owners[index].telephone})'),
                  subtitle:
                  Text('${owners[index].address}, ${owners[index].city} '),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(builder: (BuildContext context) {
                        return OwnerDetails(owner: owners[index]);
                      }),
                    );
                    setState(() {});
                  },
                );
              },
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
