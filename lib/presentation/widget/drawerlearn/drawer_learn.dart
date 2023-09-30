import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';

import '../../../constant.dart';
import '../../../routes/routes.dart';
import 'controller.dart';

class DrawerLearn extends ReactiveStateWidget<DrawerLearnController> {
  @override
  DrawerLearnController bindController() => DrawerLearnController();

  const DrawerLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'DrawerHeader', trailingRoutes: Routes.dropDownButton),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.deepPurple,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.purple, borderRadius: BorderRadius.circular(20)),
            child: ListView(
              children: [
                DrawerHeader(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/joydeb.jpg'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Joydeb Singha',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 1.5,
                                  fontSize: 15),
                            ),
                            SizedBox(height: 05),
                            Text(
                              'ijoydebsingha@gmail.com',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.5,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ...List.generate(
                  controller.drawerList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(controller.drawerList[index].icon,
                                color: Colors.lightGreen, size: 30),
                            const SizedBox(width: 30),
                            Text(controller.drawerList[index].text,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 7),
                const Text(
                  'App Version 2.3.1',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text('Swipe left side',style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
