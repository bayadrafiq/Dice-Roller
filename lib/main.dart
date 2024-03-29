import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  void chageDiceNumber() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(children: [
          Expanded(
              child: TextButton(
            onPressed: () {
              chageDiceNumber();
            },
            child: Image.asset('images/dice$leftdicenumber.png'),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              chageDiceNumber();
            },
            child: Image.asset('images/dice$rightdicenumber.png'),
          )),
        ]),
      ),
    );
  }
}
