import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:reactiv/reactiv.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../homepage/homepage.controller.dart';
import 'controller/controller.dart';

class SharePreferencesLearn extends ReactiveStateWidget<ShareController> {
  @override
  ShareController bindController() => ShareController();

  const SharePreferencesLearn({Key? key}) : super(key: key);

  @override
  void initState() {
    super.initState();
    controller.getValue();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'Share Preference', trailingRoutes: Routes.slider),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                controller.name.value = value;
              },
              decoration: const InputDecoration(
                hintText: 'Write Your Name',
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  var prefs = await SharedPreferences.getInstance();
                  prefs.setString(
                      controller.keyName.value, controller.name.value);
                },
                child: const Text('Add')),
            const SizedBox(
              height: 80,
            ),
            Observer(
                listenable: controller.name,
                listener: (value) {
                  return Text(controller.name.value);
                }),
          ],
        ),
      ),
    ));
  }
}
