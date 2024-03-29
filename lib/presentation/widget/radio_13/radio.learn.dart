import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import '../../../routes/routes.dart';

class RadioLearn extends StatefulWidget {
  const RadioLearn({Key? key}) : super(key: key);

  @override
  State<RadioLearn> createState() => _RadioLearnState();
}

class _RadioLearnState extends State<RadioLearn> {
  int val = 0;
  int gVal = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBarWidget(context,
            appBarTitle: 'RadioLearn', trailingRoutes: Routes.randomNo),
        body: Row(
          children: [0, 1, 2, 3, 4, 5, 6, 7]
              .map((int index) => Radio(
                  value: index,
                  groupValue: gVal,
                  onChanged: (value) {
                    setState(() {
                      gVal = value!;
                    });
                  }))
              .toList(),
        ),
      ),
    );
  }
}
