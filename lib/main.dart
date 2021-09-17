// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MaterialApp(
    title: 'hello',
    home: diceRoller(),
  ));
}

class diceRoller extends StatefulWidget {
  const diceRoller({Key? key}) : super(key: key);

  @override
  _diceRollerState createState() => _diceRollerState();
}

class _diceRollerState extends State<diceRoller> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
