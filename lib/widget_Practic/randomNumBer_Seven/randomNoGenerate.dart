import 'dart:math';
import 'package:practic/main.dart';
import 'package:flutter/material.dart';
import 'package:practic/constant.dart';

class RandomNoGenerate extends StatefulWidget {
  const RandomNoGenerate({Key? key}) : super(key: key);

  @override
  State<RandomNoGenerate> createState() => _RandomNoGenerateState();
}

class _RandomNoGenerateState extends State<RandomNoGenerate> {
  String randomNumberDescription = '';

  List<int> myChoiceNo = [0, 34, 44, 54, 74];
  int myno = 0;

  int currentNumber = 0;

  void randomNumberGenerateWithTextCondition() {
    setState(() {
      if (currentNumber <= myChoiceNo.length) {
        myno++;
        myno = myChoiceNo[myno];
      } else {
        currentNumber = Random().nextInt(100) + 1;
      }

      if (currentNumber >= 20) {
        randomNumberDescription = 'More 20';
      } else {
        randomNumberDescription = 'Less 20';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(context,
            appBarTitle: 'Random No Generate', trailingRoutes: Routes.slider),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 600,
                width: 300,
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      currentNumber.toString(),
                      style: TextStyle(fontSize: 100),
                    ),
                    Text(
                      myno.toString(),
                      style: TextStyle(fontSize: 100),
                    ),
                    OutlinedButton(
                        onPressed: randomNumberGenerateWithTextCondition,
                        child: Text(
                          'Random Number Generate',
                          style: TextStyle(fontSize: 20),
                        )),
                    Text(randomNumberDescription),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
