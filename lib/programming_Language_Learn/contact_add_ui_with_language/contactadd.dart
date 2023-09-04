import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reactiv/reactiv.dart';
import '../../homepage/homepage.controller.dart';
import 'controller.dart';
import 'model.dart';

class ContactAdd extends ReactiveStateWidget<AllDataController> {
  const ContactAdd({Key? key}) : super(key: key);

  @override
  AllDataController bindController() => AllDataController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Observer(
          listenable: controller.switchValue,
          listener: (value) {
            return Scaffold(
                backgroundColor: Colors.brown,
                appBar: AppBar(
                  backgroundColor: Colors.brown,
                  systemOverlayStyle: SystemUiOverlayStyle.light,
                  toolbarHeight: 170,
                  title: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Observer(
                              listenable: controller.contactList,
                              listener: (listLength) {
                                return Text(
                                  ' MyContactList [ ${listLength.length} ]'
                                      .toString(),
                                  style: const TextStyle(fontSize: 30),
                                );
                              }),
                          Observer(
                              listenable: controller.switchValue,
                              listener: (switchvalue) {
                                return Switch(
                                    value: switchvalue,
                                    onChanged: (changed) {
                                      // controller.switchValue.value =
                                      //     !controller..value;
                                      //controller.toggle();
                                    });
                              }),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  controller.add(
                                      contact: Contact(
                                          name: 'Subrata',
                                          mobNumber: '8967332703'));
                                },
                                child: const Text('Direct Add ListView'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Observer(
                                  listenable: controller.contactList,
                                  listener: (list) {
                                    return ElevatedButton(
                                        onPressed: () {
                                          controller.remove(
                                              contact:
                                                  controller.contactList.last);
                                        },
                                        child: const Icon(Icons.delete));
                                  }),
                              const SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Routes.otpInputField);
                                  },
                                  child: const Icon(Icons.navigate_next)),
                            ],
                          ),
                        ],
                      )),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: controller.switchValue.value
                            ? Colors.white
                            : Colors.white24,
                        borderRadius: BorderRadius.circular(20)),
                    child: Observer(
                        listenable: controller.contactList,
                        listener: (list) {
                          return ListView.builder(
                              itemCount: list.length,
                              itemBuilder: (listtext, itemIndex) {
                                return ListTile(
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(controller
                                          .contactList[itemIndex].name),
                                      Text(controller
                                          .contactList[itemIndex].mobNumber),
                                    ],
                                  ),
                                );
                              });
                        }),
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Column(
                              children: [
                                TextField(
                                  controller: controller.nameController,
                                  decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.perm_contact_cal),
                                      labelText: 'Enter Your Name',
                                      border: OutlineInputBorder()),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  keyboardType: TextInputType.phone,
                                  controller: controller.phController,
                                  decoration: const InputDecoration(
                                      prefixText: '+91  ',
                                      prefixIcon: Icon(Icons.phone),
                                      labelText: 'Enter Your MobNo',
                                      border: OutlineInputBorder()),
                                ),
                              ],
                            ),
                            actions: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CloseButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        if (controller
                                                .nameController.text.isEmpty ||
                                            controller
                                                .phController.text.isEmpty) {
                                          controller.nameController.clear();
                                          controller.phController.clear();
                                          return;
                                        } else {
                                          controller.add(
                                            contact: Contact(
                                                name: controller
                                                    .nameController.text,
                                                mobNumber: controller
                                                    .phController.text),
                                          );
                                        }

                                        Navigator.pop(context);
                                        controller.nameController.clear();
                                        controller.phController.clear();
                                      },
                                      child: const Text('OK'))
                                ],
                              )
                            ],
                          );
                        });
                  },
                  child: const Icon(Icons.add),
                ));
          }),
    );
  }
}
