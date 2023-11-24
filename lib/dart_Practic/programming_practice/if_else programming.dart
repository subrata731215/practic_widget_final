/// . Input year and find it is leap year or not.

// void main() {
//   print(calculate(24));
// }
//
// calculate(int inputYears) {
//   if (inputYears % 4 == 0 && inputYears % 400 == 0 || inputYears % 100 != 0) {
//     print('$inputYears is a Leap Year');
//   } else {
//     print('$inputYears is not a Leap Year');
//   }
// }
/// Input 2 numbers and find greater.

// void main() {
//   int no1 = 10;
//   int no2 = 20;
//   if (no1 > no2) {
//     print('$no1 is Greater Than $no2');
//   } else {
//     print('$no2 is Greater Than $no1');
//   }
// }
/// Input user age and find it is eligible for vote or not
// void main() {
//   calculate(10);
// }
//
// void calculate(int inputAge) {
//   if (inputAge >= 18) {
//     print(inputAge == 18
//         ? 'Your age is equal to 18, so you are eligible for vote.'
//         : 'Your age is Greater than 18, so you are eligible for vote.');
//   } else {
//     print('your age is lower than 18, so you are not eligible for vote.');
//   }
// }

/// Input 3 numbers and find the largest number.

// void main() {
//   int no1 = 80;
//   int no2 = 120;
//   int no3 = 30;
//   if (no1 > no2 && no1 > no3) {
//     print('$no1 is Largest');
//   } else if (no2 > no1 && no2 > no3) {
//     print('$no2 is largest');
//   } else if (no3 > no1 && no3 > no2) {
//     print('$no3 is Largest');
//   }
// }

/// Input shopping amount and calculate discount, if amount is greater than or equals to
/// 1000 than 20% discount is given otherwise 10%.

// void main() {
//   calculate(600);
// }
//
// void calculate(int shoppingAmount) {
//   int discunt1 = shoppingAmount * 10 ~/ 100;
//   int discunt2 = shoppingAmount * 20 ~/ 100;
//   if (shoppingAmount > 1000) {
//     print(
//         'Discount : $discunt2 and After Discount Price is ${shoppingAmount - discunt2}');
//   } else {
//     print(
//         'Discount : $discunt1 and After Discount Price is ${shoppingAmount - discunt1}');
//   }
// }

///  Input 3 angles of triangle and check whether a triangle is valid or not.
///  A triangle is valid if the sum of all the three angles equal to 180 degrees and no angle is equals to 0.

// void main() {
//   calculate(20, 0, 130);
// }
//
// calculate(int angel1, int angel2, int angel3) {
//   if (angel1 >= 1 && angel2 >= 1 && angel3 >= 1) {
//     int sumOfAngel = angel1 + angel2 + angel3;
//     if (sumOfAngel == 180) {
//       print('Triangle is valid');
//     } else {
//       print('Provide correct three Angel');
//     }
//   } else {
//     print('Input All angle greater than 1');
//   }
// }
/// Input 5 subjects marks of a student and find percentage & grade on the following slabs:
/// Percentage	Grade
///  81 - 100    	A
///  71 - 80    	B
///  61 - 70    	C
///  40 - 60	    D
///  0 - 39     	F
//
// void main() {
//   int totalSub = 5;
//
//   int bengaliMarks = 0;
//   int englishMarks = 0;
//   int historyMarks = 0;
//   int geoMarks = 80;
//   int mathMarks = 89;
//   int totalMarks =
//       bengaliMarks + englishMarks + historyMarks + geoMarks + mathMarks;
//   double percentage = totalMarks / totalSub;
//   String grade() {
//     if (percentage >= 81) {
//       return 'A';
//     } else if (percentage >= 71) {
//       return 'B';
//     } else if (percentage >= 61) {
//       return 'C';
//     } else if (percentage >= 41) {
//       return 'D';
//     } else {
//       return 'fail';
//     }
//   }
//
//   String grade2() {
//     return percentage >= 81
//         ? 'A'
//         : percentage >= 71
//             ? 'B'
//             : percentage >= 61
//                 ? 'C'
//                 : percentage >= 41
//                     ? 'D'
//                     : 'Fail';
//   }
//
//   print(
//       'TotalMarks : $totalMarks, Percentage : $percentage %, Grade : ${grade2()}');
// }

/// input working hour of a employee and find per day salary on the following conditions:
/// Percentage	Grade
/// First 8 hrs	Rs 600 per hour
/// Next 4 hrs	Rs 400 per hour
/// Next 4 hrs	Rs 300 per hour
/// Next 4 hrs	Rs 200 per hour

// void main() {
//   print(calculate(2));
// }
//
// calculate(int workingHours) {
//   int firstSlab = 600 * workingHours;
//   int secondSlab = 4800 + (workingHours - 8) * 400;
//   int thirdSlab=4800+1600+(workingHours-12)*300;
//   int fourthSlab = 4800 + 1600 + 1200 + (workingHours - 16) * 200;
//
//   if (workingHours < 21) {
//     if (workingHours <= 8) {
//       print(firstSlab);
//     } else if (workingHours > 8 && workingHours < 13) {
//       print(secondSlab);
//     } else if (workingHours > 12 && workingHours < 17) {
//       print(thirdSlab);
//     } else {
//       print(fourthSlab);
//     }
//   } else {
//     print('You ar Cross Day Working Limit');
//   }
// }

/// or

void main() {
  print(calculate(12));
}

calculate(int workingHours) {
  int firstSlab = 600 * workingHours;
  int secondSlab = 4800 + (workingHours - 8) * 400;
  int thirdSlab = 4800 + 1600 + (workingHours - 12) * 300;
  int fourthSlab = 4800 + 1600 + 1200 + (workingHours - 16) * 200;

  if (workingHours < 21) {
    return workingHours <= 8
        ? firstSlab
        : workingHours > 8 && workingHours < 13
            ? secondSlab
            : workingHours > 12 && workingHours < 17
                ? thirdSlab
                : fourthSlab;
  }
}
