import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.icon,
  });

  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: 1),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 30),
        filled: true,
        fillColor: const Color(0xffA6B4EA),
        hintText: hintText,
        prefixIcon: Icon(
          icon,
          color: Colors.black,
          size: 30,
        ),
        hintStyle: const TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), gapPadding: 4),
      ),
    );
  }
}
