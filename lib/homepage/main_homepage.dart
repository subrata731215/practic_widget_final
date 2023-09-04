import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage.controller.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: const EdgeInsets.only(top: 30, left: 10),
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'See Ui',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 24,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.uiHomePage);
                    },
                    child: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
