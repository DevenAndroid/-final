import 'package:flutter/material.dart';

ThemeData theme() => ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Colors.white,
      // scaffoldBackgroundColor: const Color(0xFFf3f7fa),
      backgroundColor: Colors.white,
      // backgroundColor: const Color(0xFFed1c24),
      textTheme: const TextTheme(
        bodyText1: TextStyle(color: Colors.black),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFed1c24),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: false,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton?.styleFrom(
          primary: const Color(0xffed1c24),
        ),
      ),
    );

ThemeData darkTheme() => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.amber,
      scaffoldBackgroundColor: const Color(0xFF121212),
      backgroundColor: Colors.black,
      textTheme: const TextTheme(
        bodyText1: TextStyle(color: Colors.white),
      ),
    );
