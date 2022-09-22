import 'package:flutter/material.dart';

import 'colors.dart';

InputDecoration _inputDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    borderSide: BorderSide(
      color: Colors.black.withOpacity(0.1),
      width: 1,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    borderSide: BorderSide(
      color: Colors.black.withOpacity(0.1),
      width: 1,
    ),
  ),
  // focusedBorder: OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(10),
  //   borderSide: BorderSide(
  //     color: Colors.black.withOpacity(0.1),
  //     width: 1,
  //   ),
  // ),
);

InputDecoration get inputDecoration => _inputDecoration;

InputDecoration _inputDecorationFilled = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    borderSide: const BorderSide(
      color: colorBorder,
      width: 1,
    ),
  ),
  filled: true,
  isDense: true,
  fillColor: textFieldFillColor,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    borderSide: const BorderSide(
      color: Colors.transparent,
      width: 1,
    ),
  ),
  // focusedBorder: OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(10),
  //   borderSide: BorderSide(
  //     color: Colors.black.withOpacity(0.1),
  //     width: 1,
  //   ),
  // ),
);

InputDecoration get inputDecorationFilled => _inputDecorationFilled;

InputDecoration _inputDecorationFilled2 = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    borderSide: const BorderSide(
      color: colorBorder,
      width: 1,
    ),
  ),
  filled: true,
  isDense: false,
  fillColor: Colors.white,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    borderSide: const BorderSide(
      color: Colors.transparent,
      width: 1,
    ),
  ),
  // focusedBorder: OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(10),
  //   borderSide: BorderSide(
  //     color: Colors.black.withOpacity(0.1),
  //     width: 1,
  //   ),
  // ),
);

InputDecoration get inputDecorationFilled2 => _inputDecorationFilled2;
