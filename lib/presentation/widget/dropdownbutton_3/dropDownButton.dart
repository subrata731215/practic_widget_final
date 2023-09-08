import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import '../../../routes/routes.dart';

class DropDownButtonLearn extends StatefulWidget {
  const DropDownButtonLearn({Key? key}) : super(key: key);

  @override
  State<DropDownButtonLearn> createState() => _DropDownButtonLearnState();
}

class _DropDownButtonLearnState extends State<DropDownButtonLearn> {
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
    return  Scaffold(
        appBar: appbarWidget(context, appBarTitle: 'Dropdown', trailingRoutes: Routes.extraPractice),
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
    );
  }
}
