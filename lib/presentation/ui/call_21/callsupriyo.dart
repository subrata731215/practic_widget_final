import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import '../../../routes/routes.dart';

class CallSupriyo extends StatefulWidget {
  const CallSupriyo({Key? key}) : super(key: key);

  @override
  State<CallSupriyo> createState() => _CallSupriyoState();
}

class _CallSupriyoState extends State<CallSupriyo> {
  bool isTap=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: myAppBarWidget(context,
              appBarTitle: 'call', trailingRoutes: Routes.extraUi),
          backgroundColor: Colors.white10,
          body: Column(
            children: [
              const Expanded(
                flex: 2,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/supriyo.jpg'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Vi India',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Supriyo',
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    SizedBox(height: 10),
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
                  decoration:  BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  child:  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            BuildCircleAvatar(
                              icons: Icons.pause,
                              downText: 'Hold',
                            ),
                            SizedBox(width: 50),
                            BuildCircleAvatar(
                              icons: Icons.video_call,
                              downText: 'Video call',
                            ),
                            SizedBox(width: 55),
                            BuildCircleAvatar(
                              icons: Icons.add_call,
                              downText: 'add call',
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const BuildCircleAvatar(
                              icons: Icons.keyboard,
                              downText: 'Keypad',
                            ),
                            BuildCircleAvatar(
                              ontap: (){
                                setState(() {
                                  isTap=!isTap;
                                });
                              },
                                backgroundColor:isTap?Colors.black:Colors.white ,
                                iconColor: isTap?Colors.white:Colors.black,
                                icons: Icons.mic_off_outlined,
                                downText: 'Mute'),
                            const BuildCircleAvatar(
                                icons: Icons.volume_up, downText: 'Speaker'),
                            const BuildCircleAvatar(
                                icons: Icons.more_vert_outlined,
                                downText: 'More'),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Row(
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
    this.ontap,
    required this.icons,
    required this.downText,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.black,
  });

  final IconData icons;
  final String downText;
  final Color? backgroundColor;
  final Color? iconColor;
  final GestureTapCallback ?ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap:ontap ,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: backgroundColor,
            child: Icon(
              icons,
              size: 30,
              color: iconColor,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          downText,
          style:  TextStyle(color: Colors.grey.shade800),
        ),
      ],
    );
  }
}
