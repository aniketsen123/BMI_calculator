import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton(this.icon,this.onPressed1);
  final IconData icon;
  final VoidCallback onPressed1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawMaterialButton(
      child: Icon(icon),
      onPressed:onPressed1,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5),

      constraints: BoxConstraints.tightFor(width: 56.0,height: 56.0),
    );
  }
}
