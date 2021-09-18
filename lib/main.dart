// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'dice_roller.dart';

main(List<String> args) {
  runApp(MaterialApp(
    title: 'dice Roller',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: diceRoller(),
  ));
}
