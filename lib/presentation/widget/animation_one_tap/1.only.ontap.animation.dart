import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import '../../../routes/routes.dart';

class OneTapAnimation extends StatefulWidget {
  const OneTapAnimation({Key? key}) : super(key: key);

  @override
  State<OneTapAnimation> createState() => _OneTapAnimationState();
}

bool selectedAnimationRotation = false;
bool selectedAnimatedOpacity = false;
bool selectedAnimatedCrossFade = false;
bool selectedAnimatedContainer = false;
bool selectedAnimationSize = false;
bool selectedAnimatedAlign = false;
bool selectedDefaultTextStyle = false;

class _OneTapAnimationState extends State<OneTapAnimation> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: appbarWidget(context, appBarTitle: 'OneTap Animation', trailingRoutes: Routes.audioPlayer),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          children: [
            ListTile(
              leading: AnimatedRotation(
                duration: const Duration(milliseconds: 500),
                turns: selectedAnimationRotation ? -0.052 : 0.0,
                // turns: selectedAnimationRotation ? 0.032 : 0.0,
                child: const FlutterLogo(
                  size: 50,
                ),
              ),
              title: const Text('AnimatedRotation'),
              trailing: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      selectedAnimationRotation = !selectedAnimationRotation;
                    });
                  },
                  child: const Text('Tap And See')),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: selectedAnimatedOpacity ? 1 : 0.1,
                child: const FlutterLogo(
                  size: 50,
                ),
              ),
              title: const Text('AnimatedOpacity'),
              trailing: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      selectedAnimatedOpacity = !selectedAnimatedOpacity;
                    });
                  },
                  child: const Text('Tap And See')),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: AnimatedCrossFade(
                duration: const Duration(milliseconds: 1000),
                firstChild: const FlutterLogo(
                  size: 50,
                ),
                secondChild: const Icon(
                  Icons.accessibility,
                  size: 50,
                ),
                crossFadeState: selectedAnimatedCrossFade
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              title: const Text('AnimatedCrossFade'),
              trailing: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      selectedAnimatedCrossFade = !selectedAnimatedCrossFade;
                    });
                  },
                  child: const Text('Tap And See')),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: AnimatedContainer(
                padding: const EdgeInsets.all(2),
                duration: const Duration(milliseconds: 500),
                height: selectedAnimatedContainer ? 30 : 70,
                width: selectedAnimatedContainer ? 70 : 30,
                decoration: BoxDecoration(
                    color:
                        selectedAnimatedContainer ? Colors.black : Colors.red,
                    borderRadius: selectedAnimatedContainer
                        ? BorderRadius.zero
                        : BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    'Subrata',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: selectedAnimatedContainer
                            ? Colors.red
                            : Colors.black),
                  ),
                ),
              ),
              title: const Text('AnimatedContainer'),
              trailing: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      selectedAnimatedContainer = !selectedAnimatedContainer;
                    });
                  },
                  child: const Text('Tap And See')),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: AnimatedSize(
                duration: const Duration(milliseconds: 500),
                child: FlutterLogo(
                  size: selectedAnimationSize ? 50 : 20,
                ),
              ),
              title: const Text('AnimatedSize'),
              trailing: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      selectedAnimationSize = !selectedAnimationSize;
                    });
                  },
                  child: const Text('Tap And See')),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: Container(
                height: 400,
                width: 100,
                color: Colors.orange,
                child: AnimatedAlign(
                  duration: const Duration(seconds: 2),
                  alignment: selectedAnimatedAlign
                      ? Alignment.topRight
                      : Alignment.bottomLeft,
                  child: const Icon(
                    Icons.accessibility,
                    size: 20,
                  ),
                ),
              ),
              title: const Text('AnimatedAlign'),
              trailing: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      selectedAnimatedAlign = !selectedAnimatedAlign;
                    });
                  },
                  child: const Text('Tap And See')),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: AnimatedDefaultTextStyle(
                duration: const Duration(seconds: 2),
                style: TextStyle(
                    color: selectedDefaultTextStyle ? Colors.red : Colors.black,
                    fontSize: selectedDefaultTextStyle ? 25 : 10,
                    fontWeight: FontWeight.w900),
                child: const Text('Subrata'),
              ),
              title: const Text('AnimatedDefault\nTextStyle'),
              trailing: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      selectedDefaultTextStyle = !selectedDefaultTextStyle;
                    });
                  },
                  child: const Text('Tap And See')),
            ),
          ],

      ),
    );
  }
}
