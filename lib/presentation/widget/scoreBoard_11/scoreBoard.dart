import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import 'package:reactiv/reactiv.dart';
import '../../../routes/routes.dart';
import 'controller/controller.dart';

class ScoreBoardLearn extends ReactiveStateWidget<ScoreController> {
  @override
  ScoreController bindController() => ScoreController();

  const ScoreBoardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: myAppBarWidget(context,
              appBarTitle: 'Cricket Score', trailingRoutes: Routes.searchBoxAnimation),
          body: Center(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Observer(
                            listenable: controller.presentScore,
                            listener: (context) {
                              return Text(
                                'Present Score :  ${controller.presentScore.value}',
                                style: const TextStyle(fontSize: 20),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Observer(
                            listenable: controller.presentScore,
                            listener: (context) {
                              return Text(
                                'Total Score :  ${controller.totalScore()}',
                                style: const TextStyle(fontSize: 3),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 320,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      controller.presentScore.value = value;
                    },
                    decoration: const InputDecoration(
                        labelText: 'Input Present Score',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder()),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
