import 'package:flutter/material.dart';
import '../widget/product_item.dart';
import '../model/user.dart';

class StartupList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<User> dummyData = [
      User(
          name: "Nephy",
          companyName: "companyName",
          companyLocation: "Kitchener",
          websiteUrl: "www.google.com",
          email: "nephthalim22@gmail.com",
          phoneNumber: "5197221234",
          description: "Startup",
          id: "123456789",
      )
    ];
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: dummyData.length,
      itemBuilder: (ctx, index) {
        return 
        ProductItem(
          dummyData[index].name,
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
