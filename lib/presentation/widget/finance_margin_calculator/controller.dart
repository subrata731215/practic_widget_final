import 'package:reactiv/reactiv.dart';

class FinanceController extends ReactiveController {
  ReactiveString cost = ReactiveString('0');
  ReactiveString margin = ReactiveString('0');

  double profit() {
    double calculate = sellingPrice() - int.parse(cost.value);
    return calculate;
  }

  double sellingPrice() {
    double calculate = int.parse(cost.value) +
        int.parse(cost.value) * int.parse(margin.value) / 100;
    return calculate;
  }
}
