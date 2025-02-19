import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
              primaryColor: Color(0xFF0A0E21),
              textTheme: TextTheme(bodyText2:TextStyle(color:Colors.white))
      ),
      // theme: ThemeData(
      //   primaryColor: Color(0xFF0A0E21),
      //   hintColor:Colors.purple,
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      //   textTheme: TextTheme(bodyText2:TextStyle(color:Colors.white))
      // ),
      home: InputPage(),
    );
  }
}

