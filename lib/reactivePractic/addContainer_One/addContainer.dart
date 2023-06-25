import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practic/main.dart';
import 'package:reactiv/reactiv.dart';

import 'controller/addContainerContainer.dart';

class AddContainer extends ReactiveStateWidget<AddContainerController> {
  AddContainerController bindController() => AddContainerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddContainer'),
        centerTitle: true,
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.checkBox);
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Observer(listenable: controller.containerList,
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
                      title: Text('Age :  ${controller.containerList[index].age}'),
                      trailing:
                          Text('Mob No : ${controller.containerList[index].mobNo}'),
                    ),
                  ),
                );
              });
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addContainer(
              ContainerModel(name: 'Subrata', age: 29, mobNo: 8967332703));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
