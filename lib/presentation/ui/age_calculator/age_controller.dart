import 'package:reactiv/controllers/reactive_controller.dart';

class AgeController extends ReactiveController {
  int date = 0;
  int month = 0;
  int year = 0;



  int finalYear() {
    return DateTime.now().year - year;
  }

  int finalMonth() {

    return DateTime.now().month - month;
  }

  int finalDate() {
    return DateTime.now().day - date;
  }
}
