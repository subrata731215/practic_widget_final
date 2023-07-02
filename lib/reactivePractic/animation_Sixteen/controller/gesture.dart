import 'package:flutter/material.dart';

class Gesture extends StatefulWidget {
  const Gesture({Key? key}) : super(key: key);

  @override
  State<Gesture> createState() => _GestureState();
}

class _GestureState extends State<Gesture> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gesture'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Gesture()));
                },
                icon: Icon(Icons.arrow_forward)),
          ],
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              print('ontap');
            },
            onDoubleTap: () {
              print('ondoubletap');
            },
            onLongPress: () {
              print('onlongPress');
            },
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text('Click Me'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
