import 'package:flutter/material.dart';
import '../../../routes/routes.dart';

class NewAnimation extends StatefulWidget {
  const NewAnimation({Key? key}) : super(key: key);

  @override
  State<NewAnimation> createState() => _NewAnimationState();
}

class _NewAnimationState extends State<NewAnimation> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            height: selected ? 50 : 100,
            width: selected ? 50 : 100,
            decoration: selected
                ? BoxDecoration(
                    color: selected ? Colors.red : Colors.blue,
                    border: Border.all(color: Colors.black, width: 3))
                : BoxDecoration(
                    color: selected ? Colors.red : Colors.blue,
                    borderRadius: BorderRadius.circular(59)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.flutterAnimation);
        },
        child: Icon(Icons.home),
      ),
    );
  }
}
