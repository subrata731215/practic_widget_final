import 'dart:async';
import 'package:reactiv/reactiv.dart';

class StopWatchController extends ReactiveController {
  ReactiveInt seconds = ReactiveInt(0);
  ReactiveInt minutes = ReactiveInt(0);
  ReactiveInt hours = ReactiveInt(0);

  ReactiveString digitSeconds = ReactiveString('00');
  ReactiveString digitMinutes = ReactiveString('00');
  ReactiveString digitHours = ReactiveString('00');

  Timer? _timer;
  ReactiveBool started = ReactiveBool(false);
  List laps = [];

  void stop() {
    _timer?.cancel();
    started.value = false;
  }

  void reset() {
    _timer?.cancel();
    seconds.value = 0;
    minutes.value = 0;
    hours.value = 0;
    digitSeconds.value = '00';
    digitMinutes.value = '00';
    digitHours.value = '00';
    started.value = false;
  }

  void addLaps() {
    String lap = '$digitHours : $digitMinutes : $digitSeconds';

    laps.add(lap);
  }

  void start() {
    started.value = true;
    int localSeconds = seconds.value + 1;
    int localMinutes = seconds.value;
    int localHours = hours.value;
    if (localSeconds > 59) {
      if (localMinutes > 59) {
        localHours++;
        localMinutes = 0;
      } else {
        localMinutes++;
        localSeconds = 0;
      }
    }
    seconds.value = localSeconds;
    minutes.value = localMinutes;
    hours.value = localHours;

    digitSeconds =((seconds.value>=10)?'${seconds.value}':'0${seconds.value}') as ReactiveString;
    digitMinutes =((minutes.value>=10)?'${minutes.value}':'0${minutes.value}') as ReactiveString;
    digitHours =((hours.value>=10)?'${hours.value}':'0${hours.value}') as ReactiveString;
  }
}
