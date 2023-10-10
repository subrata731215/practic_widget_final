import 'dart:io';

///  1.  Write a Dart program that accepts an integer (n) and computes the value of n+nn+nnn.

// void main() {
//   String k = '5';
//   List<dynamic> l = [k, k * 2, k * 3];
//   print(l);
// }

/// 2. Write a Dart program to calculate number of days
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

/// 3.  Write a Dart program to test whether a number is within 100 of 100 or 1000 or 2000.

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

///  4.  Write a Dart program to calculate the sum of three given numbers,
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

/// 5. Write a Dart program to get a new string from a given string where "Is" has been added to the front.
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

/// 6. Write a Dart program to count the number 4 in a given list.

///  ??

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

/// 7. Write a Dart program to get the n (non-negative integer) copies of the first 2 characters of a given string.
/// Return the n copies of the whole string if the length is less than 2.

///  ??

// void main() {
//   String myString = '028475';
//   int.parse(myString);
//
//   var k = myString.substring(0, 2);
//   print(int.parse(k) * myString.length);
// }

/// 8. /// Write a Dart program which accepts a sequence of comma-separated numbers from user
/// and generate a list and a tuple with those numbers.
/// Sample data : 3, 5, 7, 23 Output : List : ['3', ' 5', ' 7', ' 23'] Set : ('3', ' 5', ' 7', ' 23')

///      ??
// void main(){
//
//
//
// }

/// 9. /// Write a program in Dart to remove all whitespaces from String.

///        ??????

/// 10. Write a Dart program to test whether a passed letter is a vowel or not.

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
//
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

/// 10. Write a Dart program to check whether a specified value is contained in a group of values.

// void main() {
//   print(checkContain('Subrata'));
// }
//
// bool checkContain(String word) {
//   var k = word.contains('a');
//   return k;
// }

/// 11. Write a Dart program to create a histogram from a given list of integers.

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

/// 12.Write a Dart program to concatenate all elements in a list into a string and return it.

// void main() {
//   List<int> num = [9, 5, 43, 23, 45, 78, 431];
//
//
// }



