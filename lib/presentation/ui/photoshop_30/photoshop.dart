import 'package:flutter/material.dart';
import 'package:practic/constant.dart';

import '../../../routes/routes.dart';

class PhotoShop extends StatelessWidget {
  const PhotoShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'PhotoShop', trailingRoutes: Routes.priceRange),
      body: Stack(
        children: [
          Positioned(
            height: screenHeight / 3,
            width: screenWidth / 1.7,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow.shade600,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.elliptical(500, 500),
                  bottomLeft: Radius.elliptical(200, 400),
                  topLeft: Radius.elliptical(50, 200),
                  topRight: Radius.elliptical(50, 200),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 50,
            left: screenWidth / 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online\nPhotoshop\nClasses'.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  height: 15,
                  width: 60,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Online photoshop classes offer\ninstruction in photo editing,'
                  ' graphic\ndesign and digital art creation.\nLearn basic tools and technique\n '
                  'to master bootcamp.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Positioned(
            top: screenHeight / 15,
            left: screenWidth / 5,
            child: Image.asset(
              'assets/pslogo.png',
              scale: 8,
            ),
          ),
          Positioned(
            top: screenHeight / 4.2,
            left: screenWidth / 14,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(7),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
                child: Text(
                  'Only for Rs. 299/-',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 3.8,
            left: screenWidth / 7,
            child: Image.asset(
              'assets/register.png',
              scale: 4,
            ),
          ),
          Positioned(
            top: screenHeight / 200,
            right: screenWidth / 400,
            child: Column(
              children: [
                Image.asset(
                  'assets/googlemeet.png',
                  scale: 8,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade700,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'o LIVE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                                backgroundColor: Colors.red)),
                        TextSpan(
                            text: '  DEMO CLASSES START\n'
                                'FROM 6 AUGUST 2023.',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontWeight: FontWeight.w900)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: screenHeight / 9.5,
            right: screenWidth / 8,
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.yellow.shade600,
            ),
          ),
          Positioned(
            top: screenHeight / 8.5,
            right: screenWidth / 4,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 6,
            right: screenWidth / 9,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 2.3,
            right: screenWidth / 1.72,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 2.8,
            left: screenWidth / 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: AssetImage('assets/calender.png'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MON - SAT',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '8:00 PM-9:00 PM',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Color(0xff478769)),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Classes start from 11 August',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 10),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+91-8967332703',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'BEGINNER TO MASTER IN JUST 14 DAYS',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 8),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: screenHeight / 2.6,
            right: screenWidth / 1 * 0,
            child: Container(
              height: 120,
              width: 220,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 5.2,
            right: screenWidth / 1 * 0,
            child: CircleAvatar(
                radius: 130,
                backgroundColor: Colors.grey,
                child: Image.asset(
                  'assets/photoshop.png',
                )),
          ),
        ],
      ),
    );
  }
}
