import 'package:flutter/material.dart';
import 'package:practic/reactivePractic/addContainer_One/addContainer.dart';
import 'package:practic/reactivePractic/addTwoNumber_NiNe/addTwoNumbers.dart';
import 'package:practic/reactivePractic/animation_Sixteen/animation_1.dart';
import 'package:practic/reactivePractic/dataTable_Ten/DataTable.dart';
import 'package:practic/reactivePractic/dataTable_Ten/dataTableList.dart';
import 'package:practic/reactivePractic/hero_18/hero_learn.dart';
import 'package:practic/reactivePractic/light_tweleve/light.dart';
import 'package:practic/reactivePractic/materialTheme_Fourteen/materialTheme_Fourteen.dart';
import 'package:practic/reactivePractic/radio_thirteen/radioLearn_thirteen.dart';
import 'package:practic/reactivePractic/scoreBoard_Eleven/cricketScore.dart';
import 'package:practic/reactivePractic/share_preferences/sharePreferences.dart';
import 'package:practic/reactivePractic/stepper_learn_17/stepper_Learn.dart';
import 'package:practic/widget_Practic/checkBox_Two/checkbox.dart';
import 'package:practic/widget_Practic/dropDownButton_Three/dropdownButton.dart';
import 'package:practic/widget_Practic/listTile_Four/listTile_class.dart';
import 'package:practic/widget_Practic/listView_Builder_Five/listViewBuilder.dart';
import 'package:practic/widget_Practic/randomNumBer_Seven/randomNoGenerate.dart';
import 'package:practic/widget_Practic/slider_Eight/slider.dart';
import 'package:practic/widget_Practic/textField_Six/textfield_learn.dart';
import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: HomePage(),
      ),
      initialRoute: Routes.homepage,
      routes: {
        Routes.homepage: (context) => HomePage(),
        Routes.addContainer: (context) => AddContainer(),
        Routes.checkBox: (context) => CheckBoxTestWithTwoState(),
        Routes.dropDownButton: (context) => MyDropDownButton(),
        Routes.listTile: (context) => ListTileClass(),
        Routes.listViewBuilder: (context) => ListViewBuilderLern(),
        Routes.textFieldLearn: (context) => TextFieldLearn(),
        Routes.randomNoGenerate: (context) => RandomNoGenerate(),
        Routes.slider: (context) => SliderLearn(),
        Routes.addTwoNumber: (context) => AddTwoNumbers(),
        Routes.dataTable: (context) => DataTableLearn(),
        Routes.datableList: (context) => DataTablelist(),
        Routes.scoreBoard: (context) => CricketScore(),
        Routes.light: (context) => Light(),
        Routes.radio: (context) => RadioLearn(),
        Routes.materialTheme: (context) => MaterialTheme(),
        Routes.sharePreference: (context) => SharePreferencesLearn(),
        Routes.animation: (context) => AnimationLearn(),
        Routes.stepper: (context) => StepperLearn(),
        Routes.hero: (context) => HeroLearn(),
      },
    );
  }
}

class Routes {
  static const homepage = 'homePage';
  static const addContainer = 'addContainer';
  static const checkBox = 'checkBox';
  static const dropDownButton = 'dropDownButton';
  static const listTile = 'listTile';
  static const listViewBuilder = 'listViewBuilder';
  static const textFieldLearn = 'textFieldLearn';
  static const randomNoGenerate = 'randomNoGenerate';
  static const slider = 'slider';
  static const dataTable = 'dataTable';
  static const datableList = 'dataTableList';
  static const scoreBoard = 'scoreBoard';
  static const addTwoNumber = 'addTwoNumber';
  static const light = 'light';
  static const radio = 'radio';
  static const materialTheme = 'materialTheme';
  static const sharePreference = 'sharePreference';
  static const animation = 'animationLearn';
  static const stepper = 'stepper';
  static const hero = 'hero';
}
