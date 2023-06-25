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
        body: ListView.builder(itemCount: controller.number.length,
            itemBuilder: (BuildContext, index){
          ListTile(
            title: Text(controller.number[index]),
          );
        })
      ),
    );
  }
}
