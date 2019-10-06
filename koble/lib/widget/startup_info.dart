import 'package:flutter/material.dart';

class StartupInfo extends StatelessWidget {
  final String name;
  final String companyName;
  final String companyLocation;
  final String websiteUrl;
  final String email;
  final String description;
  final String phoneNumber;
  final String id;
  StartupInfo(
    this.name,
    this.companyName,
    this.websiteUrl,
    this.companyLocation,
    this.email,
    this.description,
    this.phoneNumber,
    this.id,
  );
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(name),);

    // Row(
    //   children: <Widget>[
    //     Column(
    //       children: <Widget>[
    //         Container(
    //           color: Colors.green,
    //         ),
    //         Container(color: Colors.orange,)
    //       ],),
    //     Container(color: Colors.pink,),
    //   ],
    // );
  }
}
