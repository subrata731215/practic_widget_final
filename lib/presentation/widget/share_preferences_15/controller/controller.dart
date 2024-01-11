import 'package:reactiv/reactiv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShareController extends ReactiveController {
  final keyName = ReactiveString('name');

  final name = ReactiveString('Subrata');

  void getValue() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    var getName = sp.setString(keyName.value, name.value);
    name.value = getName.toString();
  }
}
