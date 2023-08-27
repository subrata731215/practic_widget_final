import 'package:flutter/material.dart';
import 'package:practic/widget_practice/animation_16/flutter_animation.dart';
import '../stepper_learn_17/stepper.learn.dart';

class DelayAnimationLearn extends StatefulWidget {
  const DelayAnimationLearn({Key? key}) : super(key: key);

  @override
  State<DelayAnimationLearn> createState() => _DelayAnimationLearnState();
}

class _DelayAnimationLearnState extends State<DelayAnimationLearn>
    with SingleTickerProviderStateMixin {
  late Animation animation, delayAnimation, muchDelayAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));

    animation = Tween<double>(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    muchDelayAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.8, 1.0, curve: Curves.fastOutSlowIn)));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return MaterialApp(
        theme: ThemeData(
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.deepPurple)),
            ),
            textTheme: const TextTheme(
                labelLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ))),
        home: AnimatedBuilder(
          animation: animationController,
          builder: (BuildContext context, Widget? child) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                title: const Text('DelayAnimation'),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FlutterAnimation()));
                      },
                      icon: const Icon(Icons.arrow_forward)),
                ],
              ),
              body: Align(
                alignment: Alignment.center,
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Transform(
                        transform: Matrix4.translationValues(
                            animation.value * width, 0, 0),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Transform(
                        transform: Matrix4.translationValues(
                            delayAnimation.value * width, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: 'UserName',
                                      border: OutlineInputBorder()),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: 'Password',
                                      border: OutlineInputBorder()),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Transform(
                        transform: Matrix4.translationValues(
                            muchDelayAnimation.value * width, 0, 0),
                        child: Column(
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text('Login',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge)),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text('Don\' have any Account'),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'SignUp',
                                  style: Theme.of(context).textTheme.labelLarge,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
