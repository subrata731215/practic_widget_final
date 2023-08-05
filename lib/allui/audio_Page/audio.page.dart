import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:practic/allui/audio_Page/audio.file.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  late AudioPlayer advancedAudioPlayer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    advancedAudioPlayer = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffdee7fa),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              height: screenHeight / 4,
              child: Container(
                color: const Color(0xff00ace6),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: screenHeight * 0.2,
              height: screenHeight * 0.27,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.1,
                    ),
                    Text(
                      'The Water Cure'.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Martin Hyatt',
                      style: TextStyle(fontSize: 20),
                    ),
                    AudioFile(
                      advancedAudioPlayer: advancedAudioPlayer,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.12,
              left: (screenWidth - 150) / 2,
              right: (screenWidth - 150) / 2,
              height: screenHeight * 0.16,
              child: Container(
                decoration: BoxDecoration(
                     color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2, color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                        image: const DecorationImage(
                            image: AssetImage('assets/joydeb.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
