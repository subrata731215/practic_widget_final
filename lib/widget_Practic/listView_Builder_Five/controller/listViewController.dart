import 'package:reactiv/controllers/reactive_controller.dart';
import 'package:reactiv/reactiv.dart';

class ListViewController extends ReactiveController {
  ReactiveList<String> name = ReactiveList(
      ['Subrata', 'Sumanta', 'Joydeb', 'Nitupam', 'Bisu', 'Mukto']);
}
