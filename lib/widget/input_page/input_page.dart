import 'package:bmi_calculator/components/minus_plus_input.dart';
import 'package:bmi_calculator/components/icon_text.dart';
import 'package:bmi_calculator/components/full_width_slider.dart';
import 'package:bmi_calculator/entity/age_entity.dart';
import 'package:bmi_calculator/entity/height_entity.dart';
import 'package:bmi_calculator/entity/weight_entity.dart';
import 'package:bmi_calculator/interfaces/full_width_slider.dart';
import 'package:bmi_calculator/interfaces/minus_plus_input_entity.dart';
import 'package:bmi_calculator/routing/resultsArguments.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/components/bottom_bar.dart';
import 'package:bmi_calculator/components/card_info.dart';
import 'package:bmi_calculator/enums/gender.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender _currentGenderActive;
  WeightEntity weightData =
      WeightEntity(initialValue: 50, minValue: 30, maxValue: 500);

  AgeEntity ageData = AgeEntity(initialValue: 25, minValue: 5, maxValue: 120);

  HeightSlider heightData =
      HeightSlider(initialValue: 180, minValue: 110, maxValue: 230);

  void changeHeight(double value) {
    setState(() {
      heightData.setCurrentValue(value);
    });
  }

  void decreaseWeight() {
    setState(() {
      weightData.decreaseValue();
    });
  }

  void increaseWeight() {
    setState(() {
      weightData.increaseValue();
    });
  }

  void decreaseAge() {
    setState(() {
      ageData.decreaseValue();
    });
  }

  void increaseAge() {
    setState(() {
      ageData.increaseValue();
    });
  }

  void setActive(Gender gender) {
    // ignore: sdk_version_set_literal
    setState(() => _currentGenderActive = gender);
  }

  @override
  Widget build(BuildContext context) {
    ResultsArguments resultsArguments = ResultsArguments(
        weightData.getCurrentValue().toInt(),
        heightData.getCurrentValue().toInt());

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
                    cardChild: FullWidthSlider(
                      title: 'HEIGHT',
                      minValue: heightData.getMinValue(),
                      maxValue: heightData.getMaxValue(),
                      initialValue: heightData.getInitialValue(),
                      currentValue: heightData.getCurrentValue(),
                      onChanged: changeHeight,
                    ),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CardInfo(
                        cardChild: MinusPlusInput(
                          label: 'WEIGHT',
                          initialValue: weightData.getInitialValue(),
                          minValue: weightData.getMinValue(),
                          maxValue: weightData.getMaxValue(),
                          decreaseData: decreaseWeight,
                          increaseData: increaseWeight,
                          currentValue: weightData.getCurrentValue(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CardInfo(
                        cardChild: MinusPlusInput(
                          label: 'AGE',
                          initialValue: ageData.getInitialValue(),
                          minValue: ageData.getMinValue(),
                          maxValue: ageData.getMaxValue(),
                          decreaseData: decreaseAge,
                          increaseData: increaseAge,
                          currentValue: ageData.getCurrentValue(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomBar(
              onTap: () => Navigator.pushNamed(context, '/results',
                  arguments: resultsArguments),
              isActive: _currentGenderActive == null ? false : true,
              text: 'CALCULATE YOUR BMI',
            )
          ],
        ));
  }
}
