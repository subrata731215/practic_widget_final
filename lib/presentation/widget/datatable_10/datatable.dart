import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import 'package:reactiv/reactiv.dart';
import '../../../routes/routes.dart';
import 'controller/datatablecontroller.dart';

class DataTableLearn extends StatelessWidget {
  const DataTableLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget(context,
          appBarTitle: 'DataTable And DataTableList',
          trailingRoutes: Routes.dismissible),
      body: const Screen1(),
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
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
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
                  ),
                ),
                const SizedBox(
                  child: Text('DataTableList'),
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: controller.dataList.length,
                        itemBuilder: (context, index) {
                          return DataTable(columns: dataColumnList, rows: [
                            DataRow(cells: [
                              DataCell(
                                Text(controller.dataList[index].name),
                              ),
                              DataCell(
                                Text(controller.dataList[index].age),
                              ),
                              DataCell(
                                Text(controller.dataList[index].mobNo),
                              ),
                            ]),
                          ]);
                        }))
              ],
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
                      TextField(controller: controller.nameController),
                      TextField(controller: controller.ageController),
                      TextField(controller: controller.mobNoController),
                      ElevatedButton(
                          onPressed: () {
                            controller.dataList.add(DataModel(
                                name: controller.nameController.text,
                                age: controller.ageController.text,
                                mobNo: controller.mobNoController.text));
                            Navigator.pop(context);
                          },
                          child: const Text('Submit',style: TextStyle(color: Colors.blue),)),
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

List<DataColumn> dataColumnList = [
  const DataColumn(label: Text('Name')),
  const DataColumn(label: Text('Age')),
  const DataColumn(label: Text('Mob No')),
];
