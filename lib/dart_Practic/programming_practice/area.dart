import 'dart:math';

/// Write a Dart program which accepts the radius of a circle from the user and compute the area.


void main(){
  double myArea=area(7.5);

  print('Your Area is : ${myArea.toStringAsFixed(2)} sq unit');
}

double area(double radius){
  double pi=22/7;
  return pi*pow(radius, 2);
}