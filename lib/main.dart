import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNum = 1;
  var righDiceNum=6;
  void changeDice(){
    setState(() {
      leftDiceNum=Random().nextInt(6)+1;
      righDiceNum=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNum.png'),
              onPressed: (){
                changeDice();
              },
            ),
          ),
          Expanded(
              child: TextButton(
                child: Image.asset('images/dice$righDiceNum.png'),
                onPressed: (){
                  changeDice();
                },
              )
          ),
        ],
      ),
    );
  }
}
