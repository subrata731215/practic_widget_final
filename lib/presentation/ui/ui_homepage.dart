import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practic/presentation/ui/controller.dart';
import 'package:reactiv/reactiv.dart';

class UiHomePage extends ReactiveStateWidget<UiController> {
  @override
  UiController bindController() => UiController();

  const UiHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: controller.uiList.length,
            itemBuilder: (context, index) => Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                      Text(
                        controller.uiList[index].title,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 3),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, controller.uiList[index].routesName);
                        },
                        child: Lottie.asset('assets/lottie/next.json',
                            height: 40, width: 40),
                      ),
                    ],
                  ),
                )),
      ),
    );
  }
}
