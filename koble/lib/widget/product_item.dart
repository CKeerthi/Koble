import 'package:flutter/material.dart';
import '../screen/startup_info_screen.dart';
// import '../widget/startup_list.dart';

class ProductItem extends StatelessWidget {
  final String name;
  final String companyName;
  final String companyLocation;
  final String websiteUrl;
  final String email;
  final String description;
  final String phoneNumber;
  // final String id;
  ProductItem(
    this.name,
    this.companyName,
    this.websiteUrl,
    this.companyLocation,
    this.email,
    this.description,
    this.phoneNumber,
    // this.id,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) {
              return StartupInfoScreen(
                name,
                companyName,
                websiteUrl,
                email,
                companyLocation,
                description,
                phoneNumber,
                // id,
              );
            },
          ),
        );
      },
      child: Stack(
        children: <Widget>[
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(name),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(topLeft:
                Radius.circular(10.0),
                topRight: Radius.circular(10.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(10.0),
              ),
            ),
            height: 500,
            width: 500,
          ),
          Positioned(
              left: 0,
              bottom: 0,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                backgroundImage: ExactAssetImage(
                  "assets/profilepic.png",
                ),
              )),
        ],
      ),
    );
  }
}
