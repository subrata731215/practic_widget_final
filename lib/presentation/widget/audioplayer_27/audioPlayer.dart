import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import '../../../routes/routes.dart';

class AudioPlayerLearn extends StatefulWidget {
  const AudioPlayerLearn({Key? key}) : super(key: key);

  @override
  State<AudioPlayerLearn> createState() => _AudioPlayerLearnState();
}

class _AudioPlayerLearnState extends State<AudioPlayerLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget(context, appBarTitle: 'AudioPlayer', trailingRoutes: Routes.bool),
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
