import 'package:flutter/material.dart';

class LeadingAppIcon extends StatefulWidget {
  const LeadingAppIcon({Key? key}) : super(key: key);

  @override
  State<LeadingAppIcon> createState() => _LeadingAppIconState();
}

class _LeadingAppIconState extends State<LeadingAppIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          padding: const EdgeInsets.only(
              left: 14
          ),
          alignment: Alignment.centerLeft,
          child: Image.asset(
            'assets/images/back-icon.png',
            scale: 1.2
          ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
