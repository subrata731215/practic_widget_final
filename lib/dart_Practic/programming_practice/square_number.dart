import 'dart:math';

/// Write a program to print a square of a number using user input.

void main() {
  print('Square no is : ${squareNumber(8)}');
}

num squareNumber(int yourNumber) {
  return pow(yourNumber, 2);
}
