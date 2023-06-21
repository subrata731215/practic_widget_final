import 'package:flutter/material.dart';
import 'package:practic/main.dart';
import 'package:practic/practice_Widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: const Text('Practic'),
          actions: [
            Checkbox(
                value: checkBoxValue,
                onChanged: (change) {
                  setState(() {
                    checkBoxValue = change!;
                  });
                })
          ],
        ),
        body: ListView(
          children: [
            PracticeWidget(
              title: 'AddContainer',
              onp: () {
                setState(() {
                  Navigator.pushNamed(context, Routes.addContainer);
                });
              },
              slNo: 1,
            ),
            PracticeWidget(
              title: 'CheckBox',
              onp: () {
                setState(() {
                  Navigator.pushNamed(context, Routes.checkBox);
                });
              },
              slNo: 2,
            ),
            PracticeWidget(
              title: 'DropDownButton',
              onp: () {
                setState(() {
                  Navigator.pushNamed(context, Routes.dropDownButton);
                });
              },
              slNo: 3,
            ),
            PracticeWidget(
              title: 'ListTile',
              onp: () {
                setState(() {
                  Navigator.pushNamed(context, Routes.listTile);
                });
              },
              slNo: 4,
            ),
            PracticeWidget(
                title: 'ListView.Builder',
                onp: () {
                  setState(() {
                    Navigator.pushNamed(context, Routes.listViewBuilder);
                  });
                },
                slNo: 5),
            PracticeWidget(
                title: 'TextField',
                onp: () {
                  setState(() {
                    Navigator.pushNamed(context, Routes.textFieldLearn);
                  });
                },
                slNo: 6),
            PracticeWidget(
                title: 'RandomNumberGenerate',
                onp: () {
                  setState(() {
                    Navigator.pushNamed(context, Routes.randomNoGenerate);
                  });
                },
                slNo: 7),
            PracticeWidget(title: 'Slider', onp: () {
              Navigator.pushNamed(context, Routes.slider);
            }, slNo: 8),
            PracticeWidget(
                title: 'AddTwoNumber',
                onp: () {
                  Navigator.pushNamed(context, Routes.addTwoNumber);
                },
                slNo: 9),
            PracticeWidget(
                title: 'DataTable',
                onp: () {
                  Navigator.pushNamed(context, Routes.dataTable);
                },
                slNo: 10),
            PracticeWidget(
                title: 'CricketScore',
                onp: () {
                  Navigator.pushNamed(context, Routes.scoreBoard);
                },
                slNo: 11),
          ],
        ),
      ),
    );
  }
}
