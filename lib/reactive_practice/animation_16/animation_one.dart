import 'package:flutter/material.dart';
import 'delayanimation.dart';

class AnimationLearn extends StatefulWidget {
  const AnimationLearn({Key? key}) : super(key: key);

  @override
  State<AnimationLearn> createState() => _AnimationLearnState();
}

class _AnimationLearnState extends State<AnimationLearn>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = Tween<double>(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
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
                title: const Text('Animation'),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DelayAnimationLearn()));
                      },
                      icon: const Icon(Icons.arrow_forward)),
                ],
              ),
              body: Transform(
                transform:
                    Matrix4.translationValues(animation.value * width, 0, 0),
                child: Center(
                  child: SizedBox(
                    width: 320,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
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
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text('Login',
                                style: Theme.of(context).textTheme.labelLarge)),
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
                ),
              ),
            );
          },
        ));
  }
}
