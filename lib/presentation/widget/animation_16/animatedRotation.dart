import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NewAnimation.dart';

class AnimatedRotationAnimation extends StatefulWidget {
  const AnimatedRotationAnimation({Key? key}) : super(key: key);

  @override
  State<AnimatedRotationAnimation> createState() =>
      _AnimatedRotationAnimationState();
}

bool selected = false;

class _AnimatedRotationAnimationState extends State<AnimatedRotationAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedRotation(
              turns: selected ? -0.03 : 0.0,
              duration: Duration(milliseconds: 500),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: const FlutterLogo(
                      size: 180,
                    ),
                  ),
                  const Text('AnimatedRotation'),
                ],
              ),
            ),
            AnimatedRotation(
              curve: Curves.fastEaseInToSlowEaseOut,
              turns: selected ? 0.03 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: const FlutterLogo(
                      size: 180,
                    ),
                  ),
                  const Text('AnimatedRotation'),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewAnimation()));
        },
        label: const Text('To see '),
      ),
    );
  }
}
