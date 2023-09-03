import 'package:flutter/material.dart';
import 'package:practic/programming_Language_Learn/extra/agecheck.dart';
import 'package:practic/ui/photoshop_30/photoshop.dart';

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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PhotoShop()));
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
        floatingActionButton: FloatingActionButton(
          // tooltip: 'ageCheck',
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const AgeCheckk()));
          },
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
