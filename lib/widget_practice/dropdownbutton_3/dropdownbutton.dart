import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/main.dart';

void main() {
  runApp(const MyDropDownButton());
}

class MyDropDownButton extends StatefulWidget {
  const MyDropDownButton({Key? key}) : super(key: key);

  @override
  State<MyDropDownButton> createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  String dropdownValue = 'Red';
  var color = ['Red', 'Black', 'Blue', 'Green', 'Orange'];

  String fruitsvalue = 'Mango';

  var fruits = ['Mango', 'Banana', 'Apple', 'Grapes'];

  String namesvalue = 'Subrata';

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
            appBarTitle: 'DrpDpwnButton', trailingRoutes: Routes.listTile),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                  value: namesvalue,
                  items: names.map((String friends) {
                    return DropdownMenuItem<String>(
                      value: friends,
                      child: Text(friends),
                    );
                  }).toList(),
                  onChanged: (changedValue) {
                    setState(() {
                      namesvalue = changedValue!;
                    });
                  }),
              DropdownButton<String>(
                value: dropdownValue,
                onChanged: (newval) {
                  setState(() {
                    dropdownValue = newval!;
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
                value: fruitsvalue,
                items: fruits.map((String newitems) {
                  return DropdownMenuItem(
                    value: newitems,
                    child: Text(newitems),
                  );
                }).toList(),
                onChanged: (newFruits) {
                  setState(() {
                    fruitsvalue = newFruits!;
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
