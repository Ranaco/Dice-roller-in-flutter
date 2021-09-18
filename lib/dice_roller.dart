// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'dart:math';

class diceRoller extends StatefulWidget {
  const diceRoller({Key? key}) : super(key: key);

  @override
  _diceRollerState createState() => _diceRollerState();
}

class _diceRollerState extends State<diceRoller> {
  var one = 'one';
  var two = 'two';
  var three = 'three';
  var four = 'four';
  var five = 'five';
  var six = 'six';

  var diceImage;
  var secImage;

  @override
  void initState() {
    super.initState();
    diceImage = one;
    secImage = six;
  }

  _diceImage() {
    var random = Random().nextInt(6) + 1;
    var newdiceImage;
    switch (random) {
      case 1:
        newdiceImage = one;
        break;
      case 2:
        newdiceImage = two;
        break;
      case 3:
        newdiceImage = three;
        break;
      case 4:
        newdiceImage = four;
        break;
      case 5:
        newdiceImage = five;
        break;
      case 6:
        newdiceImage = six;
        break;
    }
    setState(() {
      diceImage = newdiceImage;
    });
  }

  _secRoller() {
    var secrandom = Random().nextInt(6) + 1;
    var secdiceImage;

    switch (secrandom) {
      case 1:
        secdiceImage = one;
        break;
      case 2:
        secdiceImage = two;
        break;
      case 3:
        secdiceImage = three;
        break;
      case 4:
        secdiceImage = four;
        break;
      case 5:
        secdiceImage = five;
        break;
      case 6:
        secdiceImage = six;
        break;
    }
    setState(() {
      secImage = secdiceImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dice Roller',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  'assets/images/$diceImage.png',
                  width: 100,
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/$secImage.png',
                  width: 100,
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _diceImage();
          _secRoller();
        },
        label: Text(
          'Roll the Dice',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
