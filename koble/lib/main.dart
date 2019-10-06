import 'package:flutter/material.dart';
import 'package:koble/screen/home_screen.dart';
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
      home: HomeScreen(),
      // routes: {

      // },
    );
  }
}
