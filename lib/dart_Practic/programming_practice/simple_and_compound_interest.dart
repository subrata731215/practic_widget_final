import 'dart:math';

/// Write a program in Dart that finds simple interest

void main() {
  print(MyInterest(p: 600).compoundInterest());
}

class MyInterest {
  final double p;
  final int r;
  final int t;

  MyInterest({required this.p, this.r = 20, this.t = 2});

  double simpleInterest() {
    return p * r * t / 100;
  }

  num compoundInterest() {
    num a = p * (pow(1 + r / 100, 2));
    return a - p;
  }
}
