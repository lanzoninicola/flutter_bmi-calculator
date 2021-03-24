import 'package:bmi_calculator/card_info.dart';
import 'package:bmi_calculator/card_number.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                'Your result',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            CardInfo(
              cardChild: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(children: <Widget>[
                    Text(
                      'NORMAL',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    CardNumber(
                      number: 30,
                      size: 120.0,
                    ),
                    Text(
                      'NORMAL BMI RANGE',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      '18.5 - 25 Kg/m2',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      'You have a normal body weight. Good job!',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'SAVE RESULT',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
