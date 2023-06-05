import 'package:flutter/material.dart';
import 'package:practic/widget_Practic/randomNoGenerate.dart';
import 'package:practic/widget_Practic/listTile_class.dart';
import 'package:practic/widget_Practic/addContainer.dart';
import 'package:practic/widget_Practic/dropdownButton.dart';
import 'package:practic/widget_Practic/listViewBuilder.dart';
import 'package:practic/widget_Practic/tabbar.dart';
import 'package:practic/widget_Practic/textfield_learn.dart';
import 'homePage.dart';
import 'widget_Practic/checkbox.dart';

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
        Routes.homepage: (context) =>  HomePage(),
        Routes.addContainer: (context) =>  AddContainer(),
        Routes.checkBox: (context) => CheckBoxTestWithTwoState(),
        Routes.dropDownButton: (context) =>  MyDropDownButton(),
        Routes.listTile: (context) => ListTileClass(),
        Routes.listViewBuilder: (context)=>ListViewBuilderLern(),
        Routes.textFieldLearn: (context)=> TextFieldLearn(),
        Routes.randomNoGenerate: (context)=> RandomNoGenerate(),
        Routes.tabBarLearn: (context)=>TabBarLearn(),
      },
    );
  }
}

class Routes{
  static const homepage='homePage';
  static const addContainer='addContainer';
  static const checkBox='checkBox';
  static const dropDownButton='dropDownButton';
  static const listTile='listTile';
  static const listViewBuilder='listViewBuilder';
  static const textFieldLearn='textFieldLearn';
  static const randomNoGenerate='randomNoGenerate';
  static const tabBarLearn='tabBarLearn';





}