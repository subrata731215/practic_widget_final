import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../routes/routes.dart';

class ExtraUi extends StatefulWidget {
  const ExtraUi({Key? key}) : super(key: key);

  @override
  State<ExtraUi> createState() => _ExtraUiState();
}

class _ExtraUiState extends State<ExtraUi> {
  bool tap = false;

  void ontap() {
    setState(() {
      tap = !tap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF7951),
      appBar: appbarWidget(context,
          appBarTitle: 'Extra UI', trailingRoutes: Routes.logInUi2),
      body: Center(
        child: Row(
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
      ),
    );
  }
}
