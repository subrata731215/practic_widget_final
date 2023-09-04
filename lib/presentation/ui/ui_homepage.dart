import 'package:flutter/material.dart';
import 'package:practic/presentation/ui/controller.dart';
import 'package:reactiv/reactiv.dart';


class UiHomePage extends ReactiveStateWidget<UiController> {
  @override
  UiController bindController() => UiController();

  const UiHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: controller.uiList.length,
          itemBuilder: (context, index) => Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: const EdgeInsets.all(10),
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      controller.uiList[index].title,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 3),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, controller.uiList[index].routesName);
                      },
                      icon: const Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              )),
    );
  }
}
