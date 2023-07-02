import 'package:flutter/cupertino.dart';
import 'package:reactiv/controllers/reactive_controller.dart';
import 'package:reactiv/reactiv.dart';

class ScoreController extends ReactiveController {
  ReactiveList<int> number = ReactiveList([6845, 456984, 238597]);

  ReactiveString presentScore = ReactiveString('0');

  int totalScore() {
    int ff = int.parse(presentScore.value);

    return ff + 6;
  }
}
