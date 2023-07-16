import 'package:flutter/material.dart';
import 'package:practic/reactive_practice/addcontainer_1/container.dart';
import 'package:practic/reactive_practice/addtwonumber_9/add.twonumbers.dart';
import 'package:practic/reactive_practice/animation_16/animation_one.dart';
import 'package:practic/reactive_practice/datatable_10/datatable.dart';
import 'package:practic/reactive_practice/datatable_10/datatablelist.dart';
import 'package:practic/reactive_practice/hero_18/hero_learn.dart';
import 'package:practic/reactive_practice/light_12/light.dart';
import 'package:practic/reactive_practice/materialTheme_14/materialtheme.dart';
import 'package:practic/reactive_practice/radio_13/radio.learn.dart';
import 'package:practic/reactive_practice/scoreBoard_11/cricket.score.dart';
import 'package:practic/reactive_practice/share_preferences_15/sharepreferences.dart';
import 'package:practic/reactive_practice/stepper_learn_17/stepper.learn.dart';
import 'package:practic/widget_practice/boolpractice_19/bool_practice.dart';
import 'package:practic/widget_practice/checkBox_2/checkbox.dart';
import 'package:practic/widget_practice/dropdownbutton_3/dropdownbutton.dart';
import 'package:practic/widget_practice/gesture_20/gesture.dart';
import 'package:practic/widget_practice/listtile_4/listtile.class.dart';
import 'package:practic/widget_practice/listviewbuilder_5/listview.builder.dart';
import 'package:practic/widget_practice/randomnumber_7/randomnogenerate.dart';
import 'package:practic/widget_practice/slider_8/slider.dart';
import 'package:practic/widget_practice/textField_6/textfield_learn.dart';
import 'homepage.dart';

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
        Routes.homepage: (context) => const HomePage(),
        Routes.addContainer: (context) => const AddContainer(),
        Routes.checkBox: (context) => const CheckBoxTestWithTwoState(),
        Routes.dropDownButton: (context) => const MyDropDownButton(),
        Routes.listTile: (context) => const ListTileClass(),
        Routes.listViewBuilder: (context) => const ListViewBuilderLern(),
        Routes.textFieldLearn: (context) => const TextFieldLearn(),
        Routes.randomNoGenerate: (context) => const RandomNoGenerate(),
        Routes.slider: (context) => const SliderLearn(),
        Routes.addTwoNumber: (context) => const AddTwoNumbers(),
        Routes.dataTable: (context) => const DataTableLearn(),
        Routes.datableList: (context) => const DataTableList(),
        Routes.scoreBoard: (context) => const CricketScore(),
        Routes.light: (context) => const Light(),
        Routes.radio: (context) => const RadioLearn(),
        Routes.materialTheme: (context) => const MaterialTheme(),
        Routes.sharePreference: (context) => const SharePreferencesLearn(),
        Routes.animation: (context) => const AnimationLearn(),
        Routes.stepper: (context) => const StepperLearn(),
        Routes.hero: (context) => const HeroLearn(),
        Routes.bool: (context) => const BoolPractice(),
        Routes.gesture: (context) => const GestureLearn(),
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
  static const bool = 'bool';
  static const gesture = 'gesture';
}
