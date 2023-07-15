import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practic/reactivePractic/hero_18/hero_learn.dart';

import '../../main.dart';

class StepperLearn extends StatefulWidget {
  const StepperLearn({Key? key}) : super(key: key);

  @override
  State<StepperLearn> createState() => _StepperLearnState();
}

class _StepperLearnState extends State<StepperLearn> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stepper'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HeroLearn()));
                },
                icon: Icon(Icons.arrow_forward)),
          ],
        ),
        body: Center(
          child: Stepper(
            steps: [
              const Step(
                title: Text('Subrata'),
                content: Text('8967332703'),
              ),
              const Step(
                title: Text('Sumanta'),
                content: Text('8967332703'),
              ),
              const Step(
                title: Text('kala'),
                content: Text('8967332703'),
              ),
              const Step(
                title: Text('bisu'),
                content: Text('8967332703'),
              ),
              Step(
                title: Container(
                  height: 20,
                  width: 30,
                  color: Colors.red,
                ),
                content: const Text('8967332703'),
              ),
            ],
            currentStep: currentStep,
            onStepTapped: (int newStep) {
              setState(() {
                currentStep = newStep;
              });
            },
            onStepContinue: () {
              if (currentStep != 4) {
                setState(() {
                  currentStep += 1;
                });
              }
            },
            onStepCancel: () {
              if (currentStep != 0) {
                setState(() {
                  currentStep -= 1;
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
