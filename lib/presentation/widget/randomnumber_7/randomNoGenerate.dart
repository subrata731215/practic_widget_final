import 'dart:math';
import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import '../../../routes/routes.dart';

class RandomNoGenerate extends StatefulWidget {
  const RandomNoGenerate({Key? key}) : super(key: key);

  @override
  State<RandomNoGenerate> createState() => _RandomNoGenerateState();
}

class _RandomNoGenerateState extends State<RandomNoGenerate> {
  int currentNumber = 0;
  List<int> myNo = [0, 67, 76, 670, 3554, 45, 65];
  int? ranNo;
  String whichNo = '';
  String complete = '';

  void generateNo() {
    setState(() {
      currentNumber++;
      if (currentNumber >= myNo.length) {
        ranNo = Random().nextInt(40) + 1;
        whichNo = 'Random No';
      } else {
        myNo[currentNumber];
        whichNo = 'My No';
      }

      if (currentNumber == 100) {
        complete = 'Completed';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: appbarWidget(context,
              appBarTitle: 'Random No Generate',
              trailingRoutes: Routes.cricketScore),
          body: currentNumber == 100
              ? Center(
                  child: Text(
                    complete,
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        whichNo,
                        style: const TextStyle(fontSize: 50),
                      ),
                      Text(
                        currentNumber >= myNo.length
                            ? ranNo.toString()
                            : myNo[currentNumber].toString(),
                        style: const TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            generateNo();
                          },
                          child: const Text(
                            'Random Number Generate',
                            style: TextStyle(fontSize: 20),
                          )),
                      Text(
                        'You Click $currentNumber times',
                        style: const TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                )),
    );
  }
}
