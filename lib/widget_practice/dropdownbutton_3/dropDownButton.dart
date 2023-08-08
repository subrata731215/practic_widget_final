import 'package:flutter/material.dart';
import 'package:practic/constant.dart';

import '../../homepage.controller.dart';

void main() {
  runApp(const DropDownButton());
}

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String dropdownValue = 'Red';
  var color = ['Red', 'Black', 'Blue', 'Green', 'Orange'];

  String fruitsValue = 'Mango';

  var fruits = ['Mango', 'Banana', 'Apple', 'Grapes'];

  String namesValue = 'Subrata';

  var names = [
    'Subrata',
    'Sumanta',
    'Satya',
    'Mukto',
    'Bisu',
    'Joydeb',
    'Sujit',
    'Nirupam da',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbarWidget(context,
            appBarTitle: 'DropDown', trailingRoutes: Routes.listTile),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                  value: namesValue,
                  items: names.map((String friends) {
                    return DropdownMenuItem<String>(
                      value: friends,
                      child: Text(friends),
                    );
                  }).toList(),
                  onChanged: (changedValue) {
                    setState(() {
                      namesValue = changedValue!;
                    });
                  }),
              DropdownButton<String>(
                value: dropdownValue,
                onChanged: (newVal) {
                  setState(() {
                    dropdownValue = newVal!;
                  });
                },
                items: color.map((String items) {
                  return DropdownMenuItem<String>(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
              ),
              DropdownButton<String>(
                borderRadius: BorderRadius.circular(50),
                elevation: 60,
                dropdownColor: Colors.green,
                isDense: true,
                iconSize: 50,
                iconEnabledColor: Colors.red,
                iconDisabledColor: Colors.blue,
                value: fruitsValue,
                items: fruits.map((String newItems) {
                  return DropdownMenuItem(
                    value: newItems,
                    child: Text(newItems),
                  );
                }).toList(),
                onChanged: (newFruits) {
                  setState(() {
                    fruitsValue = newFruits!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
