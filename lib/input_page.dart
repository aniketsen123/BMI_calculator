import 'package:bmi_calcutor/ReusableCard.dart';
import 'package:bmi_calcutor/RoundIconButton.dart';
import 'package:bmi_calcutor/calculator_brain.dart';
import 'package:bmi_calcutor/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ButtonBottom.dart';
import 'IconCOntent.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;
  int height = 180;
  int weight = 60;
  int age = 50;
  void updateColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == inactiveColor) {
        femaleCardColor = inactiveColor;
        maleCardColor = activeColorColor;
      } else {
        maleCardColor = inactiveColor;
        femaleCardColor = activeColorColor;
      }
    } else if (gender == Gender.female) {
      if (femaleCardColor == inactiveColor) {
        femaleCardColor = activeColorColor;
        maleCardColor = inactiveColor;
      } else {
        femaleCardColor = inactiveColor;
        maleCardColor = activeColorColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.male);
                    });
                  },
                  child: ReuasbleCard(maleCardColor,
                      IconCOntent("Male", FontAwesomeIcons.male)),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.female);
                    });
                  },
                  child: ReuasbleCard(femaleCardColor,
                      IconCOntent("FEMALE", FontAwesomeIcons.female)),
                )),
              ],
            ),
          ),
          Expanded(
            child: ReuasbleCard(
              Color(0xFF1D1E33),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: labelTextStyle1),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 12.0,
                      max: 220,
                      onChanged: (double newvalue) {
                        setState(() {
                          height = newvalue.round();
                        });
                      },
                      activeColor: Color(0xFEB15555),
                      inactiveColor: Color(0xFF8D8E98),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReuasbleCard(
                Color(0xFF1D1E33),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "WEIGHT",
                      style: labelTextStyle,
                    ),
                    Text(
                      weight.toString(),
                      style: labelTextStyle1,
                    ),
                    SizedBox(width: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(FontAwesomeIcons.minus, () {
                          setState(() {
                            weight--;
                          });
                        }),
                        SizedBox(width: 10.0),
                        RoundIconButton(FontAwesomeIcons.add, () {
                          setState(() {
                            weight++;
                          });
                        })
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: ReuasbleCard(
                Color(0xFF1D1E33),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "AGE",
                      style: labelTextStyle,
                    ),
                    Text(
                      age.toString(),
                      style: labelTextStyle1,
                    ),
                    SizedBox(width: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(FontAwesomeIcons.minus, () {
                          setState(() {
                            age--;
                          });
                        }),
                        const SizedBox(width: 10.0),
                        RoundIconButton(FontAwesomeIcons.add, () {
                          setState(() {
                            age++;
                          });
                        })
                      ],
                    )
                  ],
                ),
              )),
            ],
          )),
          ButtomButton(onTap: () {

            CalculatorBrain ca=CalculatorBrain(height, weight);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ResultPage(ca)));
          }, ButtonTitle: "CALCULATE")
        ],
      ),
    );
  }
}

