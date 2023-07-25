import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';

class DataTableController extends ReactiveController {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final mobNoController = TextEditingController();

  ReactiveInt itemIndex = ReactiveInt(0);

  ReactiveList<DataModel> dataList = ReactiveList([]);

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
