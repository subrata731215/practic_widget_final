import 'package:flutter/material.dart';
import 'package:practic/createdData/my_button.dart';
import 'package:practic/createdData/my_floatling_action_button.dart';
import 'package:practic/presentation/widget/ageCheck/controller.dart';
import 'package:reactiv/reactiv.dart';
import '../../../createdData/my_appbar_widget.dart';
import '../../../routes/routes.dart';

class ExtraUi extends StatefulWidget {
  const ExtraUi({Key? key}) : super(key: key);

  @override
  State<ExtraUi> createState() => _ExtraUiState();
}

class _ExtraUiState extends State<ExtraUi> {
  bool isPress = false;

  void press() {
    setState(() {
      isPress = !isPress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF7951),
      appBar: myAppBarWidget(context,
          appBarTitle: 'Extra UI', trailingRoutes: Routes.logInUi2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              MyButton(
                size: 90,
                backgroundColor: Colors.black,
                borderColor: Colors.green,
                textColor: Colors.white,
                text: 'Subrata',
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.all(10),
                color: const Color(0xff9EE2B2),
                child: const Text(
                  'M',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: Colors.black45),
                ),
              ),
              Container(
                height: 220,
                width: 210,
                color: const Color(0xff9EE2B2),
                child: Stack(
                  children: [
                    const Positioned(
                      top: 10,
                      left: 14,
                      child: Text(
                        'V',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                            color: Colors.black45),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(40),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Placeholder(
                              fallbackHeight: 20,
                              fallbackWidth: 20,
                              color: Colors.black54,
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  children: [
                                    Placeholder(
                                      fallbackHeight: 25,
                                      fallbackWidth: 25,
                                      color: Colors.black54,
                                    ),
                                    SizedBox(height: 5),
                                    Placeholder(
                                      fallbackHeight: 25,
                                      fallbackWidth: 25,
                                      color: Colors.black54,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black54, width: 2)),
                                    ),
                                    const SizedBox(height: 5),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          10,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black54, width: 2)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Container(
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black54, width: 2)),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.all(10),
                color: const Color(0xff9EE2B2),
                child: const Text(
                  'C',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: Colors.black45),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(25),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InsideRow(icon: Icons.watch_later_outlined, text: 'Recent'),
                InsideRow(icon: Icons.save_outlined, text: 'Saved'),
                InsideRow(icon: Icons.location_on_outlined, text: 'Nearby'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: const MyFloatingActionButton(
        onpRoutName: Routes.extra2,
        toolTip: 'SeeNextUi',
      ),
    );
  }
}

class InsideRow extends ReactiveStateWidget<ExtraController> {
  @override
  ExtraController bindController() => ExtraController();

  const InsideRow({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;
  final bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: isTap ? Colors.blue : null,
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(
              fontSize: 16,
              letterSpacing: 1,
              fontWeight: isTap ? FontWeight.w900 : null,
              color: isTap ? Colors.blue : Colors.black),
        ),
      ],
    );
  }
}
