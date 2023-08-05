import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioFile extends StatefulWidget {
  final AudioPlayer advancedAudioPlayer;

  const AudioFile({Key? key, required this.advancedAudioPlayer})
      : super(key: key);

  @override
  State<AudioFile> createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  Duration _duration = Duration();
  Duration _position = Duration();
  final String path = '1.mp3';
  bool isPlaying = false;
  bool isPaused = false;
  bool isLoop = false;
  List<IconData> _icon = [
    Icons.play_circle,
    Icons.pause_circle,



  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
