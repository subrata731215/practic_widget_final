import 'package:flutter/cupertino.dart';
import 'package:reactiv/controllers/reactive_controller.dart';
import 'package:reactiv/state_management/reactive_types.dart';

class AddTwoNumberController extends ReactiveController {
  final no1Controller = TextEditingController();
  final no2Controller = TextEditingController();
  final sumresults = ReactiveInt(0);
  final minusResult = ReactiveInt(0);

  int sum() {
    int result = int.parse(no1Controller.text) + int.parse(no2Controller.text);
    sumresults.value = result;
    return result;
  }

  int minus() {
    int result = int.parse(no1Controller.text) - int.parse(no2Controller.text);
    minusResult.value = result;
    return result;
  }
}
