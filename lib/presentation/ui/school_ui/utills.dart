
import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget(
      {Key? key,
        required this.color,
        required this.icon,
        required this.downText})
      : super(key: key);

  final Color color;
  final IconData icon;
  final String downText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: color,
          child: Icon(
            icon,
            color: Colors.white,
            size: 45,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          downText,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

class RecommendedCourseWidget extends StatelessWidget {
  const RecommendedCourseWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 140,
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 4),
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          alignment: Alignment.center,
          image: AssetImage('assets/cartoon.png'),
        ),
      ),
    );
  }
}