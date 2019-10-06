import 'package:flutter/material.dart';
import '../widget/product_item.dart';
import '../model/user.dart';

class StartupList extends StatelessWidget {
  final List<User> dummyData;

  StartupList(this.dummyData);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.only(top: 8.0),
            sliver: SliverGrid.count(
                childAspectRatio: 5,
                crossAxisCount: MediaQuery.of(context).size.width >= 1400
                    ? 5
                    : MediaQuery.of(context).size.width >= 800 ? 3 : 1,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5,
                children: dummyData
                    .map((su) => ProductItem(
                        su.name,
                        su.companyName,
                        su.companyLocation,
                        su.websiteUrl,
                        su.email,
                        su.description,
                        su.phoneNumber))
                    .toList()
                // ProductItem(
                //   dummyData[i].name,
                //   dummyData[i].companyName,
                //   dummyData[i].companyLocation,
                //   dummyData[i].websiteUrl,
                //   dummyData[i].email,
                //   dummyData[i].description,
                //   dummyData[i].phoneNumber,

                ),
          )
        ],
      ),
    );

    // return GridView.builder(
    //   padding: const EdgeInsets.all(10.0),
    //   itemCount: dummyData.length,
    //   itemBuilder: (ctx, index) {
    //     return ProductItem(
    //       dummyData[index].name,
    //       dummyData[index].companyName,
    //       dummyData[index].companyLocation,
    //       dummyData[index].websiteUrl,
    //       dummyData[index].email,
    //       dummyData[index].description,
    //       dummyData[index].phoneNumber,

    //       // dummyData[index].id,
    //     );
    //   },
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 5,
    //     childAspectRatio: 1,
    //     crossAxisSpacing: 10,
    //     mainAxisSpacing: 10,
    //   ),
    // );
  }
}
