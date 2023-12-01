import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import '../../../../routes/routes.dart';
import '../fadetransition.dart';

class FlutterAnimation extends StatefulWidget {
  const FlutterAnimation({Key? key}) : super(key: key);

  @override
  State<FlutterAnimation> createState() => _FlutterAnimationState();
}

class _FlutterAnimationState extends State<FlutterAnimation> {
  double _size = 50.0;
  bool _large = false;
  bool isAnimatedAlign = false;
  bool isAnimatedContainer = false;

  void animatedSize() {
    setState(() {
      _size = _large ? 250 : 100;
      _large = !_large;
    });
  }

  void animatedAlign() {
    setState(() {
      isAnimatedAlign = !isAnimatedAlign;
    });
  }

  void animatedContainer() {
    setState(() {
      isAnimatedContainer = !isAnimatedContainer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget(context, appBarTitle: 'FlutterAnimation', trailingRoutes: Routes.oneTapAnimation),
      body: ListView(
        padding:
            const EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  animatedSize();
                },
                child: ColoredBox(
                  color: Colors.amberAccent,
                  child: AnimatedSize(
                    duration: Duration(seconds: 5),
                    curve: Curves.easeInCubic,
                    child: FlutterLogo(
                      size: _size,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              AnimatedSize(
                curve: Curves.easeInOutBack,
                duration: const Duration(seconds: 3),
                child: Text(
                  'AnimatedSize',
                  style:
                      TextStyle(fontSize: _large ? 10 : 20, color: Colors.red),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  animatedAlign();
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 1.5,
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnimatedAlign(
                      alignment: isAnimatedAlign
                          ? Alignment.topRight
                          : Alignment.bottomLeft,
                      duration: const Duration(seconds: 5),
                      curve: Curves.fastOutSlowIn,
                      child: FlutterLogo(
                        size: _size,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                child: AnimatedSize(
                  curve: Curves.decelerate,
                  duration: const Duration(seconds: 5),
                  child: AnimatedOpacity(
                    duration: Duration(seconds: 3),
                    opacity: isAnimatedAlign ? 0.0 : 1.0,
                    child: Text(
                      'AnimatedAlign',
                      style: TextStyle(
                          fontSize: isAnimatedAlign ? 20 : 40,
                          color: isAnimatedAlign ? Colors.red : Colors.blue),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  animatedContainer();
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 2),
                  // curve: Curves.fastEaseInToSlowEaseOut,
                  height: isAnimatedContainer ? 100 : 200,
                  width: isAnimatedContainer ? 100 : 300,
                  color: Colors.lightGreenAccent,
                  child: Center(
                      child: FlutterLogo(
                    size: isAnimatedContainer ? 50 : 100,
                  )),
                ),
              ),
              Text(
                'AnimatedContainer',
                style: TextStyle(fontSize: isAnimatedContainer ? 20 : 30),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const FadeTransitionAnimation()));
        },
        label: const Text('To See FadeTransition'),
      ),
    );
  }
}
