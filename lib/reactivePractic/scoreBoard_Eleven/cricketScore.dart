import 'package:flutter/material.dart';
import 'package:reactiv/views/reactive_state_widget.dart';

import 'controller/controller.dart';

class CricketScore extends ReactiveStateWidget<ScoreController> {
  @override
  ScoreController bindController() => ScoreController();

  const CricketScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Cricket Score'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  // Navigator.pushNamed(context, Routes.addTwoNumber);
                },
                icon: Icon(Icons.arrow_forward))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'INDIA   :  ',
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '${controller.scoreController.text} /9',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'BANGLADESH   :  ',
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '0/0',
                          ),
                        ],
                      ),
                      Text(
                        'Total Extra Run  :   5',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      TextField(
                        controller: controller.scoreController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.brown,
                  child: TextField(
                    decoration: InputDecoration(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
