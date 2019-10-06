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
  final String id;
  StartupInfoScreen(
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
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: StartupInfo(
        name,
        companyName,
        websiteUrl,
        email,
        companyLocation,
        description,
        phoneNumber,
        id,
      ),
    );
  }
}
