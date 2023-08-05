import 'package:intl/intl.dart';
import 'package:reactiv/reactiv.dart';

class Ui2Controller extends ReactiveController {
  ReactiveString time = ReactiveString(DateFormat.jms().format(DateTime.now()));
}
