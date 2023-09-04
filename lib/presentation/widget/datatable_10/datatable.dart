import 'package:flutter/material.dart';
import 'package:practic/presentation/widget/datatable_10/datatablelist.dart';
import 'package:reactiv/reactiv.dart';
import 'controller/datatablecontroller.dart';

class DataTableLearn extends StatelessWidget {
  const DataTableLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DataTable'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DataTableList()));
                },
                icon: Icon(Icons.arrow_forward))
          ],
        ),
        body: const Screen1(),
      ),
    );
  }
}

class Screen1 extends ReactiveStateWidget<DataTableController> {
  const Screen1({super.key});

  @override
  DataTableController bindController() => DataTableController();
  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
          listenable: controller.dataList,
          listener: (context) {
            return ListView.builder(
              itemCount: controller.dataList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(20),
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
                          child: const Text('Submit')),
                    ],
                  ),
                );
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
