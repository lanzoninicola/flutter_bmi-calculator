import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/bottom_bar.dart';
import 'package:bmi_calculator/card_info.dart';
import 'package:bmi_calculator/enums/gender.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender _currentGenderActive;

  void setActive(Gender gender) {
    // ignore: sdk_version_set_literal
    setState(() => _currentGenderActive = gender);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setActive(Gender.Male),
                        child: CardInfo(
                          cardChild: FaIcon(FontAwesomeIcons.mars),
                          isActive: _currentGenderActive == Gender.Male
                              ? true
                              : false,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setActive(Gender.Female),
                        child: CardInfo(
                          cardChild: FaIcon(FontAwesomeIcons.venus),
                          isActive: _currentGenderActive == Gender.Female
                              ? true
                              : false,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: CardInfo(),
                    )
                  ],
                )),
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CardInfo(),
                    ),
                    Expanded(
                      child: CardInfo(),
                    )
                  ],
                ),
              ),
            ),
            BottomBar()
          ],
        ));
  }
}
