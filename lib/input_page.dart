import 'package:bmi_calculator/data_selector.dart';
import 'package:bmi_calculator/icon_text.dart';
import 'package:bmi_calculator/height_data.dart';
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
                      flex: 1,
                      child: CardInfo(
                        onTap: () => setActive(Gender.Male),
                        cardChild: IconText(
                          icon: FaIcon(
                            FontAwesomeIcons.mars,
                            color: Colors.white,
                            size: 90.0,
                          ),
                          text: "MALE",
                          isActive: _currentGenderActive == Gender.Male
                              ? true
                              : false,
                        ),
                        isActive:
                            _currentGenderActive == Gender.Male ? true : false,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CardInfo(
                        onTap: () => setActive(Gender.Female),
                        cardChild: IconText(
                          icon: FaIcon(
                            FontAwesomeIcons.venus,
                            color: Colors.white,
                            size: 90.0,
                          ),
                          text: "FEMALE",
                          isActive: _currentGenderActive == Gender.Female
                              ? true
                              : false,
                        ),
                        isActive: _currentGenderActive == Gender.Female
                            ? true
                            : false,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  child: CardInfo(
                    cardChild: HeightData(),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CardInfo(
                        cardChild: DataSelector(
                          description: 'WEIGHT',
                          initialValue: 50.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: CardInfo(
                        cardChild: DataSelector(
                          description: 'AGE',
                          initialValue: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomBar(
              isActive: _currentGenderActive == null ? false : true,
            )
          ],
        ));
  }
}
