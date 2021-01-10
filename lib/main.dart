import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  title: 'Dice RNG',
  home: Dice(),
));

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int left = Random().nextInt(6) + 1;
  int right = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        centerTitle: true,
        title: Text(
          'Dice Roller',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.toll),
            onPressed: () {
              setState(() {
                left = Random().nextInt(6) + 1;
                right = Random().nextInt(6) + 1;
              });
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                child: Image.asset('assets/dice$left.png'),
                onPressed: () {
                  setState(() {
                    left = Random().nextInt(6) + 1;
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                child: Image.asset('assets/dice$right.png'),
                onPressed: () {
                  setState(() {
                    right = Random().nextInt(6) + 1;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
