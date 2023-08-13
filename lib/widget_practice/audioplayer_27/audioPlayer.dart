import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../homepage.controller.dart';

class AudioPlayerLearn extends StatefulWidget {
  const AudioPlayerLearn({Key? key}) : super(key: key);

  @override
  State<AudioPlayerLearn> createState() => _AudioPlayerLearnState();
}

class _AudioPlayerLearnState extends State<AudioPlayerLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'AudioPlayer', trailingRoutes: Routes.schoolUi),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {});
          },
          child: const Text('play'),
        ),
      ),
    );
  }
}
