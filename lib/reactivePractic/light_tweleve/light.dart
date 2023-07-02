import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';

import '../../main.dart';
import 'controller/lightCOntroller_twelve.dart';

class Light extends ReactiveStateWidget<LightController> {
  @override
  LightController bindController() => LightController();

  const Light({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('Light'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.radio);
                },
                icon: Icon(Icons.arrow_forward))
          ],
        ),
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
                                          left: 30,
                                          right: 30,
                                          top: 20,
                                          bottom: 20),
                                      child: Text(
                                        controller
                                            .textList[controller.textIndex.value],
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.bold,
                                            color: controller.colorList[controller
                                                .lightColorindex.value]),
                                      ),
                                    ),
                                  );
                                }),
                            Observer(
                                listenable: controller.lightColorindex,
                                listener: (context) {
                                  return Icon(
                                    Icons.lightbulb,
                                    size: 280,
                                    color: controller.colorList[
                                    controller.lightColorindex.value],
                                  );
                                }),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: controller.colorList[
                                  controller.lightColorindex.value],
                                  elevation: 20,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                onPressed: () {
                                  controller.changeColor();
                                  controller.backGrounColor();
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
            }),
      )


    );
  }
}
