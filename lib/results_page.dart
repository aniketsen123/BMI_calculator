import 'package:bmi_calcutor/ButtonBottom.dart';
import 'package:bmi_calcutor/ReusableCard.dart';
import 'package:bmi_calcutor/calculator_brain.dart';
import 'package:bmi_calcutor/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultPage extends StatelessWidget {
  ResultPage( this.ca);

  final CalculatorBrain ca;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Text("YOUR RESULTS",style: kTitleButtonTextStyle,)),
          Expanded(flex: 5,child: ReuasbleCard(Color(0xFF1D1E33), Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(ca.calculateBMI(),style: kResultTextResul,),
              Text(ca.getResult(),style: kLargeButtonTextStyle,),
              Text(ca.getInterpretation(),textAlign:TextAlign.center,style: labelTextStyle,)
            ],
          )),),
          ButtomButton(onTap: (){
            Navigator.pop(context);
          }, ButtonTitle:"RE-CALCULATE")
        ],
      ),
    );
  }
}
