import 'package:flutter/material.dart';
import '../gesture_20/gesture.dart';

class ExtraPractice extends StatelessWidget {
  const ExtraPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ExtraPractice'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GestureLearn()));
                },
                icon: const Icon(Icons.arrow_forward))
          ],
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.yellow,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subrata'),
                Text('xyz'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
