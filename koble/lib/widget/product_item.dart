import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String name;
  ProductItem(this.name);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          height: 500,
          width: 1000,
        ),
        Positioned(
          
          child: Text(name),
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
            )

            // Container(
            //   width: 190.0,
            //   height: 190.0,
            //   decoration: BoxDecoration(

            //     shape: BoxShape.circle,
            //     image: DecorationImage(
            //       image: AssetImage(
            //        "assets/profilepic.jpg",
            //       ),
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),
            ),
      ],
    );
  }
}
