import 'package:flutter/material.dart';
import 'package:koble/widget/startup_info.dart';

class StartupInfoScreen extends StatelessWidget {
  final String name;
  final String companyName;
  final String companyLocation;
  final String websiteUrl;
  final String email;
  final String description;
  final String phoneNumber;
  final String image;
  StartupInfoScreen(
    this.name,
    this.companyName,
    this.websiteUrl,
    this.companyLocation,
    this.email,
    this.description,
    this.phoneNumber,
    this.image,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(companyName),
        backgroundColor: Color.fromRGBO(216, 188, 69, 1.0),

      ),
      body: ListView(
        children: <Widget>[
          StartupInfo(
            name,
            companyName,
            websiteUrl,
            email,
            companyLocation,
            description,
            phoneNumber,
            image,
          )
        ],
      ),
    );
  }
}
