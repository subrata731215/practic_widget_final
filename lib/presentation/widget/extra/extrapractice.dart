import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practic/presentation/widget/extra/utils.dart';
import 'package:practic/presentation/widget/finance_margin_calculator/finance.calculator.dart';
import '../gesture_20/gesture.dart';

class ExtraPractice extends StatefulWidget {
  const ExtraPractice({Key? key}) : super(key: key);

  @override
  State<ExtraPractice> createState() => _ExtraPracticeState();
}

class _ExtraPracticeState extends State<ExtraPractice> {
  bool isVisible = true;

  SizedBox sizedBox({required String text}) {
    return SizedBox(
      width: 20,
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ExtraPractice'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FinanceCalculator()));
                },
                icon: const Icon(Icons.arrow_forward))
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            sizedBox(text: 'RichText'),
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.green,
              child: RichText(
                text: const TextSpan(children: [
                  TextSpan(
                      text: 'Subrata', style: TextStyle(color: Colors.red)),
                  TextSpan(
                      text: '   Ghosh',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                ]),
              ),
            ),
            sizedBox(text: 'Flexible And Expanded'),
            SizedBox(
              height: 100,
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(color: Colors.red, child: const Text('1')),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                        color: Colors.green, child: const Text('2kjdngfjkv')),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                        color: Colors.yellow,
                        child: const Text('3jbfkjsdjdhfbs')),
                  ),
                  Flexible(
                    flex: 1,
                    child:
                        Container(color: Colors.orange, child: const Text('4')),
                  ),
                ],
              ),
            ),
            sizedBox(text: 'Wrap'),
            Container(
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  spacing: 30,
                  runSpacing: 5,
                  children: containerList,
                ),
              ),
            ),
            sizedBox(text: 'FittedBox'),
            Container(
              height: 100,
              color: Colors.red,
              child: const FittedBox(child: Text('Subrata')),
            ),
            sizedBox(text: 'SnackBar'),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text('Subrata')));
                },
                child: const Icon(Icons.ac_unit)),
            sizedBox(text: 'Visibility'),
            Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: isVisible,
                    child: const Icon(Icons.accessibility),
                  ),
                  Visibility(
                    visible: isVisible,
                    child: const Center(
                      child: Text('Subrata Ghosh'),
                    ),
                  ),
                  isVisible ? const Icon(Icons.error) : Text('data'),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      tooltip: 'Visibility',
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      icon: const CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Icon(Icons.ac_unit),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            sizedBox(text: 'Future Builder and platform checking'),
            FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                  return snapshot.connectionState == ConnectionState.waiting
                      ? Platform.isAndroid
                          ? const CircularProgressIndicator()
                          : const CupertinoActivityIndicator.partiallyRevealed()
                      : Column(
                          children: List.generate(snapshot.data!.length,
                              (index) => Text(snapshot.data![index])));
                }),
            sizedBox(text: 'spreadOperator'),
            ...containerList,
            ...List.generate(
              nameList.length,
              (index) => Row(
                children: [
                  Text(nameList[index].name),
                  const SizedBox(width: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
