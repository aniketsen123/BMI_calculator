import 'package:bmi_calcutor/constants.dart';
import 'package:flutter/cupertino.dart';

class IconCOntent extends StatelessWidget {
  const IconCOntent(this.text,this.icon1);
  final String text;
  final IconData icon1;

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon1,
          size: 80.0,
        ),
        SizedBox(height: 15.0,),
        Text(text,style: labelTextStyle,)
      ],
    );
  }
}
