import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text("Dice Page"),
            backgroundColor: Colors.deepOrange,
          ),
          body: DiceScreen()),
    );
  }
}

class DiceScreen extends StatefulWidget {
  @override
  _DiceScreenState createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int _dice1 = 1;
  int _dice2 = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Image(
                  image: AssetImage('images/dice$_dice1.png'),
                ),
                onTap: () {
                  setState(() {
                    _dice1 = Random().nextInt(6) + 1;
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Image(
                  image: AssetImage('images/dice$_dice2.png'),
                ),
                onTap: () {
                  setState(() {
                    _dice2 = Random().nextInt(6) + 1;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
