// void main() {
//   Calculate calculate = Calculate();
//
//   List<int> divisorCheck = calculate.divisorCheck(myNo: 64);
//   List<int> checkLess25 = calculate.checkLess5();
//
//   print(checkLess25);
// }
//
// class Calculate {
//   // int? no1;
//   // int? no2;
//   //
//   // Calculate({required this.no1, required this.no2});
//
//   /// Create a program that asks the user for a number and then prints out a list of all the divisors of that number.
//
//   List<int> divisorCheck({required int myNo}) {
//     List<int> divisorList = [];
//
//     for (int i = 1; i <= myNo; i++) {
//       if (myNo % i == 0) {
//         divisorList.add(i);
//       }
//     }
//
//     return divisorList;
//   }
//
//   ///   a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89] print less than 5 mo;
//   List<int> checkLess5() {
//     List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 4, 10, 9, 34, 55, 89];
//     List<int> result = [];
//     for (var noList in a) {
//       if (noList < 5) {
//         result.add(noList);
//       }
//     }
//     return result;
//   }
// }

import 'dart:io';
import 'dart:math';

import 'package:fraction/fraction.dart';
import 'package:rational/rational.dart';

/// Write a Dart programme to find the median of three value
/// calculate list Values total
// void main() {
//   var myNo = medianCalculate([30, 60, 20, 87]).toStringAsFixed(2);
//   print('Median : $myNo');
// }
//
// double medianCalculate(List<int> myList) {
//   var sum =
//       myList.fold(0, (previousValue, lastValue) => previousValue + lastValue);
//   int l = myList.length;
//   return sum / l;
// }
/// calculate map values total
// void main(){
//   Map<String, int> mySub = {
//     'English': 40,
//     'Math': 90,
//     'Bengali': 70,
//     'Geo': 80,
//     'Hist': 70,
//   };
//   var mapTotal=mySub.values;
//   var k =  mapTotal.reduce((value, element) => value+element);
//   print(k);
// }

/// Write a program in dart to display n natural number and their sum

// void main() {
//   print(sumMyNo(10));
// }
//
// int sumMyNo(int chooseNo) {
//   int sum = 0;
//   for (int i = 1; i <= chooseNo; i++) {
//     sum += i;
//   }
//   return sum;
// }

/// Write a dart program to find the factorial of a number

/// like   5 = 5x4x3x2x1=120;

// void main() {
//   print(factorialMyNo(4));
// }
//
// int factorialMyNo(int myNo) {
//   int factorial = 1;
//
//   for (int i = myNo; i > 0; i--) {
//     factorial = factorial * i;
//   }
//
//   return factorial;
// }

/// Write a dart program to find the Highest Common Divisor(HCF) in two/or three no;

// void main() {
//   print(hcfMyTwoNo(24, 12, 15));
// }
//
// int hcfMyTwoNo(int no1, int no2, int no3) {
//   int hcf = 0;
//
//   for (int i = 1; i <= no1 && i <= no2 && i <= no3; i++) {
//     if (no1 % i == 0 && no2 % i == 0 && no3 % i == 0) {
//       hcf = i;
//     }
//   }
//   return hcf;
// }

/// write a dart programme to find the third angel of a triangle if two angel are given
//void main() {
//   print(getThirdAngel(20, 20));
// }
//
// int getThirdAngel(int angel1, int angel2) {
//   int totalTwoAngel = angel1 + angel2;
//   int thirdAngel = 180 - totalTwoAngel;
//   return thirdAngel;
// }

/// Write a Dart programme to find the area of a circle if radius ar given
// void main() {
//   print('${getArea(7)} Sq Unit');
// }
//
// double getArea(double radius) {
//   double pi = 22 / 7;
//   double area = pi * radius * radius;
//   return area;
// }

/// Write a Dart Programme to print the addition, Subtract, Multiply, Division and reminder of two number

// void main() {
//   Calculate cal = Calculate(no1: 5, no2: 3);
//   print(cal.addition());
// }
//
// class Calculate {
//   double no1;
//   double no2;
//
//   Calculate({required this.no1, required this.no2});
//
//   double addition() {
//     double k = no1 + no2;
//     return k;
//   }
//
//   double subtraction() {
//     double k = no2 - no1;
//     return k;
//   }
//
//   double multiply() {
//     double k = no1 * no2;
//     return k;
//   }
//
//   double division() {
//     double k = no2 / no1;
//     return k;
//   }
//
//   double reminder() {
//     double k = no1 % no2;
//     return k;
//   }
// }

/// convert years, month and date where given a number,
// void main() {
//   print(calculate(8971));
// }
//
// String calculate(int inputDays) {
//   double years = inputDays / 365;
//   int year = years.truncate();
//   String myYear = year > 1 ? 'Years' : 'Year';
//
//   double months = inputDays.remainder(365) / 30;
//   int month = months.truncate();
//   String myMonth = month > 1 ? 'Months' : 'Month';
//
//   double days = inputDays.remainder(365) - month * 30;
//   int day = days.truncate();
//   String myDay = day > 1 ? 'Days' : 'Day';
//
//   return ('$inputDays Days = $year $myYear $month $myMonth and $day $myDay');
// }

/// convert years, month, week and date where given a number,(Rahul)

// void main() {
//   print(calculate(987));
// }
//
// String calculate(int inputDays) {
//   int oneYear = 365;
//   int oneMonths = 30;
//   int oneWeek=7;
//
//   int year = inputDays ~/ oneYear;
//   String myYear = year > 1 ? 'Year\'s' : 'Year';
//
//   int remainder1 = inputDays - year * oneYear;
//   int month = remainder1 ~/ oneMonths;
//   String myMonth = month > 1 ? 'Month\'s' : 'Month';
//
//   int week=inputDays~/oneWeek;
//   String myWeek=week>1? 'Week\'s' : 'Week';
//
//   int yearAndMonth = year * oneYear + month * oneMonths;
//   int day = inputDays - yearAndMonth;
//   String myDay = day > 1 ? 'Day\'s' : 'Day';
//
//   return '$inputDays Day\'s = $year $myYear, $month $myMonth, $week $myWeek and $day $myDay';
// }

/// Input 5 subject marks of a student and find total marks and percentage obtained by the student.

// void main() {
//   StudentName akash =
//       StudentName(bengali: 30, english: 60, hist: 70, geo: 85, lsc: 84);
//   print(
//       'Total Score : ${akash.totalNo()} And Percentage : ${akash.percentage()}.');
// }
//
// class StudentName {
//   int fullMarks = 500;
//   int bengali;
//   int english;
//   int hist;
//   int geo;
//   int lsc;
//
//   StudentName(
//       {required this.bengali,
//       required this.english,
//       required this.hist,
//       required this.geo,
//       required this.lsc});
//
//   int totalNo() {
//     int total = bengali + english + hist + geo + lsc;
//     return total;
//   }
//
//   String percentage() {
//     double percentage = (totalNo() / fullMarks) * 100;
//     return percentage.toStringAsFixed(2);
//   }
// }

/// Swap to number
// void main() {
//   int no1 = 50;
//   int no2 = 30;
//   int? emptyBox;
//
//   print('before Swaping No1 = $no1, No2 = $no2');
//
//   emptyBox = no1;
//   no1 = no2;
//   no2 = emptyBox;
//   print('After Swaping No1 = $no1, No2 = $no2');
// }

/// Input two numbers and swap them without using 3rd variable.

// void main(){
// int a=20;
// int b=30;
// print('before Swaping a = $a, b = $b');
// a=a+b;
// b=a-b;
// a=a-b;
// print('after Swaping a = $a, b = $b');
//
// }
/// or

// void main() {
//   double a = 100;
//   double b = 200;
//   print('before Swaping a = $a, b = $b');
//
//   a = a * b;
//   b = a / b;
//   a = a / b;
//
//   print('after Swaping a = $a, b = $b');
// }

///  Input minutes and convert in hours and minutes.

// void main() {
//   String k = calculate(500);
//
//   print(k);
// }
//
// String calculate(int inputMinutes) {
//   int hours = inputMinutes ~/ 60;
//   String myHours = hours > 1 ? 'Hour\'s' : 'Hour';
//   int minutes = inputMinutes - hours * 60;
//   String myMinutes = minutes > 1 ? 'Minute\'s' : 'Minute';
//   return '$inputMinutes Minute\'s= $hours $myHours $minutes $myMinutes';
// }

/// input 10 numbers and find sum.
// void main() {
//   List<int> myNo = [12, 23, 34, 45, 56, 67, 78, 89, 90, 1];
//   int sum = 0;
//   for (int num in myNo) {
//     sum += num;
//   }
//   print(sum);
// }

/// input 10 numbers and find average.

// void main() {
//   List<int> myNo = [474, 214, 123, 3251, 23, 54, 2134, 12, 26,20];
//   int sum = 0;
//
//   for (int num in myNo) {
//     sum += num;
//   }
//   print(sum);
//   double average = sum / myNo.length;
//
//   print(average);
// }

///  input 10 numbers in array and find largest number.

// void main() {
//   List<int> myNo = [474, 214, 123, 3251, 23, 5677, 54, 2, 2134, 12, 26, 20];
//
//   int largestNo = myNo[0];
//   int smallestNo = myNo[0];
//
//   for (int i = 0; i < myNo.length; i++) {
//     if (myNo[i] > largestNo) {
//       largestNo = myNo[i];
//     }
//     if (myNo[i] < smallestNo) {
//       smallestNo = myNo[i];
//     }
//   }
//   print('largestNo in the list : $largestNo');
//   print('SmallestNo in the list : $smallestNo');
// }

/// a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
/// Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.

// void main() {
//   List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
//   List<int> evenList = [];
//
//   for (int i in a) {
//     if (i.isOdd) {
//       evenList.add(i);
//     }
//   }
//   print(evenList);
// }

/// Write a program that asks the user how many Fibonnaci numbers to generate and
/// then generates them. Take this opportunity to think about how you can use functions. 0,1,1,2,3,5,8...

// void main() {
//   int choosenNo = 20;
//   List<int> fibonnaciList = [0,1];
//
//   for (int i = 0; i < choosenNo; i++) {
//     fibonnaciList.add(fibonnaciList[i]+fibonnaciList[i+1]);
//   }
//   print(fibonnaciList);
// }

/// Write a program (using functions!) that asks the user for a long string containing multiple words.
/// Print back to the user the same string, except with the words in backwards order.
// void main(){
//
//
//
//
// }

/// Write a Dart program to calculate the hypotenuse of a right-angle triangle.

// void main() {
//   var result = calculate(20.4, 30.5);
//
//   print(result);
// }
//
// String calculate(double side1, double side2) {
//   double hypotenuse;
//
//   num k = pow(side1, 2);
//   num l = pow(side2, 2);
//   hypotenuse = sqrt(k + l);
//
//   return hypotenuse.toStringAsFixed(2);
// }

/// Write a Dart program to convert height(in feet and inches)to centimetres.

// void main() {
//   var result = calculate(5, 7);
//   print(result);
// }
//
// double calculate(double manfeetHeight, double manInchesHeight) {
//   double feetToCm = manfeetHeight * 30.48;
//   double inchesToCm = manInchesHeight * 2.54;
//
//   double manHeightInCM = feetToCm + inchesToCm;
//   return manHeightInCM;
// }

///  Write a Dart program to sum of the first n positive integers.

// void main() {
//   int result =calculate(myNo: 5);
//   print(result);
//
//
// }
//
// int calculate({required int myNo}) {
//   int sum = 0;
//   for (int i = 0; i <= myNo; i++) {
//     sum += i;
//   }
//
//   return sum;
// }

///  Write a program to get execution time for a Dart method.

// void main() {
//   String data = helloWord();
//   var stopwatch = Stopwatch()..start();
//
//   print('$data executed in ${stopwatch.elapsed}');
// }
//
// String helloWord() {
//   return 'Hello Word';
// }

///  Write a Dart program to compute the distance between the points (x1,y1) and (x2,y2).
// void main() {
//   List<int> point1 = [4, -9];
//   List<int> point2 = [-9, 4];
//   var result = calCulate(point1: point1, point2: point2);
//   print(result);
// }
//
// double calCulate({required List<int> point1, required List<int> point2}) {
//   var distance1 = point1[0] - point2[0];
//   var distance2 = point1[1] - point2[1];
//
//   var d1 = pow(distance1, 2);
//   var d2 = pow(distance2, 2);
//
//   double finalDistance = (d1 + d2).toDouble();
//
//   return sqrt(finalDistance);
// }

/// Write a Dart program to solve (x+y)*(x+y).Test Data:x=4,y=3 Expected Output:(4+3)^2)=49

// void main() {
//   var finalresult=calculate(x: 3, y: 5);
//   print(finalresult);
// }
//
// num calculate({required int x, required int y}) {
//   int sum = x + y;
//   num powersum = pow(sum, 2);
//
//  // num result = pow(powersum, 2);
//
//   return powersum;
// }
/// Write a Dart program to sum of two given integers.However,if the sum is between 15 to 20 it will return 20.
// void main() {
//   var cal = calculate(no1: 7, no2: 9);
//   print(cal);
// }
//
// int calculate({required int no1, required int no2}) {
//   int sum = no1 + no2;
//
//   if (sum >= 15 && sum <= 20) {
//     sum = 20;
//   } else {
//     sum;
//   }
//   return sum;
// }

/// Write a Dart program to sum of three given integers.However,if two values are equal sum will be zero.

// void main() {
//   int cal = calculate(no1: 8, no2: 8, no3: 4);
//   print(cal);
// }
//
// int calculate({required int no1, required int no2, required int no3}) {
//   int sum = no1 + no2 + no3;
//   if (no1 == no2 && no2 == no3 && no3 == no1) {
//     sum;
//   } else if (no1 == no2 || no2 == no3) {
//     sum = 0;
//   } else if (no2 == no3 || no3 == no1) {
//     sum = 0;
//   } else {
//     sum;
//   }
//   return sum;
// }

/// HCF and LCM

// void main() {
//   var cal = Calculate(no1: 3, no2: 48);
//   print(cal.lcmCalCulate());
// }
//
// class Calculate {
//   int no1;
//   int no2;
//
//   Calculate({required this.no1, required this.no2});
//
//   int greater() {
//     if (no1 > no2) {
//       return no1;
//     } else {
//       return no2;
//     }
//   }
//
//   int hcfCalculate() {
//     int hcf = 0;
//     for (int i = 1; i <= greater(); i++) {
//       if (no1 % i == 0 && no2 % i == 0) {
//         hcf = i;
//       }
//     }
//     return hcf;
//   }
//   double lcmCalCulate(){
//     int k =no1*no2;
//     double lcm=k/hcfCalculate();
//     return lcm;
//   }
// }

/// output rational number

// void main() {
//   var result = calculate(firstNo: 2, lastNo: 3, wantToRationalNo: 1);
//
//   print(result);
// }
//
// List calculate({
//   required int firstNo,
//   required int lastNo,
//   required int wantToRationalNo,
// }) {
//   var r1 = (firstNo + lastNo) / 2;
//   var r2 = (firstNo + r1) / 2;
//   var r3 = (r2 + lastNo) / 2;
//   var r4 = (firstNo + r2) / 2;
//   var r5 = (r2 + r1) / 2;
//   var r6 = (r1 + r3) / 2;
//   var r7 = (r3 + lastNo) / 2;
//
//   List<double> rationalNoList = [r1, r2, r3, r4, r5, r6, r7];
//
//   return rationalNoList;
// }

/// Write a Dart program to print out a set containing all the colors from color_list_1whicharenotpresentin color_list_2.
/// Test Data : color_list_1 = set(["White", "Black", "Red"]) color_list_2 = set(["Red", "Green"]) Expected Output : {'Black', 'White'}
// void main() {
//   List<String> colorList1 = ['White', 'Green', 'Yellow'];
//   List<String> colorList2 = ['Red', 'White','Green','Yellow'];
//  // List blank = [];
//
//  List check() {
//     List blank = [];
//     for (String color1 in colorList1) {
//       for (String color2 in colorList2) {
//         if (color1 == color2) {
//           blank.add(color1);
//         }
//       }
//     }
//     return blank;
//   }
//   print(check());
//
// }

/// Write a Dart program to print all even numbers from a given numbers list in the same order
/// and stop the printing if any numbers that come after 237 in the sequence.

// void main() {
//   List<int> randomList = [];
//   List<int> myNo = [];
//
//   for (int i = 1; i <= 20; i++) {
//     randomList.add(i);
//   }
//   for (int k in randomList) {
//     if (k % 2 == 0) {
//       myNo.add(k);
//     }
//   }
//   print(myNo);
//   print(generateRandomNo(400));
// }

/// generate RandomNo And print Even No upTo 237

// List<int> generateRandomNo() {
//   return List.generate(30, (index) => Random().nextInt(450));
// }
//
// void main() {
//   List<int> myList = [];
//   var randomNo = generateRandomNo();
//   for (int no in randomNo) {
//     if (no % 2 == 0) {
//       if (no <= 237) {
//         myList.add(no);
//       }
//     }
//   }
//   print(myList);
//
//   /// sum List Data
//   int sum = 0;
//   myList.forEach((element) {
//     sum += element;
//   });
//   print(sum);
// }

/// Write a Dart program to test whether a passed letter is a vowel or not.

// void main() {
//   String checkLetter = 'itu';
//   List<String> vowelList = ['a', 'e', 'i', 'o', 'u'];
//
//   var checkLetterString = checkLetter.substring(0, 1);
//
//   if (vowelList[0] == checkLetterString ||
//       vowelList[1] == checkLetterString ||
//       vowelList[2] == checkLetterString ||
//       vowelList[2] == checkLetterString ||
//       vowelList[3] == checkLetterString ||
//       vowelList[4] == checkLetterString) {
//     print('Vowel');
//   } else {
//     print('Consonant');
//   }
// }

/// Write a Dart program to count the number 4 in a given list.
// void main() {
//   List<int> result = [];
//   List<int> myNo = [23, 4, 5, 6, 8, 4, 56, 4, 7,8, 23, 4, 9, 4,4,4,4,7];
//   for (var f in myNo) {
//     if (f == 7) {
//       result.add(f);
//     }
//   }
//   print(result.length);
// }

/// Write a Dart program to get a new string from a given string where "Is"has been added to the front.
/// If the given string already begins with "Is" then return the string unchanged.

// void main() {
//   String k = 'LKjnsdvhg';
//   if (k.substring(0, 2) == 'Is') {
//     print(k);
//   } else {
//     print('Is $k');
//   }
//
// }

/// Write a Dart program to calculate number of days between two dates.
/// Sample dates:(2014,7,2),(2014,7,11) Expected output : 9 days
// void main() {
//   var fromDate = DateTime.utc(2023, 1, 1);
//   var toDate = DateTime.utc(2027, 1, 1); //
//
//   var dif = toDate.difference(fromDate);
//
//   print(dif.inDays);
// }

/// Two List And Compare
//
// void main() {
//
//   List<int> first=[4,5,7,9,1];
//   List<int> seconds=[2,3,4,1];
//   List<int> output=[];
//
//
//   seconds.forEach((element) {
//     if(!first.contains(element)){
//       output.add(element);
//     }
//   });
//   print(output);
// }

///
// void main() {
//   List<String> messMemberNameList = [
//     'Subrata',
//     'Sumanta',
//     'Joydeb Da',
//     'Mukto',
//     'Bisu'
//   ];
//   List<String> picnicJoinMemberName = [
//     'Satya Da',
//     'Subrata',
//     'Sumanta',
//     'Joydeb Da',
//     'Mukto',
//     'Bisu',
//     'Supriyo',
//     'Awisi'
//   ];
//   List<String> messMember = [];
//   List<String> outSideMember = [];
//
//   picnicJoinMemberName.forEach((element) {
//     if (messMemberNameList.contains(element)) {
//       messMember.add(element);
//     }
//   });
//   picnicJoinMemberName.forEach((element) {
//     if (!messMemberNameList.contains(element)) {
//       outSideMember.add(element);
//     }
//   });
//   print('MessMember : $messMember');
//   print('OutSideMember : $outSideMember');
// }

///

// void main() {
//   var allTicketList = allTicketNoo();
//   var myticketList = myTicket();
//
//   print(allTicketList);
//   print(myticketList);
//   allTicketList.forEach((element) {
//     if (myticketList.contains(element)) {
//       print(true);
//     } else {
//       print('False');
//     }
//   });
// }
//
// List<int> allTicketNoo() {
//   List<int> allTicketNo = [];
//   List.generate(25, (index) {
//     return allTicketNo.add(Random().nextInt(20));
//   });
//   return allTicketNo;
// }
//
// List<int> myTicket() {
//   List<int> myTickett = [];
//   List.generate(2, (index) => myTickett.add(Random().nextInt(20)));
//   return myTickett;
// }

/// Take two int values from user and print greatest among them.
// void main() {
//   checkGreterNo(no1: 30, no2: 29);
// }
//
// checkGreterNo({required int no1, required int no2}) {
//   if (no1 > no2) {
//     print(no1);
//   } else {
//     print(no2);
//   }
// }
