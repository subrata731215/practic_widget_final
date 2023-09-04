import 'package:flutter/material.dart';
import 'package:practic/presentation/widget/animation_16/slidetransitionAnimation.dart';

class SizeTransitionAnimation extends StatefulWidget {
  const SizeTransitionAnimation({Key? key}) : super(key: key);

  @override
  State<SizeTransitionAnimation> createState() =>
      _SizeTransitionAnimationState();
}

class _SizeTransitionAnimationState extends State<SizeTransitionAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 3))
        ..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
      parent: _animationController, curve: Curves.fastOutSlowIn);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizeTransition(
            sizeFactor: _animation,
            child: const FlutterLogo(
              size: 180,
            ),
          ),
          SizeTransition(
              sizeFactor: _animation,
              child: const Text(
                'SizeTransition',
                style: TextStyle(fontSize: 50),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SlideTransitionAnimation()));
        },
        label: const Text('To See SlideTransition'),
      ),
    );
  }
}
