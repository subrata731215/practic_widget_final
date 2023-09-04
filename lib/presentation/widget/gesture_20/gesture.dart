import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import '../../../routes/routes.dart';

class GestureLearn extends StatefulWidget {
  const GestureLearn({Key? key}) : super(key: key);

  @override
  State<GestureLearn> createState() => _GestureLearnState();
}

class _GestureLearnState extends State<GestureLearn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbarWidget(context, appBarTitle: 'Gesture', trailingRoutes: Routes.hero),
        body: Center(
          child: GestureDetector(
            onTap: () {},
            onDoubleTap: () {},
            onLongPress: () {},
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Text('Click Me'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
