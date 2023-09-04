import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practic/constant.dart';
import 'package:reactiv/reactiv.dart';
import '../../homepage/homepage.controller.dart';
import 'controller/controller.dart';

class AddTwoNumbers extends ReactiveStateWidget<AddTwoNumberController> {
  @override
  AddTwoNumberController bindController() => AddTwoNumberController();

  const AddTwoNumbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'AddTwoNumbers', trailingRoutes: Routes.dataTable),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter(RegExp(r'[0-9]'), allow: true)
              ],
              controller: controller.no1Controller,
              decoration: InputDecoration(
                labelText: 'Enter no1',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter(RegExp(r'[0-9]'), allow: true)
              ],
              controller: controller.no2Controller,
              decoration: InputDecoration(
                labelText: 'Enter no2',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Observer(
                listenable: controller.sumresults,
                listener: (context) {
                  return Text(
                    'Sum :  ${controller.sumresults.value}'.toString(),
                    style: const TextStyle(fontSize: 30),
                  );
                }),
            Observer(
                listenable: controller.minusResult,
                listener: (context) {
                  return Text(
                      'Minus :  ${controller.minusResult.value}'.toString(),
                      style: const TextStyle(fontSize: 30));
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.sum();
                    },
                    child: const Text('Sum')),
                ElevatedButton(
                    onPressed: () {
                      controller.minus();
                    },
                    child: const Text('Minus')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
