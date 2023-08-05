import 'package:flutter/material.dart';

import '../../allui/ui3/call_21/call.dart';


class GestureLearn extends StatefulWidget {
  const GestureLearn({Key? key}) : super(key: key);

  @override
  State<GestureLearn> createState() => _GestureLearnState();
}

class _GestureLearnState extends State<GestureLearn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gesture'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Call()));
                },
                icon: const Icon(Icons.arrow_forward)),
          ],
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {},
            onDoubleTap: () {},
            onLongPress: () {},
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Text('Click Me'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
