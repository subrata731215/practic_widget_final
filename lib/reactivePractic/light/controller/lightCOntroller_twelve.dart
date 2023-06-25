import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:reactiv/controllers/reactive_controller.dart';
import 'package:reactiv/reactiv.dart';

class LightController extends ReactiveController {
  ReactiveInt lightColorindex = ReactiveInt(0);
  ReactiveInt backColorIndex = ReactiveInt(1);
  ReactiveInt textIndex = ReactiveInt(0);

  ReactiveList<String> textList = ReactiveList([
    'Red',
    'Green',
    'Blue',
    'Yellow',
    'Brown',
    'Pink',
    'Orange',
    'Purple',
    'Grey',
    'Black'
  ]);

  ReactiveList<Color> colorList = ReactiveList([
    Colors.red,
    Colors.green,
    Colors.blueAccent,
    Colors.yellow,
    Colors.brown,
    Colors.pink,
    Colors.orangeAccent,
    Colors.purple,
    Colors.grey,
    Colors.black,
  ]);

  changeColor() {
    if (lightColorindex.value < colorList.length) {
      lightColorindex.value++;
    }
    if (lightColorindex.value == colorList.length) {
      lightColorindex.value = 0;
    }
  }

  backGrounColor() {
    if (backColorIndex.value <= colorList.length) {
      backColorIndex.value++;
    }
    if (backColorIndex.value == colorList.length) {
      backColorIndex.value = 0;
    }
  }

  textColor() {
    textIndex.value = lightColorindex.value;
  }
}
