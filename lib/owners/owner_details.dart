import 'package:flutter/material.dart';

class OwnerDetails extends StatelessWidget {
  const OwnerDetails({
    Key key,
    @required this.owner,
  }) : super(key: key);

  final owner;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Owner Details'),
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
