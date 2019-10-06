import 'package:flutter/material.dart';

class StartupInfo extends StatelessWidget {
  final String name;
  final String companyName;
  final String companyLocation;
  final String websiteUrl;
  final String email;
  final String description;
  final String phoneNumber;
  final String image;
  // final String id;
  StartupInfo(
    this.name,
    this.companyName,
    this.companyLocation,
    this.websiteUrl,
    this.email,
    this.description,
    this.phoneNumber,
    this.image,

    // this.id,
  );
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 600
        ? Container(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(name),
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(image)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          height: 200,
                          width: 200,
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
                          ),
                        ),
                      ],
                    ),
                    Card(
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Email: $email",
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            "Phone Number: $phoneNumber",
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            "Location: $companyLocation",
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            "Company Website: $websiteUrl",
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width - 305,
                  child: Center(
                    // elevation: 5,
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
              ],
            ),
          )
        : SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(name),
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(image)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          height: 200,
                          width: 200,
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
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Card(
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Email: $email",
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            "Phone Number: $phoneNumber",
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            "Location $companyLocation",
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            "Company Website $websiteUrl",
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Center(
                    // elevation: 5,
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
