import 'package:flutter/material.dart';
import "dart:math";

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.shade800,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.green.shade800,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;

  int rightDice = 4;

  void changeDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FlatButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    changeDice();
                  });
                },
                child: Image.asset("images/dice$leftDice.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setState(() {
                      changeDice();
                    });
                  },
                  child: Image.asset("images/dice$rightDice.png")),
            ),
          ),
        ],
      ),
    );
  }
}
