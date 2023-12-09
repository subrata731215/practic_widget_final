import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({Key? key, this.onpRoutName, this.toolTip})
      : super(key: key);

  final String? onpRoutName;
  final String? toolTip;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, onpRoutName!);
      },
      tooltip: toolTip,
      child: const Icon(
        Icons.arrow_forward,
        size: 30,
      ),
    );
  }
}
