import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediumText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? textSize;
  final double? height;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  const MediumText(
      {Key? key,
      this.color = const Color(0xff051A2D),
      this.textSize = 0,
      required this.text,
        this.fontWeight = FontWeight.w100,
        this.textAlign = TextAlign.center,
      this.height = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight == FontWeight.w100 ? FontWeight.w500 : fontWeight,
          fontSize: textSize == 0 ? 14 : textSize,
          height: height == 0 ? 1 : height),
      textAlign: textAlign,
    );
  }
}
