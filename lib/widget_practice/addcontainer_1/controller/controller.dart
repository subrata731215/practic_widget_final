import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';

class AddContainerController extends ReactiveController {
  final ReactiveList<ContainerModel> containerList = ReactiveList([]);

  addContainer(ContainerModel containerModel) {
    containerList.add(containerModel);
  }

  /// addBox controller.dart

  ReactiveList addBoxLIst = ReactiveList([
    TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          hintText: 'Enter Your Mobile No',
          filled: true,
          fillColor: Colors.yellow,
          border: OutlineInputBorder()),
    ),
  ]);




  addBox() {
    addBoxLIst.add(
      TextFormField(
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
            hintText: 'Enter Your Mobile No',
            filled: true,
            fillColor: Colors.yellow,
            border: OutlineInputBorder()),
      ),
    );
  }
  removeBox(giveIndex){
    addBoxLIst.remove(addBoxLIst[giveIndex]);
  }
}

class ContainerModel {
  String name;
  int age;
  int mobNo;

  ContainerModel({required this.name, required this.age, required this.mobNo});
}
