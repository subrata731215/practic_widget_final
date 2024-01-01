import 'dart:io';
import 'dart:math';

/// Problem

///  Write a Dart program to count the number 4 in a given list.

// void main() {
//   int count = 0;
//   String num = '63246484904';
//
//   var t = num.split('');
//   for (var f in t) {
//     if (f == '4') {
//       count += 1;
//     }
//     print(count);
//   }
// }

///  Write a Dart program to get the n (non-negative integer) copies of the first 2 characters of a given string.
/// Return the n copies of the whole string if the length is less than 2.

///  ??

// void main() {
//   String myString = '028475';
//   int.parse(myString);
//
//   var k = myString.substring(0, 2);
//   print(int.parse(k) * myString.length);
// }

/// Write a Dart program which accepts a sequence of comma-separated numbers from user
/// and generate a list and a tuple with those numbers.
/// Sample data : 3, 5, 7, 23 Output : List : ['3', ' 5', ' 7', ' 23'] Set : ('3', ' 5', ' 7', ' 23')

///      ??
// void main(){
//
//
//
// }

/// Write a program in Dart to remove all whitespaces from String.

///        ??????

/// Write a Dart program to test whether a passed letter is a vowel or not.

///    ???????

//
// void main() {
//   String myLetter = 'p';
//   List<String> vowel = ['a', 'e', 'i', 'o', 'u'];
//
//   for (var i in vowel) {
//     if (i == myLetter) {
//       print('vowel');
//     } else {
//       print('not vowel');
//     }
//     // print(i);
//   }
//   // print(checkVowel('e'));
//   // print(checkVowel2('a'));
// }

// checkVowel(String letter) {
//   List<String> vowel = ['a', 'e', 'i', 'o', 'u'];
//   for (var vvv in vowel) {
//     if (letter == vvv) {
//       print('$letter is vowel');
//     } else {
//       print('$letter this is not vowel');
//     }
//   }
// }
//
// checkVowel2(String letter) {
//   List<String> vowel = ['a', 'e', 'i', 'o', 'u'];
// }

///  Count no of unique digit in given no.

// void main() {
//   int no = 120;
//
//   print(no.remainder(10));
// }

///  Write a Dart program to check whether an alphabet is a vowel of consonant

// void main() {
//   print(checkAlphabet('f'));
// }
//
// List<String> vowelList = ['a', 'e', 'i', 'o', 'u'];
//
// checkAlphabet(String alphabet) {
//   for (var vvv in vowelList) {
//     if (alphabet.splitMapJoin('').split('').join() == vvv) {
//       print('this is vowel');
//     } else {
//       print('this is Consonant');
//     }
//   }
// }

/// write a programme that the print all the number between 0 to 6 except 3 and 6

/// Solved

///   Write a Dart program that accepts an integer (n) and computes the value of n+nn+nnn.

// void main() {
//   String k = '5';
//   List<dynamic> l = [k, k * 2, k * 3];
//   print(l);
// }

///  Write a Dart program to calculate number of days
/// between two dates. Sample dates : (2014, 7, 2), (2014, 7, 11) Expected output : 9 days

// void main() {
//   DateTime firstDate = DateTime.utc(2023, 06, 28);
//   DateTime secondDate = DateTime.utc(2023, 10, 08);
//   Duration dif = secondDate.difference(firstDate);
//   print('Difference : ${dif.inDays} days');
// }
//
// Duration yourAge(DateTime today, DateTime dob) {
//   return today.difference(dob);
// }

///   Write a Dart program to test whether a number is within 100 of 100 or 1000 or 2000.

// void main() {
//   testWithin100_1000_2000(2100);
// }
//
// void testWithin100_1000_2000(int myChoiceNo) {
//   if ((100 - myChoiceNo).abs() <= 100 ||
//       (1000 - myChoiceNo).abs() <= 100 ||
//       (2000 - myChoiceNo).abs() <= 100) {
//     print('True');
//   } else {
//     print('false');
//   }
// }

///    Write a Dart program to calculate the sum of three given numbers,
///  if the values are equal then return three times of their sum.

// void main() {
//   calculate(10, 10, 20);
// }
//
// void calculate(int no1, int no2, int no3) {
//   int sum = no1 + no2 + no3;
//   if(no1==no2 && no2==no3 && no3==no1){
//     print(3*sum);
//   }else{
//     print(sum);
//   }
//
// }

///  Write a Dart program to get a new string from a given string where "Is" has been added to the front.
/// If the given string already begins with "Is" then return the string unchanged.

// void main() {
//   addisString('subrata good boy?');
//
//   const string = 'dartlang';
//   var result = string.substring(1,5); //
//   result = string.substring(2, 5);
//   print(result);
// }
//
// void addisString(String myString) {
//   if (myString.startsWith('Is')) {
//     print(myString);
//   } else {
//     print('Is $myString');
//   }
// }
///  Write a programme that accepts an integer(n) and computes the value of n+nn+nnn

// void main() {
//   print(myNo('5'));
// }
//
// int myNo(String k) {
//   String no1 = k;
//   String no2 = '$k$k';
//   String no3 = '$k$k$k';
//
//   int no11 = int.parse(no1);
//   int no22 = int.parse(no2);
//   int no33 = int.parse(no3);
//
//   int total = no11 + no22 + no33;
//
//
//   for(var i=0;i<=3;i++){
//     var t=no1*i;
//     print(t);
//   }
//
//   return total;
// }

///  Write a  programme which is a square no.bellow all no, input string no

// void main() {
//   myNo('355');
// }
//
// void myNo(String l) {
//   int no11 = int.parse(l);
//
//   for (var i = 1; i <= no11; i++) {
//
//     print(i * i);
//   }
// }

///  Write a Dart program to accept two integers and check whether they are equal or not

// void main() {
//   int a = Random().nextInt(20);
//   int b = Random().nextInt(20);
//   print('a : $a');
//   print('b : $b');
//
//   if (a == b) {
//     print('This two no is equal');
//   } else if (a < b) {
//     print('This two no is not  equal');
//   } else {
//     print('object');
//   }
// }

///  Write a Dart program to find Greater between two number using conditional opearator

// void main() {
//   int a = Random().nextInt(200);
//   int b = Random().nextInt(200);
//
//
//   print('a: $a');
//   print('b : $b');
//
//
//   if (a < b) {
//     print('Greater is b: $b');
//   } else {
//     print('Greater is a : $a');
//   }
// }

///  Write a Dart program to check whether a specified value is contained in a group of values.

// void main() {
//   print(checkContain('Subrata'));
// }
//
// bool checkContain(String word) {
//   var k = word.contains('a');
//   return k;
// }

///  Write a Dart program to create a histogram from a given list of integers.

// void main(){
//
//   var numbers =['Subrata', 'kala', 'Sumanta'];
//   numbers.forEach((k){
//     var pattern = '';
//     for (var x=0; x< numbers.length; x++) {
//       pattern += '@ ';
//     }
//     print(pattern);
//   });
// }

/// Write a Dart program to concatenate all elements in a list into a string and return it.

// void main() {
//   List<int> num = [9, 5, 43, 23, 45, 78, 431];
//
//
// }

/// Write a Dart program which accepts the radius of a circle from the user and compute the area.
//
//
// void main(){
//   double myArea=area(7.5);
//
//   print('Your Area is : ${myArea.toStringAsFixed(2)} sq unit');
// }
//
// double area(double radius){
//   double pi=22/7;
//   return pi*pow(radius, 2);
// }

/// Suppose, you often go to restaurant with friends and you have to split amount of bill.
/// Write a program to calculate split amount of bill. Formula= (total bill amount) / number of people.
//
//
// void main(){
//
//   print(calculateBill(2300, 3).toStringAsFixed(2));
//
// }
//
// double calculateBill(int totalBill,int noOfPeople){
//   return totalBill/noOfPeople;
//
// }

/// Write a Dart program to display the current date and time. Sample Output :
/// Current date and time : 2014-07-05 14:34:14
//
// void main(){
//
//    var date=DateFormat("yyyy-MM-dd").format(DateTime.now());
//    var time=DateFormat("hh:mm:ss a").format(DateTime.now());
//
//    print('Current date and time : $date $time');
// }

/// Write a Dart program to get the difference between a given number and 17,
/// if the number is greater than 17 return double the absolute difference.
//
// void main(){
//
//   print(difference(50));
// }
//
// double difference(double yourNo){
//   int givenNo=17;
//   double diff=yourNo-givenNo;
//   return diff.abs();
// }
/// Create a program that asks the user for a number and then prints out a list of all the divisors of that number.

// void main() {
//   int divisor = 4560;
//   int dividend = 34;
//
//   int quotient = (divisor / dividend).round();
//   print('Quotient : $quotient');
//
//   int reminder = divisor - (dividend * quotient);
//
//   print('reminder : $reminder ');
//
//   CalculateReminder cal = CalculateReminder(divisor: 121, dividend: 11);
//
//   if (cal.reminder() == 0) {
//     print('No Reminder');
//   } else {
//     print('Reminder is : ${cal.reminder()}');
//   }
// }
//
// class CalculateReminder {
//   int divisor;
//   int dividend;
//
//   CalculateReminder({required this.divisor, required this.dividend});
//
//   int quotient() {
//     return divisor ~/ dividend;
//   }
//
//   int reminder() {
//     return divisor - (dividend * quotient());
//   }
// }

/// Ask the user for a number. Depending on whether the number is even or odd,
/// print out an appropriate message to the user.

// void main() {
//   number(92);
// }
//
// void number(int no) {
//   if(no % 2==0){
//     print ('$no is Even No');
//   }else{
//     print('$no is Odd Number');
//   }
// }
///  Let’s say you are given a list saved in a variable:
/// a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
/// Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.
//
// void main() {
//   List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100,11,17];
//
//   for (int aa in a) {
//     if (aa % 2 == 0) {
//       print('$aa  is Even no');
//     } else if
//       (aa % 2 != 2)
//     {
//       print('$aa is Odd no');
//     };
//   }
// }

/// Write a Dart program to display the examination schedule. (extract the date from exam_st_date).

// void main(){
//
//   var date={08,10,2023};
//   print(date.join('-'));
// }

/// Write a program to print full name of a from first name and last name using user input.

// void main() {
//   print(fullName('Subrata', 'Ghosh'));
// }
//
// String fullName(String firstNAme, String lastName) {
//   // return firstNAme + lastName;
//   return '$firstNAme $lastName';
// }
//
/// Write a Dart program which accepts the user's first and last name
/// and print them in reverse order with a space between them.
// void main() {
//   print(nameReversed('Subrata', ' Ghosh'));
//   print(nameReversed('Kalachand', ' Bauri'));
// }
//
// String nameReversed(String firstName, String lastName) {
//   var myName = firstName + lastName;
//   return myName.split('').reversed.join();
// }

/// Generate a random number between 1 and 100. Ask the user to guess the number,
/// then tell them whether they guessed too low, too high, or exactly right.
//
// void main() {
//   matchNo(17);
// }
//
// void matchNo(int guessNo) {
//   int ranNo = Random().nextInt(30) + 1;
//   print('Random No is : $ranNo');
//   print('Your No is : $guessNo');
//
//   if (ranNo == guessNo) {
//     print('Your prediction is 100 %');
//   } else if (ranNo > guessNo - 1 && ranNo < guessNo + 1) {
//     print('Your Prediction is 90 %');
//   } else if (ranNo > guessNo - 5 && ranNo < guessNo + 5) {
//     print('Your Prediction is 80 %');
//   } else if (ranNo > guessNo - 10 && ranNo < guessNo + 10) {
//     print('Your Prediction is 50 %');
//   } else if (ranNo > guessNo - 20 && ranNo < guessNo + 20) {
//     print('Your Prediction is 20 %');
//   } else {
//     print('your prediction is 0 %');
//   }
// }

/// Take two lists, for example:a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
/// b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
///  and write a program that returns a list that contains only the elements that are common between them (without duplicates).
///  Make sure your program works on two lists of different sizes.
//
// void main() {
//   List<int> a = [999, 11, 3, 20, 5, 13];
//   List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
//
//   for (int bb in b) {
//     for (int aa in a) {
//       if (bb == aa) {
//         print('$aa Match');
//       } else {}
//     }
//   }
// }

/// Take a list,
///and write a program that prints out all the elements of the list that are less than 15.

// void main() {
//   List<int> myNo = [2, 32, 34, 5, 6, 7, 12, 56, 76, 42, 89, 9, 11, 65, 13];
//
//   /// one liner
//    print([for(int i in myNo) if(i<10) i ]);
// /// multi liner
//   for (int number in myNo) {
//     if (number < 10) {
//       print(number);
//     }
//   }
// }

/// Ask the user for a string and print out whether this string is a palindrome or not.

// void main() {
//   checkPalindrome('ramakantakamar') ? print('Palindrome') : print('not palindrome');
// }
//
// bool checkPalindrome(String inputString) {
//   return inputString == inputString.split("").reversed.join();
// }
//
// void main() {
//   String p = '1331';
//   print(p.split('').reversed.join());
//
//   print(check('Sub'));
// }
//
// bool check(String n) {
//   return n == n.split('').reversed.join();
// }

/// Create a program that asks the user to enter their name and their age.
/// Print out a message that tells how many years they have to be 100 years old.

// void main() {
//   Person p1 = Person('Subrata', 30);
//   Person p2 = Person('Kala', 27);
//   print(
//       'My Name is ${p1.name} and My Age is ${p1.age} .  ${p1.name} will be Hundred Years after ${p1.toBe100()} years Later.');
//   print(
//       'My Name is ${p2.name} and My Age is ${p2.age} .  ${p2.name} will be Hundred years ${p2.toBe100()} years Later.');
// }
//
// class Person {
//   String name;
//   int age;
//
//   Person(this.name, this.age);
//
//   int toBe100() {
//     int a=100-age;
//     return a;
//   }
// }
///  Write a Dart program to print the following string in a specific format Sample String :
/// "Twinkle, twinkle, little star, How I wonder what you are! Up above the world so high, Like a diamond in the sky. Twinkle, twinkle, little star, How I wonder what you are" Output:
//
/// Twinkle, twinkle, little star,
///	     How I wonder what you are!
/// 		          Up above the world so high,
/// 	          	Like a diamond in the sky.
/// Twinkle, twinkle, little star,
/// 	     How I wonder what you are.

// void main() {
//   String poem =
//       "Twinkle, twinkle, little star,\n   How I wonder what you are! \n    "
//       "     Up above the world so high,\n         Like a diamond in the sky. \nTwinkle, twinkle, "
//       "little star,\n   How I wonder what you are";
//   print(poem);
// }
///  Write a Dart program to accept a filename from the user
/// and print the extension of that. Sample filename : abc.java Output : java
//
// void main() {
//   print(extensionPrint('subrata.pdf'));
// }
//
// String extensionPrint(String fileName) {
//   List<String> a = fileName.split('.');
//   return a[1];
// }
///  Write a program to find quotient and remainder of two integers.
//
// void main() {
//   print(Answer(no1: 24, no2: 5).finalAnswer());
// }
//
// class Answer {
//   double no1;
//   double no2;
//
//   Answer({required this.no1, required this.no2});
//
//   double quotient() {
//     return no1 / no2;
//   }
//
//   double reminder() {
//     double multiplyTwoNo = (no2 * quotient().truncate());
//     return no1 - multiplyTwoNo;
//   }
//
//   String finalAnswer() {
//     return 'Quotient is : ${quotient()} and  Reminder is : ${reminder()}';
//   }
// }

///  Write a program in Dart that finds simple interest
//
// void main() {
//   print(MyInterest(p: 600).compoundInterest());
// }
//
// class MyInterest {
//   final double p;
//   final int r;
//   final int t;
//
//   MyInterest({required this.p, this.r = 20, this.t = 2});
//
//   double simpleInterest() {
//     return p * r * t / 100;
//   }
//
//   num compoundInterest() {
//     num a = p * (pow(1 + r / 100, 2));
//     return a - p;
//   }
// }
///  Write a program to print a square of a number using user input.
//
// void main() {
//   print('Square no is : ${squareNumber(8)}');
// }
//
// num squareNumber(int yourNumber) {
//   return pow(yourNumber, 2);
// }
///  Write a dart program to convert String to int.
// void main() {
//   String age = '31';
//  int q= int.parse(age);
//   print(q+89);
// }
///  Write a program to swap two numbers.
//
// void main() {
//   int x = 980;
//   int y = 20;
//   int temp = 0;
//
//   print('Before swap x : $x , y : $y');
//
//   temp = x;
//   x = y;
//   y = temp;
//
//   print('after swap x : $x , y : $y');
// }
///  Write a Dart program to get the volume of a sphere with radius 6.
//
// void main() {
//   print('${sphereVolume(6).toStringAsFixed(2)} qube unit' );
// }
//
// double sphereVolume(double radius) {
//   double a = 4 / 3 * 22 / 7;
//   num b = pow(radius, 3);
//   return a * b;
// }

///  Write a Dart program to convert temperature to and from celsius,fahrenheit

// void main() {
//   print(ConvertTo(unit: 32).celsius());
// }
//
// class ConvertTo {
//   int unit;
//
//   ConvertTo({required this.unit});
//
//   double fahrenheit() {
//     double fahrenheit = (9 * unit + 160) / 5;
//     return fahrenheit;
//   }
//
//   double celsius() {
//     double celsius = (5 * unit - 160) / 9;
//     return celsius;
//   }
// }

/// write a programme to convert month name to a number of days

// void main() {
//   List<String> monthList = [
//     'January',
//     'February',
//     'March',
//     'April',
//     'May',
//     'June',
//     'July',
//     'August',
//     'September',
//     'October',
//     'November',
//     'December',
//   ];
//   for (var i = 0; i < monthList.length; i++) {
//     print('Month Name : ${mmm[i].month} , Days : ${mmm[i].days}');
//   }
// }
//
// class MonthDays {
//   String month;
//   int days;
//
//   MonthDays({required this.month, required this.days});
// }
//
// List<MonthDays> mmm = [
//   MonthDays(month: 'January', days: 31),
//   MonthDays(month: 'February', days: 29),
//   MonthDays(month: 'March', days: 31),
//   MonthDays(month: 'April', days: 30),
//   MonthDays(month: 'May', days: 31),
//   MonthDays(month: 'June', days: 30),
//   MonthDays(month: 'July', days: 31),
//   MonthDays(month: 'August', days: 31),
//   MonthDays(month: 'September', days: 30),
//   MonthDays(month: 'October', days: 31),
//   MonthDays(month: 'November', days: 30),
//   MonthDays(month: 'December', days: 31),
// ];

/// write a dart programme that accepts an integers and computes n+nn+nnn;

// void main() {
//   String n = '5';
//   var k='';
//
//   for (int i = 0; i <= int.parse(n); i++) {
//      k = n * i;
//     print(k);
//   }
// }
/// solved Rahul
// void main() {
//   int sum = 0;
//   int n = 4;
//
//   for (int i = 1; i <= n; i++) {
//     sum = sum + generateNo(n, i);
//   }
//   print(sum);
// }
//
// int generateNo(int n, int digit) {
//   int result = 0;
//
//   for (int i = 0; i < digit; i++) {
//     result = result * 10 + n;
//   }
//   return result;
// }

/// Write a dart programme to calculate total average of five subject;
// void main() {
//   print(average(120, 29, 23, 56, 89));
//   List<int> subjectNo = [30, 50, 20, 70, 50];
//
//   int total = subjectNo.fold(
//       0, (previousValue, lastValue) => previousValue + lastValue);
//   print('Average : ${total / subjectNo.length}');
// }
//
// double average(int english, int bengali, int math, int geo, int hist) {
//   int sum = english + bengali + math + geo + hist;
//   return sum / 5;
// }

/// Write a Dart program which accepts a sequence of comma-separated numbers from user and generate a list and a tuple with those numbers.
/// Sample data : 3, 5, 7, 23 Output : List : ['3', ' 5', ' 7', ' 23'] Set : ('3', ' 5', ' 7', ' 23')
// void main() {
//   String num = '35723';
//
//   var k = num.split('');
//   List list=[];
//   list.add(k);
//  // print(k);
//
//
//
//
//
//   print(list);
// }

// void main() {
//   int sum = 0;
//   var myNo = '19';
//   List<dynamic> noList = [];
//
//   if (int.parse(myNo) < 10) {
//     for (int i = 1; i <= int.parse(myNo); i++) {
//       noList.add(myNo * i);
//       // print(noList);
//     }
//     for (var x in noList) {
//       sum += int.parse(x);
//     }
//     print(sum);
//   } else {
//     print('No Must be Small to 10');
//   }
// }

///  Write a Dart program to test whether a passed letter is a vowel or not.

// void main() {
//   String checkLetter = 'pp';
//   checkLetter = checkLetter.substring(0, 1).toUpperCase();
//   print(checkLetter);
//   String? l;
//
//
//
//   List<String> vowelList = ['a', 'e', 'i', 'o', 'u'];
//
//   for(var k in vowelList){
//     l=k;
//   }
//   print(l);
//   String vowel = 'This is Vowel';
//   String consonant = 'This is consonant';
//
//
// }

// void main() {
//   String l = 'I Love U ,';
//   String n = '';
//   for (int i = 1; i <= 10; i++) {
//     n = l * i;
//   }
//
//   print(n);
// }

// void main(){
//   int myNo=23;
//
//   for(int i=1;i<=100;i++){
//     print('$myNo X $i = ${myNo*i}');
//   }
//
//
// }

void main() {
  int myAge = 45;
  if (myAge < 18 || myAge>40 ) {
    print('You Can Not Buy Alcohol');
  } else{
    print('You Can Buy Alcohol');

  }
}
