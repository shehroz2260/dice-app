import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            'Dice App',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  rolldice() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: GestureDetector(
            onTap: () {
              rolldice();
              // setState(() {
              //   leftdicenumber = Random().nextInt(6) + 1;
              //   // print('left dice clicked$leftdicenumber');
              // });
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Image.asset('assets/imagse/dice$leftdicenumber.png'),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              rolldice();
              // setState(() {
              //   rightdicenumber = Random().nextInt(6) + 1;
              //   // print('right dice clicked$rightdicenumber');
              // });
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Image.asset('assets/imagse/dice$rightdicenumber.png'),
            ),
          ))
        ],
      ),
    );
  }
}
