import 'dart:math';
import 'package:flutter/material.dart';
import 'package:practic/presentation/widget/animatedContainer/controller.dart';
import 'package:reactiv/reactiv.dart';
import '../../../constant.dart';
import '../../../routes/routes.dart';

class AnimatedContainerLearn
    extends ReactiveStateWidget<AnimatedContainerController> {
  @override
  AnimatedContainerController bindController() => AnimatedContainerController();

  const AnimatedContainerLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'AnimatedContainer',
          trailingRoutes: Routes.flutterAnimation),
      body: Center(
        child: Observer4(
            listenable: controller.height,
            listenable2: controller.width,
            listenable3: controller.borderRadius,
            listenable4: controller.isTap,
            listener: (height, width, radius, tap) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AnimatedRotation(
                    duration: Duration(seconds: 3),
                    turns: tap ? radius.toDouble() : radius.toDouble(),
                    child: AnimatedContainer(
                      height: height.toDouble(),
                      width: width.toDouble(),
                      duration: const Duration(seconds: 3),
                      curve: Curves.fastEaseInToSlowEaseOut,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(radius.toDouble()),
                          color: controller.color),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Text(
                          'Height : ${height.toString()} px',
                          style:
                              TextStyle(fontSize: 30, color: controller.color),
                        ),
                        Text(
                          'Width : ${width.toString()} px',
                          style:
                              TextStyle(fontSize: 30, color: controller.color),
                        ),
                        Text(
                          'BorderRadius : ${radius.toString()} px',
                          style:
                              TextStyle(fontSize: 30, color: controller.color),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         // controller.changeTap();
          controller.height.value = Random().nextInt(400);
          controller.width.value = Random().nextInt(400);
          controller.borderRadius.value = Random().nextInt(100);
          controller.color = Color.fromRGBO(Random().nextInt(256),
              Random().nextInt(256), Random().nextInt(256), 1);
        },
        child: const Icon(
          Icons.play_arrow,
          size: 40,
        ),
      ),
    );
  }
}
