import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:reactiv/reactiv.dart';
import '../../homepage.controller.dart';
import 'controller/datatablecontroller.dart';

class DataTableList extends ReactiveStateWidget<DataTableController> {
  const DataTableList({super.key});

  @override
  DataTableController bindController() => DataTableController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarWidget(
          context,
          appBarTitle: 'DataTable List',
          trailingRoutes: Routes.cricketScore,
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
  const DataColumn(label: Text('Name')),
  const DataColumn(label: Text('Age')),
  const DataColumn(label: Text('Mob No')),
];
