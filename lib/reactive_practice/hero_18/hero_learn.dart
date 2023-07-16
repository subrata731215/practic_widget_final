import 'package:flutter/material.dart';
import 'package:practic/main.dart';

class HeroLearn extends StatefulWidget {
  const HeroLearn({Key? key}) : super(key: key);

  @override
  State<HeroLearn> createState() => _HeroLearnState();
}

class _HeroLearnState extends State<HeroLearn> {
  bool isSelected = false;

  Widget wrapImage = Padding(
    padding: const EdgeInsets.all(20),
    child: Image.asset(
      'assets/face.jpeg',
      scale: 6,
    ),
  );

  List<Widget> imageList = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hero And Wrap'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.bool);
              },
              icon: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HeroImageLearn()));
                  },
                  child: ClipRRect(
                    child: Hero(
                      tag: 'tag',
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/face.jpeg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ChoiceChip(
                  avatar: Image.asset('assets/face.jpeg'),
                  label: const Text('Choice Chip'),
                  selected: isSelected,
                  onSelected: (value) {
                    setState(() {
                      isSelected = value;
                    });
                  },
                  selectedColor: Colors.green,
                ),
                Expanded(
                    child: Wrap(
                  direction: Axis.vertical,
                  children: [
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                    const SizedBox(width: 10),
                    Image.asset('assets/face.jpeg', scale: 9),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeroImageLearn extends StatelessWidget {
  const HeroImageLearn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Hero(
            tag: 'tag',
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/face.jpeg'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
