import 'package:flutter/material.dart';

class CustomCirclePainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var _path = Path()
      ..moveTo(size.width, 0)
      ..lineTo(size.width, size.height * 0.7)
      ..quadraticBezierTo(30, size.height - 30, 0, 0);

    return _path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
