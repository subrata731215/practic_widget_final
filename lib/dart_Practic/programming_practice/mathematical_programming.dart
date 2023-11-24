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

void main() {
  StudentName akash =
      StudentName(bengali: 30, english: 60, hist: 70, geo: 85, lsc: 84);
  print(
      'Total Score : ${akash.totalNo()} And Percentage : ${akash.percentage()}.');
}

class StudentName {
  int fullMarks = 500;
  int bengali;
  int english;
  int hist;
  int geo;
  int lsc;

  StudentName(
      {required this.bengali,
      required this.english,
      required this.hist,
      required this.geo,
      required this.lsc});

  int totalNo() {
    int total = bengali + english + hist + geo + lsc;
    return total;
  }

  String percentage() {
    double percentage = (totalNo() / fullMarks) * 100;
    return percentage.toStringAsFixed(2);
  }
}

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








