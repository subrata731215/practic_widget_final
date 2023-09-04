import 'package:flutter/material.dart';
import 'package:practic/presentation/widget/animation_16/sizetransition.dart';

class ScaleTransitionAnimation extends StatefulWidget {
  const ScaleTransitionAnimation({Key? key}) : super(key: key);

  @override
  State<ScaleTransitionAnimation> createState() =>
      _ScaleTransitionAnimationState();
}

class _ScaleTransitionAnimationState extends State<ScaleTransitionAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 5))
        ..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
      parent: _animationController, curve: Curves.fastOutSlowIn);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _animation,
              child: const FlutterLogo(
                size: 160,
              ),
            ),
            ScaleTransition(
              scale: _animation,
              child: const Text(
                'ScaleTransition',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SizeTransitionAnimation()));
        },
        label: const Text('To See SizeTransition'),
      ),
    );
  }
}
