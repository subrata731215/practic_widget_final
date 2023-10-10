import 'dart:math';

/// Write a Dart program to get the volume of a sphere with radius 6.

void main() {
  print('${sphereVolume(6).toStringAsFixed(2)} qube unit' );
}

double sphereVolume(double radius) {
  double a = 4 / 3 * 22 / 7;
  num b = pow(radius, 3);
  return a * b;
}
