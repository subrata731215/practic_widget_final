import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerWithText());
}

class ContainerWithText extends StatelessWidget {
  const ContainerWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff181818),
            toolbarHeight: 100,
            title: Container(
              margin: const EdgeInsets.only(right: 36,top: 12,bottom: 12),
              child: Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(28),
                      decoration: const BoxDecoration(
                          color: Color(0xff242424), shape: BoxShape.circle),
                      child: const Center(
                        child: Text(
                          'RM',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffececec),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.15),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          'Rahul dev Mondal',
                          maxLines: 2,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,letterSpacing: 0.1,color: Color(0xFFECECEC)),
                        ),
                        SizedBox(height: 6,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '+02',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF15C671),
                                  letterSpacing: 0.1),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '-02',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFD24141),
                                  letterSpacing: 0.1),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Flexible(
                                child: Text(
                              '-RS 1800',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFD24141),
                                  letterSpacing: 0.1),
                            )),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 48,),
                  const Icon(Icons.keyboard_arrow_down,color: Color(0xff707070),)
                ],
              ),
            ),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                          color: Colors.red,
                          padding: EdgeInsets.all(10),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Subrata Ghosh',
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Flexible(child: Text('09/08/2023')),
                                    Flexible(child: Icon(Icons.add)),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Joydeb',
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    Flexible(child: Icon(Icons.add)),
                                    Flexible(child: Icon(Icons.add)),
                                    Flexible(child: Icon(Icons.add)),
                                    Flexible(child: Icon(Icons.add)),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                    Image.asset(
                      'assets/bisu.jpg',
                      scale: 6,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
