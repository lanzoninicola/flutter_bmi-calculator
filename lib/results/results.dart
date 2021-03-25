import 'package:bmi_calculator/components/bottom_bar.dart';
import 'package:bmi_calculator/components/card_info.dart';
import 'package:bmi_calculator/components/card_number.dart';
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Text(
                  'Your result',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: CardInfo(
                cardChild: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 44.0),
                  child: Column(children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          'NORMAL',
                          style: TextStyle(
                              color: Color.fromRGBO(33, 186, 107, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CardNumber(
                        number: 30,
                        size: 120.0,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Text(
                            'Normal BMI range:',
                            style: TextStyle(
                                color: Color.fromRGBO(109, 111, 123, 1),
                                fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '18.5 - 25 Kg/m2',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36.0),
                        child: Center(
                          child: Container(
                            child: Text(
                              'You have a normal body weight. Good job!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                letterSpacing: 1.0,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: OutlinedButton(
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                              BorderSide(color: Color.fromRGBO(235, 21, 85, 1)),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'SAVE RESULT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ),
            BottomBar(
              isActive: true,
              text: 'RE-CALCULATE YOUR BMI',
            ),
          ],
        ));
  }
}
