// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';

class diceRoller extends StatefulWidget {
  const diceRoller({Key? key}) : super(key: key);

  @override
  _diceRollerState createState() => _diceRollerState();
}

class _diceRollerState extends State<diceRoller> {
  AssetImage one = AssetImage('assets/images/one.png');
  AssetImage two = AssetImage('assets/images/two.png');
  AssetImage three = AssetImage('assets/images/three.png');
  AssetImage four = AssetImage('assets/images/four.png');
  AssetImage five = AssetImage('assets/images/five.png');
  AssetImage six = AssetImage('assets/images/six.png');

  AssetImage diceImage = AssetImage("");

  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = one;
    });
  }

  void rollDice() {
    var random = (Random().nextInt(6)) + 1;

    AssetImage newImage = AssetImage("");

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    setState(() {
      diceImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dice Roller',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: diceImage,
              )
            ],
          ),
        ),
      ),
    );
  }
}
