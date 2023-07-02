import 'package:reactiv/controllers/reactive_controller.dart';
import 'package:reactiv/reactiv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShareController extends ReactiveController{
final KEYNAME=ReactiveString('name');

final name=ReactiveString('No Value Saved');


  void getValue ()async{
  var prefs=await SharedPreferences.getInstance();
  var getName = prefs.setString(KEYNAME.value, name.value);
  name.value=getName.toString();


}


}