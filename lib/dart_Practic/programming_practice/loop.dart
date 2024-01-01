import 'dart:math';

import 'package:practic/dart_Practic/programming_practice/outside.dart';

/// find sum of n natural numbers.

// void main() {
//   int myNo = 10;
//   int sum = 0;
//   for (var i = 1; i < myNo; i++) {
//     sum = sum + i; /// or  sum+=1;
//   }
//
//   print(sum);
// }

/// find factorial of input number.

// void main() {
//   int myNo = 6;
//   int factorial = 1;
//   for (var i = myNo; i > 0; i--) {
//     factorial = factorial * i;
//   }
//   print(factorial);
// }

/// display all Even numbers from 1 to n.

// void main() {
//   int myNo = 20;
//   for (int i = 1; i <= myNo; i++) {
//     if (i.isEven) {
//       print(i);
//     }
//   }
// }

/// generate multiplication table of an input number.

// void main() {
//   int multiplicationTableNo = 17;
//   int multiplyUpTo = 10;
//
//   for (int i = 1; i <= multiplyUpTo; i++) {
//     int multiply = multiplicationTableNo * i;
//     print('$multiplicationTableNo X $i = $multiply');
//   }
// }

/// generate Fibonacci series: 0 1 1 2 3 5 8 … n

// void main(){
//
// }

/// generate Lucas Series: 2 1 3 4 7 11 18 … n

// void main() {
//   for (int i = 2; i <= 20; i++) {
//     int n1=1;
//     int n2=2;
//     int sum1=n2+i+(i+1);
//     int sum2=n2+sum1;
//     int sum3=sum1+sum2;
//
//     print(sum1);
//   }
// }

/// generate the following series: 1 1 1 3 5 9 … n

/// sequence 1 3 6 10 15 21 … n

// void main() {
//   int no1 = 0;
//   int no2 = 0;
//   int sum = no1 + no2;
//   for (int i = 1; i <= 10; i++) {
//     sum = sum + i;
//     print(sum);
//   }
// }

///  find input number is prime or not.

// void main() {
//   int myNo = 11;
//   String k = '';
//
//   for (int i = 2; i <= myNo - 1; i++) {
//     if (myNo % i == 0) {
//       k = '$myNo is Not Prime No.';
//     } else {
//       k = '$myNo is a Prime No.';
//     }
//   }
//   print(k);
// }

/// Input number is composite or not.

// void main() {
//   int startNo = 4;
//   int lastNo = 10;
//   String k = '';
//
//   for (int i = startNo; i < lastNo - 1; i++) {
//     if (i/(i-1)!=0) {
//       print(i);
//     }
//   }
// }

/// calculate x power y. Eg. xy. Value of x and y is entered by user.

// void main() {
//   int x = 3;
//   int y = 4;
//   num value=pow(x, y);
//   print(value);
// }

///  reverse a number. E.g. Input: 123, Output: 321.

// void main() {
//   print(calculateData('123'));
// }
//
// int calculateData(String myNo) {
//   int totalDigit = myNo.length;
//   int finalMyNo = int.parse(myNo);
//   int k=0;
//
//   for (int i = 1; i <= totalDigit; i++) {
//     int divedNo=i;
//     k=k+1;
//     print(k);
//   }
//   return finalMyNo;
// }

/// calculate LCM of 2 input numbers.

// void main() {
//   int no1 = 20;
//   int no2 = 30;
//   int gcd = findGcd(no1, no2);
//
//   print(gcd);
//   int lcm = (no1 * no2) ~/ gcd;
//   print('Lcm : $lcm');
// }
//
// int findGcd(int a, int b) {
//   int result = 1;
//   if (a < b) {
//     int temp = a;
//     a = b;
//     b = temp;
//   }
//
//   for (int i = 2; i < b; i++) {
//     if (a % i == 0 && b % i == 0) {
//       result = i;
//     }
//   }
//   return result;
// }

///  calculate HCF of 2 input numbers.

// void main() {
//   int a = 100;
//   int b = 2;
//
//   int hcf = hcfCalculate(a, b);
//   int lcm = (a * b) ~/ hcf;
//
//   print('Hcf : $hcf');
//   print('Lcm : $lcm');
// }
//
// int hcfCalculate(int no1, int no2) {
//   int hcf = 1;
//   if (no1 < no2) {
//     int temp = no1;
//     no1 = no2;
//     no2 = temp;
//   }
//
//   for (int i = 1; i < no1; i++) {
//     if (no1 % i == 0 && no2 % i == 0) {
//       hcf = i;
//     }
//   }
//   return hcf;
// }

/// calculate the prime factors of input number. E.g. prime factor of 24 is 2, 2, 2 and 3.

// void main() {
//   int myNo = 24;
//   for (int i = 1; i <= myNo; i++) {
//     if (myNo % i == 0) {
//
//       print(i);
//     }
//   }
// }


void main() {
  String str1='Subrata Ghosh';

  var result=str1.splitMapJoin('').split(' ');
  print(result);

}
