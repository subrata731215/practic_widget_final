import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:practic/main.dart';

import 'controller/dataTableConTroller.dart';



class DataTableLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DataTable'),
          centerTitle: true,
          automaticallyImplyLeading: true,
          actions: [IconButton(onPressed: (){
            Navigator.pushNamed(context, Routes.datableList);
          }, icon: Icon(Icons.arrow_forward))],
        ),
        body: Screen1(),
      ),
    );
  }
}

class Screen1 extends ReactiveStateWidget<DataTableController> {
  @override
  DataTableController bindController() => DataTableController();
  late int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
          listenable: controller.dataList,
          listener: (context) {
            return ListView.builder(
              itemCount: controller.dataList.length,
              itemBuilder: (context, index ) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.greenAccent,
                    child: Column(
                      children: [
                        Text(controller.dataList[index].name),
                        Text(controller.dataList[index].age),
                        Text(controller.dataList[index].mobNo),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: controller.nameController,
                      ),
                      TextField(
                        controller: controller.ageController,
                      ),
                      TextField(
                        controller: controller.mobNoController,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            controller.dataList.add(DataModel(
                                name: controller.nameController.text,
                                age: controller.ageController.text,
                                mobNo: controller.mobNoController.text));
                            Navigator.pop(context);
                          },
                          child: Text('Submit')),
                    ],
                  ),
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
