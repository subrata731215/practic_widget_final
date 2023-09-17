import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Container> containerList = [
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.white),
  Container(height: 10, width: 10, color: Colors.black),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.pink),
  Container(height: 10, width: 10, color: Colors.yellowAccent),
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.white),
  Container(height: 10, width: 10, color: Colors.black),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.pink),
  Container(height: 10, width: 10, color: Colors.yellowAccent),
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.white),
  Container(height: 10, width: 10, color: Colors.black),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.pink),
  Container(height: 10, width: 10, color: Colors.yellowAccent),
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.white),
  Container(height: 10, width: 10, color: Colors.black),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.pink),
  Container(height: 10, width: 10, color: Colors.yellowAccent),
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.white),
  Container(height: 10, width: 10, color: Colors.black),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.pink),
  Container(height: 10, width: 10, color: Colors.yellowAccent),
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.white),
  Container(height: 10, width: 10, color: Colors.black),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.pink),
  Container(height: 10, width: 10, color: Colors.yellowAccent),
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.white),
  Container(height: 10, width: 10, color: Colors.black),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.green),
  Container(height: 10, width: 10, color: Colors.blue),
  Container(height: 10, width: 10, color: Colors.pink),
  Container(height: 10, width: 10, color: Colors.yellowAccent),
];

Future<List<String>> getData() async {
  await Future.delayed(Duration(seconds: 5));
  return ['value 1', 'value 2', 'value 3', 'value 4', 'value 5', 'value 6'];
}

class NameCheck {
  String name;
  bool isCheck = false;

  NameCheck({
    required this.name,required this.isCheck,
  });

  void toggle() {
    isCheck = !isCheck;
  }
}

List<NameCheck> nameList = [
];
