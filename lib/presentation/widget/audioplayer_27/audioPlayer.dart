import 'package:flutter/material.dart';
import 'package:practic/presentation/widget/boolpractice_19/bool_practice.dart';

class AudioPlayerLearn extends StatefulWidget {
  const AudioPlayerLearn({Key? key}) : super(key: key);

  @override
  State<AudioPlayerLearn> createState() => _AudioPlayerLearnState();
}

class _AudioPlayerLearnState extends State<AudioPlayerLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AudioPlayer'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BoolPractice()));
              },
              icon: const Icon(Icons.arrow_forward))
        ],
      ),
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
