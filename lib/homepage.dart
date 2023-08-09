import 'package:flutter/material.dart';
import 'package:practic/homepage.controller.dart';
import 'package:reactiv/reactiv.dart';

class HomePage extends ReactiveStateWidget<HomepageController> {
  @override
  HomepageController bindController() => HomepageController();

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text('Practice'),
      ),
      body: ListView.builder(
          //reverse: true,
          itemCount: controller.widgetList.length,
          itemBuilder: (context, index) {
            int reverseIndex = controller.widgetList.length - 1 - index;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context, controller.widgetList[reverseIndex].routes);
                },
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Text(
                          (reverseIndex + 1).toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      controller.widgetList[reverseIndex].title,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
