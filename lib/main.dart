import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/results.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color.fromRGBO(10, 13, 34, 1),
          scaffoldBackgroundColor: Color.fromRGBO(10, 13, 34, 1),
          accentColor: Color.fromRGBO(235, 21, 85, 1),
          textTheme: TextTheme(
            bodyText2: TextStyle(
              color: Colors.white,
            ),
          )),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Results(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/results': (context) => InputPage(),
      },
    );
  }
}
