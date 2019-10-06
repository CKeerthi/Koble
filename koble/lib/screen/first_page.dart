import 'package:flutter/material.dart';
import 'package:koble/screen/second_page.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Material(
            child: InkWell(
              hoverColor: Color.fromRGBO(27, 78, 150, 0.5),
              splashColor: Color.fromRGBO(27, 78, 150, 0.75),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
              child: Center(
                child: Text("Investor"),
              ),
            ),
          ),
        ),
        Expanded(
          child: Material(
            child: InkWell(
              hoverColor: Color.fromRGBO(216, 188, 69, 0.5),
              splashColor: Color.fromRGBO(216, 188, 69, 0.75),
              onTap: () {},
              child: Center(child: Text("Startup")),
            ),
          ),
        ),
      ],
    );
  }
}
