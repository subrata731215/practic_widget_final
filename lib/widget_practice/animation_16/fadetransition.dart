import 'package:flutter/material.dart';
import 'package:practic/widget_practice/animation_16/rotationtransition.dart';

class FadeTransitionAnimation extends StatefulWidget {
  const FadeTransitionAnimation({Key? key}) : super(key: key);

  @override
  State<FadeTransitionAnimation> createState() =>
      _FadeTransitionAnimationState();
}

class _FadeTransitionAnimationState extends State<FadeTransitionAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 200),
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _animationController,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _animation,
              child: const FlutterLogo(
                size: 150,
              ),
            ),
            FadeTransition(
              opacity: _animation,
              child: const Text(
                'FadeTransition',
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
                  builder: (context) => const RotationTransitionAnimation()));
        },
        label: const Text('To See RotationTransition'),
      ),
    );
  }
}
