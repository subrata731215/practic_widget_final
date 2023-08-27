import 'package:flutter/material.dart';
import '../gesture_20/gesture.dart';

void main() {
  runApp(const BoolPractice());
}

class BoolPractice extends StatefulWidget {
  const BoolPractice({Key? key}) : super(key: key);

  @override
  State<BoolPractice> createState() => _BoolPracticeState();
}

class _BoolPracticeState extends State<BoolPractice> {
  bool isChecked = false;
  bool downContainer = false;
  String myName = 'Subrata';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bool'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GestureLearn()));
                },
                icon: const Icon(Icons.arrow_forward)),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isChecked == true
                  ? Text(
                      myName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 40),
                    )
                  : const Text('Sumanta'),
              Checkbox(
                  value: isChecked,
                  onChanged: (val) {
                    setState(() {
                      isChecked = val!;
                    });
                  }),
              if (isChecked)
                Container(
                  height: 20,
                  width: 30,
                  color: Colors.red,
                ),
              const SizedBox(height: 30),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      downContainer = !downContainer;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 90,
                    color: downContainer ? Colors.green : Colors.blue,
                    child: const Center(
                      child: Text(
                        'Click',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
