import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'controller/controller.dart';

void main() {
  runApp(const MyApp());
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
          title: const Text('ListView.separator'),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.account_balance_outlined),
                title: Text(controller.name[index]),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 20,
                thickness: 2,
              );
            },
            itemCount: controller.name.length),
      ),
    );
  }
}
