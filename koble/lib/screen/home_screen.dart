import 'package:flutter/material.dart';
import 'package:koble/screen/first_page.dart';
import 'package:koble/screen/second_page.dart';
import 'package:koble/widget/add_startup.dart';
import '../widget/startup_list.dart';
import '../model/user.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static List<User> dummyData = [
    User(
      name: "Nephy",
      companyName: "Zebu",
      companyLocation: "Kitchener",
      websiteUrl: "www.zebu.com",
      email: "nephthalim22@gmail.com",
      phoneNumber: "5197221234",
      description:
          "In the heart of Waterloo, Ontario, Zebu developed a completely secured cloud-based, business platform that enhances, optimizes and protects businesses around the world. Zebu’s mission is to equip businesses with tools to simplify their work while protecting their most valuable assets. Zebu provides private and secured communication, cloud storage and scheduling with military grade encryption to protect against hackers, advertisers and software providers (including ourselves). All manageable and easy to use from a single all-in-1 encrypted and secure application, Zebu.",
      image: "assets/download.png",
    ),
    User(
      name: "Bob",
      companyName: "Delloite",
      companyLocation: "Waterloo",
      websiteUrl: "www.deloitte.com",
      email: "nephthalim22@gmail.com",
      phoneNumber: "5197221234",
      description:
          "Deloitte drives progress. Our firms around the world help clients become leaders wherever they choose to compete. Deloitte invests in outstanding people of diverse talents and backgrounds and empowers them to achieve more than they could elsewhere. Our work combines advice with action and integrity. We believe that when our clients and society are stronger, so are we. Deloitte refers to one or more of Deloitte Touche Tohmatsu Limited (“DTTL”), its global network of member firms, and their related entities. DTTL (also referred to as “Deloitte Global”) and each of its member firms are legally separate and independent entities. DTTL does not provide services to clients. Please see www.deloitte.com/about to learn more. The content on this page contains general information only, and none of Deloitte Touche Tohmatsu Limited, its member firms, or their related entities (collectively the “Deloitte Network”) is, by means of this publication, rendering professional advice or services. Before making any decision or taking any action that may affect your finances or your business, you should consult a qualified professional adviser. No entity in the Deloitte Network shall be responsible for any loss whatsoever sustained by any person who relies on content from this page.",
      image: "assets/zebu_logo.png",
    )
  ];
  static List<User> values = dummyData;
  static User value = dummyData[0];

  void _addNewStartup(
    String suName,
    String suCompanyName,
    String suCompanyLocation,
    String suWebsiteUrl,
    String suEmail,
    String suPhoneNumber,
    String suDescription,
    // String suId,
  ) {
    final newSu = User(
      name: suName,
      companyName: suCompanyName,
      companyLocation: suCompanyLocation,
      websiteUrl: suWebsiteUrl,
      email: suEmail,
      phoneNumber: suPhoneNumber,
      description: suDescription,
      // id: suId,
    );
    setState(
      () {
        dummyData.add(newSu);
      },
    );
  }

  void _startAddNewStartup(BuildContext ctx) {
    // showModalBottomSheet(
    //   context: ctx,
    //   builder: (_) {
    //     // return AddStartup(_addNewStartup);
    //   },
    // );
  }

  Icon custIcon = Icon(Icons.search);
  Widget searchIcon = IconButton(
      onPressed: () {
        value = values[1];
        return value;
      },
      icon: Icon(Icons.subdirectory_arrow_left));
  Widget custSearchBar = Text("Search");

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        FirstPage(),
        SecondPage(),
        Scaffold(
          appBar: AppBar(
            title: custSearchBar,
            backgroundColor: Color.fromRGBO(27, 78, 150, 1),
            actions: <Widget>[
              IconButton(
                icon: custIcon,
                onPressed: () {
                  setState(
                    () {
                      this.custSearchBar = TextField(
                          textInputAction: TextInputAction.go,
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.0));
                      this.custIcon = this.searchIcon;
                    },
                  );
                },
              ),
            ],
          ),
          body: values.length != 1
              ? StartupList(values)
              : StartupList([values[0]]),
          // floatingActionButtonLocation:
          //     FloatingActionButtonLocation.centerFloat,
          // floatingActionButton: FloatingActionButton(
          //   child: Icon(Icons.add),
          //   backgroundColor: Colors.brown[200],
          //   onPressed: () => _startAddNewStartup(context),
          // ),
        ),
      ],
    );
  }
}
