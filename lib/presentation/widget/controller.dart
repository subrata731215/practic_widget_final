import 'package:reactiv/reactiv.dart';

import '../homepage/homepage.controller.dart';

class WidgetController extends ReactiveController {

  ReactiveList<WidgetModel> newWidgetList = ReactiveList([
    WidgetModel(title: 'AddBox', routesName: Routes.addBox),
    WidgetModel(title: 'AddContainer', routesName: Routes.addContainer),
    WidgetModel(title: 'AddTwoNumber', routesName: Routes.addTwoNumber),
    WidgetModel(title: 'Animation', routesName: Routes.animation),
    WidgetModel(title: 'AnimationOneTap', routesName: Routes.oneTapAnimation),
    WidgetModel(title: 'AudioPlayer', routesName: Routes.audioPlayer),
    WidgetModel(title: 'BoolPractice', routesName: Routes.bool),
    WidgetModel(title: 'CheckBox', routesName: Routes.checkBox),
    WidgetModel(title: 'DataTable', routesName: Routes.dataTable),
    WidgetModel(title: 'DropDownButton', routesName: Routes.dropDownButton),
    WidgetModel(title: 'Gesture', routesName: Routes.gesture),
    WidgetModel(title: 'Hero', routesName: Routes.hero),
    WidgetModel(title: 'Light', routesName: Routes.light),
    WidgetModel(title: 'ListTile', routesName: Routes.listTile),
    WidgetModel(title: 'ListView.Builder', routesName: Routes.listViewBuilder),
    WidgetModel(title: 'Lottie', routesName: Routes.lottie),
    WidgetModel(title: 'MaterialTheme', routesName: Routes.materialTheme),
    WidgetModel(title: 'Radio', routesName: Routes.radio),
    WidgetModel(title: 'RandomNo', routesName: Routes.randomNo),
    WidgetModel(title: 'ScoreBoard', routesName: Routes.cricketScore),
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
