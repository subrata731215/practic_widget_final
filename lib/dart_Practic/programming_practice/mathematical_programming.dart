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

import 'dart:math';

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
void main(){

  String x='He Go To School';

 String y= x.split('ds').reversed.toList().join();

  print(y);




}



