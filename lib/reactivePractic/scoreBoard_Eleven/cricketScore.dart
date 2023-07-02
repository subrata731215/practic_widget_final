import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:reactiv/views/reactive_state_widget.dart';

import 'controller/controller.dart';
import 'package:practic/main.dart';

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
                    Navigator.pushNamed(context, Routes.light);
                  },
                  icon: Icon(Icons.arrow_forward))
            ],
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Observer(
                            listenable: controller.presentScore,
                            listener: (context) {
                              return Text(
                                'Present Score :  ${controller.presentScore.value}',
                                style: TextStyle(fontSize: 20),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Observer(
                            listenable: controller.presentScore,
                            listener: (context) {
                              return Text(
                                'Total Score :  ${controller.totalScore()}',
                                style: TextStyle(fontSize: 3),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 320,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      controller.presentScore.value = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'Input Present Score',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),

                        border: OutlineInputBorder()),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
