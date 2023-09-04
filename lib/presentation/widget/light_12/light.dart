import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:reactiv/reactiv.dart';
import '../../../routes/routes.dart';
import 'controller/lightController.dart';

class Light extends ReactiveStateWidget<LightController> {
  @override
  LightController bindController() => LightController();

  const Light({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'Light', trailingRoutes: Routes.listTile),
      body: Observer(
        listenable: controller.backColorIndex,
        listener: (context) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                  decoration: BoxDecoration(
                    color:
                        controller.colorList[controller.backColorIndex.value],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Observer(
                            listenable: controller.textIndex,
                            listener: (text) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30, top: 20, bottom: 20),
                                  child: Text(
                                    controller
                                        .textList[controller.textIndex.value],
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                        color: controller.colorList[
                                            controller.lightColorIndex.value]),
                                  ),
                                ),
                              );
                            }),
                        Observer(
                            listenable: controller.lightColorIndex,
                            listener: (context) {
                              return Icon(
                                Icons.lightbulb,
                                size: 280,
                                color: controller.colorList[
                                    controller.lightColorIndex.value],
                              );
                            }),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: controller
                                  .colorList[controller.lightColorIndex.value],
                              elevation: 20,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {
                              controller.changeColor();
                              controller.backGroundColor();
                              controller.textColor();
                            },
                            child: const Text('Change Light'))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
