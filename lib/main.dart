import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DicePage(),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int UpperDiceNumber = 1;
  int rightUpperDiceNumber = 1;
  int leftLowerDiceNumber = 1;
  int LowerDiceNumber = 1;

  void changedDiceNumber() {
    LowerDiceNumber=Random().nextInt(6)+1;
    UpperDiceNumber=Random().nextInt(6)+1;
    rightUpperDiceNumber=Random().nextInt(6)+1;
    leftLowerDiceNumber=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffffba88),
        appBar: AppBar(
          backgroundColor: Color(0xffca8a5a),
          title: Text('Safa is developed Dicee Game'),
        ),
        body: Column(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changedDiceNumber();
                  });
                  //print('left button pressed');
                },
                child: Image.asset('images/dice$UpperDiceNumber.png'),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {

                      setState(() {
                        changedDiceNumber();
                      });//print('left button pressed');
                    },
                    child: Image.asset('images/dice$leftLowerDiceNumber.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                    setState(() {
                      changedDiceNumber();
                    });
                      //  print('left button pressed');
                    },
                    child: Image.asset('images/dice$rightUpperDiceNumber.png'),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      changedDiceNumber();
                    });

                    //print('left button pressed');
                  },
                  child: Image.asset('images/dice$LowerDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
