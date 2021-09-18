// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class diceRoller extends StatefulWidget {
  const diceRoller({Key? key}) : super(key: key);

  @override
  _diceRollerState createState() => _diceRollerState();
}

class _diceRollerState extends State<diceRoller> {
  List<Widget> images = [
    Image.asset('assets/images/one.png'),
    Image.asset('assets/images/two.png'),
    Image.asset('assets/images/three.png'),
    Image.asset('assets/images/four.png'),
    Image.asset('assets/images/five.png'),
    Image.asset('assets/images/six.png'),
  ];
  int counter = 0;
  Widget? _images;

  rotate() {
    setState(() {
      _images = images[counter];
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
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: _images),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: rotate,
        child: Icon(Icons.rotate_90_degrees_ccw_outlined),
      ),
    );
  }
}
