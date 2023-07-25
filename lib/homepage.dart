import 'package:flutter/material.dart';
import 'package:practic/main.dart';
import 'package:practic/practic.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            title: 'AddBox',
            onp: () {
              setState(() {
                Navigator.pushNamed(context, Routes.addBox);
              });
            },
            slNo: 1.1.toInt(),
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
          PracticeWidget(
              title: 'Slider',
              onp: () {
                Navigator.pushNamed(context, Routes.slider);
              },
              slNo: 8),
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
          PracticeWidget(
              title: 'light',
              onp: () {
                Navigator.pushNamed(context, Routes.light);
              },
              slNo: 12),
          PracticeWidget(
              title: 'Radio',
              onp: () {
                Navigator.pushNamed(context, Routes.radio);
              },
              slNo: 13),
          PracticeWidget(
              title: 'MaterialTheme',
              onp: () {
                Navigator.pushNamed(context, Routes.materialTheme);
              },
              slNo: 14),
          PracticeWidget(
              title: 'Share Preference',
              onp: () {
                Navigator.pushNamed(context, Routes.sharePreference);
              },
              slNo: 15),
          PracticeWidget(
              title: 'Animation',
              onp: () {
                Navigator.pushNamed(context, Routes.animation);
              },
              slNo: 16),
          PracticeWidget(
              title: 'Stepper',
              onp: () {
                Navigator.pushNamed(context, Routes.stepper);
              },
              slNo: 17),
          PracticeWidget(
              title: 'Hero',
              onp: () {
                Navigator.pushNamed(context, Routes.hero);
              },
              slNo: 18),
          PracticeWidget(
              title: 'Bool',
              onp: () {
                Navigator.pushNamed(context, Routes.bool);
              },
              slNo: 19),
          PracticeWidget(
              title: 'Gesture',
              onp: () {
                Navigator.pushNamed(context, Routes.gesture);
              },
              slNo: 20),
          PracticeWidget(
              title: 'call',
              onp: () {
                Navigator.pushNamed(context, Routes.call);
              },
              slNo: 21),
          PracticeWidget(
              title: 'Ui1',
              onp: () {
                Navigator.pushNamed(context, Routes.ui1);
              },
              slNo: 22)
        ],
      ),
    );
  }
}
