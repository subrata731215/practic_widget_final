import 'package:flutter/material.dart';

import '../../../createdData/my_appbar_widget.dart';
import '../../../routes/routes.dart';

class DismissibleLearn extends StatefulWidget {
  const DismissibleLearn({Key? key}) : super(key: key);

  @override
  State<DismissibleLearn> createState() => _DismissibleLearnState();
}

class _DismissibleLearnState extends State<DismissibleLearn> {
  final List<String> fruits = [
    'Apple',
    'Mango',
    'Banana',
    'Grapes',
    'Cherri',
    'Orange',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBarWidget(context,
            appBarTitle: 'Dismissible', trailingRoutes: Routes.drawer),
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Container(
                        padding: const EdgeInsets.all(10),
                        color: Colors.redAccent,
                        child: Text('$fruit is deleted')),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.teal,
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Icon(Icons.ac_unit),
                    backgroundColor: Colors.yellow,
                  ));
                }
              },
              key: Key(fruit),
              background: const Icon(Icons.scale),
              secondaryBackground: Container(
                color: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(fruit),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
