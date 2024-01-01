import 'package:flutter/material.dart';
import 'package:practic/createdData/my_button.dart';
import 'package:practic/createdData/my_floatling_action_button.dart';
import '../../../createdData/my_appbar_widget.dart';
import '../../../routes/routes.dart';

class ExtraUi extends StatefulWidget {
  const ExtraUi({Key? key}) : super(key: key);

  @override
  State<ExtraUi> createState() => _ExtraUiState();
}

class _ExtraUiState extends State<ExtraUi> {
  bool isPress = true;

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              press();
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  AnimatedAlign(
                    duration: Duration(seconds: 2),
                    alignment: isPress?Alignment.centerLeft:Alignment.centerRight,
                    child: const Text(
                      'Manish Shah\'s',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 25),
                    ),
                  ),
                  AnimatedAlign(
                    duration: Duration(seconds: 2),
                    alignment: isPress?Alignment.centerRight:Alignment.centerLeft,
                    child: Text(
                      'Jai Bhim'.toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 80),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const MyButton(
            size: 190,
            backgroundColor: Colors.black,
            borderColor: Colors.green,
            textColor: Colors.white,
            text: Text(
              'Subrata',
              style: TextStyle(
                  color: Colors.white, letterSpacing: 1, fontSize: 30),
            ),
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

class InsideRow extends StatefulWidget {
  const InsideRow({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  State<InsideRow> createState() => _InsideRowState();
}

class _InsideRowState extends State<InsideRow> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isTap = !isTap;
        });
      },
      child: Row(
        children: [
          Icon(
            widget.icon,
            color: isTap ? Colors.blue : null,
          ),
          const SizedBox(width: 5),
          Text(
            widget.text,
            style: TextStyle(
                fontSize: 16,
                letterSpacing: 1,
                fontWeight: isTap ? FontWeight.w900 : null,
                color: isTap ? Colors.blue : Colors.black),
          ),
        ],
      ),
    );
  }
}
