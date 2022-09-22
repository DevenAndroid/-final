import 'package:flutter/material.dart';

import '../../../constraints/colors.dart';
import '../../../constraints/styles.dart';

class Availability extends StatefulWidget {
  const Availability({Key? key}) : super(key: key);

  @override
  State<Availability> createState() => _AvailabilityState();
}

class _AvailabilityState extends State<Availability> {

  @override
  void initState() {
    super.initState();
    minimumBlockBookable.text = "1";
    maximumBlockBookable.text = "1";
  }

  String forMinimumSelected = "Month(s)";
  String forMaximumSelected = "Month(s)";

  var forMinimum = [
    "Month(s)",
    "Day(s)",
    "Hour(s)",
    "Minute(s)",
  ];

  var forMaximum = [
    "Month(s)",
    "Day(s)",
    "Hour(s)",
    "Minute(s)",
  ];

  TextEditingController maxBookingPerBlock = TextEditingController();
  TextEditingController minimumBlockBookable = TextEditingController();
  TextEditingController maximumBlockBookable = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
