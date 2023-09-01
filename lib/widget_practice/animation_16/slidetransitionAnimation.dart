import 'package:flutter/material.dart';
import 'package:practic/widget_practice/animation_16/animatedRotation.dart';

class SlideTransitionAnimation extends StatefulWidget {
  const SlideTransitionAnimation({Key? key}) : super(key: key);

  @override
  State<SlideTransitionAnimation> createState() =>
      _SlideTransitionAnimationState();
}

class _SlideTransitionAnimationState extends State<SlideTransitionAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 4))
        ..repeat(reverse: true);

  late final Animation<Offset> _animation =
      Tween<Offset>(begin: Offset.zero, end: const Offset(1.5, 2.0)).animate(
          CurvedAnimation(
              parent: _animationController, curve: Curves.elasticIn));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SlideTransition(
                  position: _animation,
                  child: const FlutterLogo(
                    size: 160,
                  ),
                ),
                SlideTransition(
                    position: _animation,
                    child: const Text(
                      'SlideTransition',
                      style: TextStyle(fontSize: 30),
                    )),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AnimatedRotationAnimation()));
        },
        label: Text('To See AnimatedRotation'),
      ),
    );
  }
}
