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
  final double _height = 60;
  final double _width = 60;

  bool sizedValue = false;
  bool opacityChange = false;
  bool textFieldOntap = false;

  void updateSize() {
    setState(() {
      sizedValue = !sizedValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            // TextField(
            //   style: const TextStyle(fontSize: 30),
            //   onTap: () {
            //     setState(() {
            //       textFieldOntap = !textFieldOntap;
            //     });
            //   },
            //   decoration: InputDecoration(
            //       prefixIcon: AnimatedCrossFade(
            //         firstChild: const Icon(Icons.arrow_back),
            //         secondChild: const Icon(Icons.search, size: 40),
            //         crossFadeState: te,
            //         duration: Duration(milliseconds: 500),
            //       ),
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(15))),
            // ),
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
            AnimatedOpacity(
              duration: const Duration(seconds: 3),
              opacity: sizedValue ? 1.0 : 0.3,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 80,
                width: 90,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Color Opacity Change',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  opacityChange = !opacityChange;
                });
              },
              child: AnimatedOpacity(
                opacity: opacityChange ? 1.0 : 0.1,
                duration: Duration(seconds: 4),
                child: Text(
                  'Color Animation',
                  style: TextStyle(
                      color: opacityChange ? Colors.black : Colors.orange,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
