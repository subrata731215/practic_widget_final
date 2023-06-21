import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practic/main.dart';
import 'package:reactiv/reactiv.dart';

import 'controller/dataTableConTroller.dart';

class DataTablelist extends ReactiveStateWidget<DataTableController> {
  @override
  DataTableController bindController() => DataTableController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DataTable List'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.scoreBoard);
                },
                icon: Icon(Icons.arrow_forward))
          ],
        ),
        body: ListView.builder(
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
            }));
  }
}

List<DataColumn> dataColumnList = [
  DataColumn(label: Text('Name')),
  DataColumn(label: Text('Age')),
  DataColumn(label: Text('Mob No')),
];
