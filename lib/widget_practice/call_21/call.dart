import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white10,
          body: Column(
            children: [
              const Expanded(
                flex: 2,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/supriyo.jpg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Vi India',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Supriyo',
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Call ended',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            BuildCircleAvatar(
                              icons: Icons.pause,
                              downText: 'Hold',
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            BuildCircleAvatar(
                              icons: Icons.video_call,
                              downText: 'Video call',
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            BuildCircleAvatar(
                              icons: Icons.add_call,
                              downText: 'add call',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BuildCircleAvatar(
                              icons: Icons.keyboard,
                              downText: 'Keypad',
                            ),
                            BuildCircleAvatar(
                                icons: Icons.mic_off_outlined,
                                downText: 'Mute'),
                            BuildCircleAvatar(
                                icons: Icons.volume_up, downText: 'Speaker'),
                            BuildCircleAvatar(
                                icons: Icons.more_vert_outlined,
                                downText: 'More'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.call_end_outlined,
                                color: Colors.black,
                                size: 30,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildCircleAvatar extends StatelessWidget {
  const BuildCircleAvatar({
    super.key,
    required this.icons,
    required this.downText,
  });

  final IconData icons;
  final String downText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.black,
          child: Icon(
            icons,
            size: 30,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          downText,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
