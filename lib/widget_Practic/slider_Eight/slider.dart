import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';


class SliderLearn extends StatefulWidget {
  const SliderLearn({Key? key}) : super(key: key);

  @override
  State<SliderLearn> createState() => _SliderLearnState();
}

class _SliderLearnState extends State<SliderLearn> {
  double slidervalu = 120;
  double slid(){
    double result= slidervalu*3;
    return result;

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Slider'),
          centerTitle: true,
          automaticallyImplyLeading: true,
          actions: [IconButton(onPressed: (){
            Navigator.pushNamed(context, Routes.addTwoNumber);
          }, icon: Icon(Icons.arrow_forward))],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              slidervalu.round().toString(),
              style: TextStyle(fontSize: 60),
            ),
            Slider(
                min: 100,
                max: 200,
                value: slidervalu,
                onChanged: (onchanged) {
                  //print(slidervalu.round());
                  setState(() {
                    slidervalu = onchanged;
                  });
                }),
          ],
        ),
      ),
    );
  }
}

