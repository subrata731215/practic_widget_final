import 'package:flutter/cupertino.dart';

class MyButton extends StatelessWidget {
  final double size;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final Widget text;
  final IconData? icon;
  final bool? isIcon;

  const MyButton(
      {Key? key,
      required this.size,
      required this.backgroundColor,
      required this.borderColor,
      required this.textColor,
      required this.text,
      this.icon,
      this.isIcon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
            color: borderColor,
            width: 2,
            strokeAlign: BorderSide.strokeAlignInside),
      ),
      child: Center(
        child: RotatedBox(
          quarterTurns: 3,
          child: text,
        ),
      ),
    );
  }
}
