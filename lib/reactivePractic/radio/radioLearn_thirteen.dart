import 'package:flutter/material.dart';

import '../../main.dart';
class RadioLearn extends StatelessWidget {
  const RadioLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RadioLearn'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.materialTheme);
                },
                icon: Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}
