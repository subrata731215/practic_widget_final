import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:practic/reactivePractic/animation_Sixteen/controller/gesture.dart';

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
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));

    animation = Tween<double>(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    muchDelayAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn)));

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
            textTheme: TextTheme(
                button: TextStyle(
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
                title: Text('DelayAnimation'),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Gesture()));
                      },
                      icon: Icon(Icons.arrow_forward)),
                ],
              ),
              body: Align(
                alignment: Alignment.center,
                child: Center(
                  child: Container(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(
                              animation.value * width, 0, 0),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Login',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Transform(
                          transform: Matrix4.translationValues(
                              delayAnimation.value * width, 0, 0),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'UserName',
                                        border: OutlineInputBorder()),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'Password',
                                        border: OutlineInputBorder()),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Transform(
                          transform: Matrix4.translationValues(
                              muchDelayAnimation.value * width, 0, 0),
                          child: Container(
                            child: Column(
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Login',
                                        style: Theme.of(context)
                                            .textTheme
                                            .button)),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('Don\' have any Account'),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'SignUp',
                                      style: Theme.of(context).textTheme.button,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
