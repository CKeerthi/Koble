import 'package:flutter/material.dart';

import './screen/first_page.dart';
// import 'package:koble/screen/startup_info_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Koble',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
      
    );
  }
}
