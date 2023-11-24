import 'dart:math';

/// 1. Write some code to determine whether a number is an Armstrong number.

void main() {
  subrata('36789');
}

void subrata(String no) {
  for (var i = 0; i < no.length; i++) {
    var l = int.parse(no.split('')[i]);
    var k = pow(l, 3);
    print(k);
  }
}
