import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:reactiv/reactiv.dart';
import 'homepage.controller.dart';

class MainHomePage extends ReactiveStateWidget<HomepageController> {
  @override
  HomepageController bindController() => HomepageController();

  const MainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple,
        body: GridView.builder(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: controller.contentList.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform(
                      transform: Matrix4.identity()
                        ..rotateZ(20 * 3.1415927 / 180),
                      child: Text(
                        controller.contentList[index].title.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            letterSpacing: 3,
                            color: Colors.greenAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, controller.contentList[index].routes);
                        },
                        child: Lottie.asset('assets/lottie/right-arrow.json',
                            height: 100, width: 100),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
