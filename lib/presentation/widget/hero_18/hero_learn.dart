import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import '../../../routes/routes.dart';

class HeroLearn extends StatefulWidget {
  const HeroLearn({Key? key}) : super(key: key);

  @override
  State<HeroLearn> createState() => _HeroLearnState();
}

class _HeroLearnState extends State<HeroLearn> {
  bool isSelected = false;

  List<Widget> imageList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'Hero And Wrap', trailingRoutes: Routes.light),
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
                      child: FlutterLogo(
                        size: 50,
                      )),
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
                direction: Axis.horizontal,
                children: List.generate(
                  50,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/face.jpeg', scale: 9),
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
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: FlutterLogo(
                  size: 300,
                )),
          ),
        ),
      ),
    );
  }
}
