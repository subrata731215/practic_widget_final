import 'package:flutter/material.dart';
import 'package:practic/constant.dart';

import '../../homepage/homepage.controller.dart';

class MaterialTheme extends StatelessWidget {
  const MaterialTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme: const TextTheme(
              displayLarge: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              // ignore: prefer_const_constructors
              displayMedium:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              titleMedium: TextStyle(
                fontSize: 20,
              ))),
      home: Scaffold(
        appBar: appbarWidget(context,
            appBarTitle: 'MaterialTheme',
            trailingRoutes: Routes.radio),
        body: NameList(),
      ),
    );
  }
}

class NameList extends StatelessWidget {
  NameList({Key? key}) : super(key: key);

  final DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Subrata Ghosh',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          'Mukto Ghosh',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.red),
        ),
        Text(
          'Sourav Ghosh',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          'Joydeb Singha',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
