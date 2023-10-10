/// Write a Dart program to get the difference between a given number and 17,
/// if the number is greater than 17 return double the absolute difference.

void main(){

  print(difference(50));
}

double difference(double yourNo){
  int givenNo=17;
  double diff=yourNo-givenNo;
  return diff.abs();
}