import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/controllers/reactive_controller.dart';
import 'package:reactiv/reactiv.dart';

class DataTableController extends ReactiveController {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final mobNoController = TextEditingController();

  ReactiveInt itemindex = ReactiveInt(0);


  ReactiveList<DataModel> dataList = ReactiveList([
    DataModel(name: 'SUBRATA', age: '69', mobNo: '8967332703'),
  ]);

  void addDataList() {
    dataList.add(DataModel(
        name: nameController.text,
        age: ageController.text,
        mobNo: mobNoController.text));
  }
}

class DataModel {
  String name;
  String age;
  String mobNo;

  DataModel({required this.name, required this.age, required this.mobNo});
}
