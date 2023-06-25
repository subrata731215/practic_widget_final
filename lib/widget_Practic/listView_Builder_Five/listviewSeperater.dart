import 'package:flutter/material.dart';
import 'package:practic/widget_Practic/listView_Builder_Five/controller/listViewController.dart';
import 'package:reactiv/reactiv.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends ReactiveStateWidget<ListViewController> {
  @override
  ListViewController bindController() => ListViewController();

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.seperater'),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.account_balance_outlined),
                title: Text(controller.name[index]),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 20,
                thickness: 2,
              );
            },
            itemCount: controller.name.length),
      ),
    );
  }
}
