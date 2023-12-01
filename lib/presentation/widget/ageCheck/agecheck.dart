import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import 'package:reactiv/reactiv.dart';
import '../../../routes/routes.dart';
import 'controller.dart';

class AgeCheckk extends ReactiveStateWidget<ExtraController> {
  const AgeCheckk({Key? key}) : super(key: key);

  @override
  ExtraController bindController() => ExtraController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget(context,
          appBarTitle: 'ageCheck', trailingRoutes: Routes.animatedContainer),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Observer2(
                listenable: controller.isAlreadyExist,
                listenable2: controller.name,
                listener: (exist, name) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        onChanged: (newAge) {
                          controller.name.value = newAge;
                          controller.isAlreadyExist.value = controller.existname
                              .contains(controller.name.value);
                        },
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward))),
                      ),
                      const SizedBox(height: 20),
                      exist
                          ? const Text('Already exist')
                          : Text(
                              name,
                              style: const TextStyle(
                                  color: Colors.red, fontSize: 30),
                            )
                    ],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Observer2(
                listenable: controller.name2,
                listenable2: controller.isAlreadyExist2,
                listener: (name2, exist2) {
                  return Column(
                    children: [
                      TextField(
                        onChanged: (newNum) {
                          controller.name2.value = newNum;
                          controller.isAlreadyExist2.value = controller.existNum
                              .contains(controller.name2.value);
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      const SizedBox(height: 20),
                      controller.isAlreadyExist2.value
                          ? const Text('Already exist')
                          : Text(name2),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
