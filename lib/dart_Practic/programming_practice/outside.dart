import 'dart:math';

/// 1. Write some code to determine whether a number is an Armstrong number.

// void main() {
//   subrata('36789');
// }
//
// void subrata(String no) {
//   for (var i = 0; i < no.length; i++) {
//     var l = int.parse(no.split('')[i]);
//     var k = pow(l, 3);
//     print(k);
//   }
// }

/// Write an interactive program to do the following operations by providing the choice using the switch statement:
/// 1 - Add two numbers
/// 2 - Subtract two numbers
/// 3 - Multiply two numbers
/// 4 - Divide two numbers
/// 5 - Exit

void main() {
  Calculate cal=Calculate();
  cal.calculate(3);
}

class Calculate {
  int no1 = 30;
  int no2 = 2;

  calculate(i) {
    switch (i) {
      case 1:
        print(no1 + no2);
        break;
      case 2:
        print(no1 - no2);
        break;
      case 3:
        print(no1 * no2);
        break;
      case 4:
        print(no1 / no2);
        break;
    }
  }
}
