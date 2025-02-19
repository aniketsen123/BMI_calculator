import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({
    required this.onTap, required this.ButtonTitle,
  });

  final VoidCallback onTap;
  final String ButtonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              ButtonTitle,
              style: kLargeButtonTextStyle,
            )),
        color: Colors.red,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 50.0,
      ),
    );
  }
}