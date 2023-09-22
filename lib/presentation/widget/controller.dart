import 'package:reactiv/reactiv.dart';
import '../../routes/routes.dart';

class WidgetController extends ReactiveController {

  ReactiveList<WidgetModel> newWidgetList = ReactiveList([
    WidgetModel(title: 'AddBox', routesName: Routes.addBox),
    WidgetModel(title: 'AddContainer', routesName: Routes.addContainer),
    WidgetModel(title: 'AddTwoNumber', routesName: Routes.addTwoNumber),
    WidgetModel(title: 'AgeCheck', routesName: Routes.ageCheck),
    WidgetModel(title: 'AnimatedContainer', routesName: Routes.animatedContainer),
    WidgetModel(title: 'AnimationOneTap', routesName: Routes.oneTapAnimation),
    WidgetModel(title: 'Api', routesName: Routes.api),
    WidgetModel(title: 'Async await, Timer and DateTime', routesName: Routes.asyncAwait),
    WidgetModel(title: 'AudioPlayer', routesName: Routes.audioPlayer),
    WidgetModel(title: 'BoolPractice', routesName: Routes.bool),
    WidgetModel(title: 'CheckBox', routesName: Routes.checkBox),
    WidgetModel(title: 'ClassModel', routesName: Routes.classModel),
    WidgetModel(title: 'Contact Add', routesName: Routes.contactAdd),
    WidgetModel(title: 'DataTable', routesName: Routes.dataTable),
    WidgetModel(title: 'DropDownButton', routesName: Routes.dropDownButton),
    WidgetModel(title: 'Extra', routesName: Routes.extraPractice),
    WidgetModel(title: 'FinanceCalculator', routesName: Routes.financeCalculator),
    WidgetModel(title: 'Gesture', routesName: Routes.gesture),
    WidgetModel(title: 'Hero', routesName: Routes.hero),
    WidgetModel(title: 'Light', routesName: Routes.light),
    WidgetModel(title: 'ListTile', routesName: Routes.listTile),
    WidgetModel(title: 'ListView.Builder', routesName: Routes.listViewBuilder),
    WidgetModel(title: 'Lottie', routesName: Routes.lottie),
    WidgetModel(title: 'MaterialTheme', routesName: Routes.materialTheme),
    WidgetModel(title: 'OtpInput', routesName: Routes.otpInputField),
    WidgetModel(title: 'Radio', routesName: Routes.radio),
    WidgetModel(title: 'RandomNo', routesName: Routes.randomNo),
    WidgetModel(title: 'searchBoxAnimation', routesName: Routes.searchBoxAnimation),
    WidgetModel(title: 'ScoreBoard', routesName: Routes.scoreBoard),
    WidgetModel(title: 'Share Preference', routesName: Routes.sharePreference),
    WidgetModel(title: 'Slider', routesName: Routes.slider),
    WidgetModel(title: 'Stepper', routesName: Routes.stepper),
    WidgetModel(title: 'TextField', routesName: Routes.textField),


  ]);
}

class WidgetModel {
  String title;
  String routesName;

  WidgetModel({required this.title, required this.routesName});
}
