import 'package:flutter/cupertino.dart';
import 'package:reactiv/controllers/reactive_controller.dart';
import 'package:reactiv/reactiv.dart';

class ScoreController extends ReactiveController {
  ReactiveList<String> number=ReactiveList([
    '9',
    '8',

  ]);

  final scoreController = TextEditingController();

  void add(){
    number.add('6');
  }
}