import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroLearn extends StatefulWidget {
  HeroLearn({Key? key}) : super(key: key);

  @override
  State<HeroLearn> createState() => _HeroLearnState();
}

class _HeroLearnState extends State<HeroLearn> {
  bool isSelected = false;

  Widget wrapImage = Padding(
    padding: EdgeInsets.all(20),
    child: Image.asset(
      'assets/face.jpeg',
      scale: 6,
    ),
  );

  List<Widget> imageList = [
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                            builder: (context) => HeroImageLearn()));
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
                SizedBox(
                  height: 20,
                ),
                ChoiceChip(
                  avatar: Image.asset('assets/face.jpeg'),
                  label: Text('Choice Chip'),
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
                  children: [
                    Image.asset('assets/face.jpeg', scale: 9),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/face.jpeg',
                      scale: 9,
                    ),
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
