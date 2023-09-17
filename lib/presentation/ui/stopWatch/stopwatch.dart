import 'dart:async';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/presentation/ui/stopWatch/controller.dart';
import 'package:reactiv/reactiv.dart';

import '../../../routes/routes.dart';

class StopWatchLearn extends StatefulWidget {
  const StopWatchLearn({Key? key}) : super(key: key);

  @override
  State<StopWatchLearn> createState() => _StopWatchLearnState();
}

class _StopWatchLearnState extends State<StopWatchLearn> {
   int seconds = 0;
   int minutes = 0;
   int hours = 0;
   String digitSeconds = '00';
   String digitMinutes = '00';
   String digitHours = '00';

  Timer? _timer;

   bool? started;

  late List laps = [];

  void stop() {
    _timer?.cancel();
    started = false;
  }

  void reset() {
    _timer?.cancel();
    seconds = 0;
    minutes = 0;
    hours = 0;
    digitSeconds = '00';
    digitMinutes = '00';
    digitHours = '00';
    started = false;
  }

  void addLaps() {
    String lap = '$digitHours : $digitMinutes : $digitSeconds';

    laps.add(lap);
  }

  void start() {
    started = true;
    int localSeconds = seconds + 1;
    int localMinutes = seconds;
    int localHours = hours;
    if (localSeconds > 59) {
      if (localMinutes > 59) {
        localHours++;
        localMinutes = 0;
      } else {
        localMinutes++;
        localSeconds = 0;
      }
    }
    seconds = localSeconds;
    minutes = localMinutes;
    hours = localHours;

    digitSeconds = ((seconds >= 10) ? '$seconds' : '0$seconds');
    digitMinutes = ((minutes >= 10) ? '$minutes' : '0$minutes');
    digitHours = ((hours >= 10) ? '$hours' : '0$hours');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff1c2757),
        appBar: appbarWidget(context,
            appBarTitle: 'StopWatch', trailingRoutes: Routes.visvaBharatiUi),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 10),
            Center(
              child: Text(
                '$digitHours : $digitMinutes : $digitSeconds',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 62.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 400,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xff323f68),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.builder(
                  itemCount: laps.length,
                  itemBuilder: (context, index) => Row(
                        children: [
                          Text(
                            'laps no ${index + 1}',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text('${laps[index]}'),
                        ],
                      )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 28.0, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                      },
                      shape: const StadiumBorder().copyWith(
                          side: BorderSide(color: Colors.red, width: 1)),
                      color: Colors.blue,
                      child: Text(
                        'Started',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          addLaps();
                        });
                      },
                      child: Icon(
                        Icons.flag,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          reset();
                        });
                      },
                      shape: StadiumBorder().copyWith(
                          side: BorderSide(color: Colors.red, width: 1)),
                      color: Colors.blue,
                      child: const Text(
                        'Reset',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
