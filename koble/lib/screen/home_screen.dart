import 'package:flutter/material.dart';
import '../widget/startup_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: 
      // Text("Hello")
      
      StartupList(),
    );
  }
}
