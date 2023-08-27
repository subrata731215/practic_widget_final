import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practic/constant.dart';

import '../homepage.controller.dart';

class ExtraPractice extends StatefulWidget {
  const ExtraPractice({Key? key}) : super(key: key);

  @override
  State<ExtraPractice> createState() => _ExtraPracticeState();
}

class _ExtraPracticeState extends State<ExtraPractice> {
  bool myValue = false;
  String containerText = '';
  double _height = 60;
  double _width = 60;

  bool sizedValue = false;

  void updateSize() {
    setState(() {
      sizedValue = !sizedValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myValue ? Colors.orangeAccent : Colors.white,
      appBar: appbarWidget(context,
          appBarTitle: 'Extra', trailingRoutes: Routes.photoshop),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Change Scaffold\nBackGround Color',
                  textAlign: TextAlign.center,
                ),
                Checkbox(
                  autofocus: true,
                  value: myValue,
                  onChanged: (newValue) {
                    setState(() {
                      myValue = newValue!;
                    });
                  },
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width / 2,
              color: containerText.startsWith('S', 0)
                  ? Colors.blue
                  : Colors.yellow,
              child: Center(child: Text(containerText)),
            ),
            const SizedBox(height: 20),
            TextField(
              onChanged: (newText) {
                setState(() {
                  containerText = newText;
                });
              },
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              decoration: InputDecoration(
                prefixIcon: Lottie.asset(
                  'assets/lottie/call.json',
                  height: 50,
                  width: 50,
                ),
                filled: true,
                fillColor: Colors.black,
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 4),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 5),
                  height: sizedValue ? 160 : _height,
                  width: sizedValue ? 160 : _width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 5),
                  height: sizedValue ? 160 : _height,
                  width: sizedValue ? 160 : _width,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            OutlinedButton(
                onPressed: () {
                  updateSize();
                },
                child: const Text('Change')),
          ],
        ),
      ),
    );
  }
}
