import 'package:flutter/material.dart';
import 'package:practic/presentation/widget/controller.dart';
import 'package:reactiv/reactiv.dart';

class WidgetHomePage extends ReactiveStateWidget<WidgetController> {
  @override
  WidgetController bindController() => WidgetController();

  const WidgetHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: controller.newWidgetList.length,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${index + 1} )',
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Text(
                        controller.newWidgetList[index].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 3),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context,
                          controller.newWidgetList[index].routesName);
                    },
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
