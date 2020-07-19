import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutterpetclinic/owners/owner_provider.dart';

import 'owner.dart';

class OwnerDetails extends StatefulWidget {
  const OwnerDetails({
    Key key,
    @required this.owner,
  }) : super(key: key);

  final owner;

  @override
  _OwnerDetailsState createState() => _OwnerDetailsState(owner: owner);
}

class _OwnerDetailsState extends State<OwnerDetails> {
  _OwnerDetailsState({
    @required this.owner,
  });

  final owner;

  void _editOwner() {
    dev.log("Edit owner");
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (BuildContext context) {
        return OwnerEdit(owner: owner);
      }),
    );
  }

  void _listPets() {
    dev.log("List pets");
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('List Pets'),
          ),
          body: Text('List Pets'),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Owner Details'),
        actions: [
          IconButton(icon: Icon(Icons.person_outline), onPressed: _editOwner),
          IconButton(icon: Icon(Icons.pets), onPressed: _listPets),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.person_outline),
                Text("${owner.firstName} ${owner.lastName}"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.mail),
                Text("${owner.address}"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.location_city),
                Text("${owner.city}"),
              ],
            ),
            Row(
              children: [Icon(Icons.phone), Text("${owner.telephone}")],
            ),
          ],
        ),
      ),
    );
  }
}

class OwnerEdit extends StatefulWidget {
  OwnerEdit({
    Key key,
    @required this.owner,
  }) : super(key: key);

  final owner;

  @override
  _OwnerEditState createState() => _OwnerEditState(owner: owner);
}

class _OwnerEditState extends State<OwnerEdit> {
  final owner;

  _OwnerEditState({
    @required this.owner,
  });

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit owner'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              // Add TextFormFields and RaisedButton here.
              TextFormField(
                decoration: InputDecoration(labelText: 'First Name:'),
                initialValue: owner.firstName,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Last Name:'),
                initialValue: owner.lastName,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address:'),
                initialValue: owner.address,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'City:'),
                initialValue: owner.city,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Telephone:'),
                initialValue: owner.telephone,
              ),

              //
              SubmitWidget(formKey: _formKey),
            ],
          ),
        ),
      ),
    );
  }
}

class SubmitWidget extends StatelessWidget {
  const SubmitWidget({
    Key key,
    @required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        onPressed: () async {
          if (_formKey.currentState.validate()) {
            // TODO: get data, update owner object, save with provider
            OwnerProvider provider = OwnerProvider();
            Owner owner = Owner(2, 'C.', 'A.', 'Champs', 'Paris', '1234567890');
            await provider.updateOwner(owner);
            print('Snack');
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Processing Data')));
          }
        },
        child: Text('Submit'),
      ),
    );
  }
}
