import 'package:reactiv/reactiv.dart';

class ListViewController extends ReactiveController {
  ReactiveList<String> name = ReactiveList(
      ['Subrata', 'Sumanta', 'Joydeb', 'Nirupam', 'Bisu', 'Mukto']);
}
