import 'package:reactiv/reactiv.dart';

class ExtraController extends ReactiveController {
  ReactiveString name = ReactiveString('');

  List<String> existname = [
    'subrata',
    'kala',
    'mukto',
    'bisu',
    'pari',
    'sumanta',
    'raju'
    'satya'
  ];
  ReactiveBool isAlreadyExist = ReactiveBool(false);
  ReactiveString name2 = ReactiveString('');
  ReactiveBool isAlreadyExist2 = ReactiveBool(false);
  List<String> existNum = ['10', '20', '30', '40', '50'];
}
