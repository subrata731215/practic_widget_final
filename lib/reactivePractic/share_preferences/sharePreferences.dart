import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';
import 'controller/controller.dart';

class SharePreferencesLearn extends ReactiveStateWidget<ShareController> {
  @override
  ShareController bindController() => ShareController();

   SharePreferencesLearn({Key? key}) : super(key: key);
@override
  void initState() {
  super.initState();
  controller.getValue();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Share Preference'),
            centerTitle: true,
            automaticallyImplyLeading: true,
            actions: [IconButton(onPressed: (){
              Navigator.pushNamed(context, Routes.animation);
            }, icon: Icon(Icons.arrow_forward))],
          ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value){
                controller.name.value=value;
              },

              decoration: InputDecoration(
                hintText: 'Write Your Name',
                enabledBorder: OutlineInputBorder(

                ),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () async{

              var prefs= await SharedPreferences.getInstance();
             prefs.setString(controller.KEYNAME.value, controller.name.value);



            }, child: Text('Add')),

            SizedBox(
              height: 80,
            ),
            Observer(listenable: controller.name,
              listener: (value) {
                return Text(controller.name.value);
              }
            ),
          ],
        ),
      ),
    ));
  }
}
