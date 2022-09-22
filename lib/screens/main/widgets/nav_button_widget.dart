import 'package:flutter/material.dart';
import 'package:dinelah_vendor/constraints/colors.dart';

class BottomNavButtonWidget extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final bool? isSelected;
  final Function()? onTap;

  const BottomNavButtonWidget({
    Key? key,
    this.icon,
    this.text,
    this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.18,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Icon(icon,
                    color: isSelected == true ? Colors.black : Colors.grey),
              ),
            if (text != null)
              Text(
                text!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isSelected == true ? Colors.black : Colors.grey,
                  fontSize: 12,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class BottomNavCenterButtonWidget extends StatelessWidget {
  final Widget? icon;
  final Function()? onTap;

  const BottomNavCenterButtonWidget({
    Key? key,
    this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.18,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 4, top: 6),
                child: icon,
              ),
          ],
        ),
      ),
    );
  }
}

class SelectedNavShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = colorSecondary
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    double _height = size.height;
    double _width = size.width;

    double _halfHeight = _height / 2;
    double _halfWidth = _width / 2;

    double _corner = 2;

    var path = Path();
    // top center
    path.moveTo(_halfWidth - _corner - 2, 2);
    path.quadraticBezierTo(
      _halfWidth,
      0,
      _halfWidth + _corner + 2,
      2,
    );

    // right top
    path.lineTo(_width - _corner, _height * 0.25 - _corner);
    path.quadraticBezierTo(
      _width,
      _height * 0.25,
      _width,
      _height * 0.25 + _corner,
    );

    // right bottom
    path.lineTo(_width, _height * 0.75 - _corner);
    path.quadraticBezierTo(
      _width,
      _height * 0.75,
      _width - _corner,
      _height * 0.75 + _corner,
    );

    // bottom center
    path.lineTo(_halfWidth + _corner + 2, _height - 2);
    path.quadraticBezierTo(
      _halfWidth,
      _height,
      _halfWidth - _corner - 2,
      _height - 2,
    );

    // bottom left
    path.lineTo(_corner, _height * 0.75 + _corner);
    path.quadraticBezierTo(
      0,
      _height * 0.75,
      0,
      _height * 0.75 - _corner,
    );

    // top left
    path.lineTo(0, _height * 0.25 + _corner);
    path.quadraticBezierTo(
      0,
      _height * 0.25,
      _corner,
      _height * 0.25 - _corner,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
