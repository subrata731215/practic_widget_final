import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practic/widget_practice/animation_16/scaleTransition.dart';

class RotationTransitionAnimation extends StatefulWidget {
  const RotationTransitionAnimation({Key? key}) : super(key: key);

  @override
  State<RotationTransitionAnimation> createState() =>
      _RotationTransitionAnimationState();
}

class _RotationTransitionAnimationState
    extends State<RotationTransitionAnimation> with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 3))
        ..repeat(reverse: true);

  late final Animation<double> _animation =
      CurvedAnimation(parent: _animationController, curve: Curves.easeInToLinear);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotationTransition(
              turns: _animation,
              child: const FlutterLogo(
                size: 90,
              ),
            ),
            RotationTransition(
              turns: _animation,
              child: const Text(
                'RotationTransition',
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ScaleTransitionAnimation()));
        },
        label: const Text('To See ScaleTransition'),
      ),
    );
  }
}
