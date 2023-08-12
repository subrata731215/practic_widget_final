import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:reactiv/reactiv.dart';
import '../../homepage.controller.dart';
import 'controller/controller.dart';

class AddContainer extends ReactiveStateWidget<AddContainerController> {
  const AddContainer({super.key});

  @override
  AddContainerController bindController() => AddContainerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context, appBarTitle: 'AddContainer', trailingRoutes: Routes.containerWithText),
      body: Observer(
          listenable: controller.containerList,
          listener: (context) {
            return ListView.builder(
                itemCount: controller.containerList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      color: Colors.red,
                      child: ListTile(
                        leading: Text(controller.containerList[index].name),
                        title: Text(
                            'Age :  ${controller.containerList[index].age}'),
                        trailing: Text(
                            'Mob No : ${controller.containerList[index].mobNo}'),
                      ),
                    ),
                  );
                });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addContainer(
              ContainerModel(name: 'Subrata', age: 29, mobNo: 8967332703));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
