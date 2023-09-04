import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import '../../homepage/homepage.controller.dart';

class ClassModelLearn extends StatelessWidget {
  const ClassModelLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'ClassModel', trailingRoutes: Routes.lottie),
      body: Column(
        children: [
          DataTable(
            horizontalMargin: MediaQuery.of(context).size.width / 5.5,
            border: const TableBorder(
              top: BorderSide(width: 5, color: Colors.purple),
              bottom: BorderSide(width: 5, color: Colors.purple),
              left: BorderSide(width: 5, color: Colors.purple),
              right: BorderSide(width: 5, color: Colors.purple),
            ),
            dataRowColor: const MaterialStatePropertyAll(Colors.orangeAccent),
            decoration: const BoxDecoration(color: Colors.green),
            columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Marks')),
              DataColumn(label: Text('Roll No')),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text(studentData[0].name!)),
                  DataCell(Text(studentData[0].marks.toString())),
                  DataCell(Text(studentData[0].rollNo.toString())),
                ],
              ),
              DataRow(cells: [
                DataCell(Text(studentData[1].name!)),
                DataCell(Text(studentData[1].marks.toString())),
                DataCell(Text(studentData[1].rollNo.toString())),
              ]),
              DataRow(cells: [
                DataCell(Text(studentData[2].name!)),
                DataCell(Text(studentData[2].marks.toString())),
                DataCell(Text(studentData[2].rollNo.toString())),
              ]),
              DataRow(cells: [
                DataCell(Text(studentData[2].name!)),
                DataCell(Text(studentData[2].marks.toString())),
                DataCell(Text(studentData[2].rollNo.toString())),
              ]),
              DataRow(cells: [
                DataCell(Text(studentData[3].name!)),
                DataCell(Text(studentData[3].marks.toString())),
                DataCell(Text(studentData[3].rollNo.toString())),
              ]),
              DataRow(cells: [
                DataCell(Text(studentData[4].name!)),
                DataCell(Text(studentData[4].marks.toString())),
                DataCell(Text(studentData[4].rollNo.toString())),
              ]),
              DataRow(cells: [
                DataCell(Text(studentData[5].name!)),
                DataCell(Text(studentData[5].marks.toString())),
                DataCell(Text(studentData[5].rollNo.toString())),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}

class Student {
  int? rollNo;
  String? name;
  int? marks;

  Student({this.rollNo, this.name, this.marks});
}

List<Student> studentData = [
  Student(rollNo: 1, name: 'Subrata', marks: 400),
  Student(rollNo: 2, name: 'Kala', marks: 700),
  Student(rollNo: 3, name: 'Mukto', marks: 450),
  Student(rollNo: 4, name: 'Bisu', marks: 380),
  Student(rollNo: 5, name: 'Sumanta', marks: 650),
  Student(rollNo: 6, name: 'Joydeb', marks: 590),
];
