import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import '../../../routes/routes.dart';

class SliderLearn extends StatefulWidget {
  const SliderLearn({Key? key}) : super(key: key);

  @override
  State<SliderLearn> createState() => _SliderLearnState();
}

class _SliderLearnState extends State<SliderLearn> {
  double sliderValue = 120;

  double slid() {
    double result = sliderValue * 3;
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:
            myAppBarWidget(context, appBarTitle: 'Slider', trailingRoutes: Routes.stepper),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              sliderValue.round().toString(),
              style: const TextStyle(fontSize: 60),
            ),
            Slider(
                min: 100,
                max: 200,
                value: sliderValue,
                onChanged: (onChanged) {
                  setState(() {
                    sliderValue = onChanged;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
