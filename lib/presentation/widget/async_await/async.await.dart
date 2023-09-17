import 'dart:async';
import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import '../../../routes/routes.dart';

class AsyncAwait extends StatefulWidget {
  const AsyncAwait({Key? key}) : super(key: key);

  @override
  State<AsyncAwait> createState() => _AsyncAwaitState();
}

class _AsyncAwaitState extends State<AsyncAwait> {
  String name = 'Kala';
  bool isTap = true;
  int minute = 15;
  Timer? _timer;
  int sec = 10;
  final DateTime time = DateTime.now();

  // void minuteStart() {
  //   _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
  //     if (sec == 0 && minute > 0) {
  //       setState(() {
  //         minute--;
  //       });
  //     }
  //   });
  // }

  void timerStart() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (sec > 0) {
        setState(() {
          sec--;
        });
      }
    });
  }

  void changeName() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      isTap = !isTap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'Async Await, Timer And DateTime',
          trailingRoutes: Routes.audioPlayer),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              isTap ? 'Subrata' : name,
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                changeName();
              },
              child: const Text(
                'Change Name',
                style: TextStyle(color: Colors.blue, fontSize: 50),
              ),
            ),
            Text(
              ' $sec',
              style: const TextStyle(fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      timerStart();
                      // minuteStart();
                    },
                    child: const Text(
                      'StartTimer',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      _timer?.cancel();
                    },
                    child: const Text(
                      'Pause',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _timer?.cancel();
                        sec = 10;
                      });
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )),
              ],
            ),
            Text('${time.hour}  :  ${time.minute}  :  ${time.second}')
          ],
        ),
      ),
    );
  }
}
