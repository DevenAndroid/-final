
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? textSize;
  final FontWeight? fontWeight;

  const BigText(
      {Key? key,
      this.color = const Color(0xff051A2D),
      this.textSize = 0,
        this.fontWeight = FontWeight.w100,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontSize: textSize == 0 ? 18 : textSize,
        fontWeight: fontWeight == FontWeight.w100 ? FontWeight.bold : fontWeight,),
    );
  }
}
