import 'package:flutter/material.dart';
import 'package:koble/screen/home_screen.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Material(
            child: InkWell(
              hoverColor: Color.fromRGBO(27, 78, 150, 0.5),
              splashColor: Color.fromRGBO(27, 78, 150, 0.75),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Center(
                child: Text("Individual"),
              ),
            ),
          ),
        ),
        Expanded(
          child: Material(
              child: InkWell(
                hoverColor: Color.fromRGBO(216, 188, 69, 0.5),
              splashColor: Color.fromRGBO(216, 188, 69, 0.75),
                onTap: (){},
            child: Center(child: Text("Firm")),
          )),
        )

        // Expanded(
        //   child: InkWell(
        //     onTap: () {},
        //     child: Center(child: Text("Startup")),
        //   ),
        // ),
      ],
    );
  }
}
