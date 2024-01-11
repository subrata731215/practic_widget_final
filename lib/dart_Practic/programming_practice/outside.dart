import 'dart:io';
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

// void main() {
//   Calculate cal=Calculate();
//   cal.calculate(2);
// }
//
// class Calculate {
//   int no1 = 30;
//   int no2 = 2;
//
//   calculate(i) {
//     switch (i) {
//       case 1:
//         print(no1 + no2);
//         break;
//       case 2:
//         print(no1 - no2);
//         break;
//       case 3:
//         print(no1 * no2);
//         break;
//       case 4:
//         print(no1 / no2);
//         break;
//     }
//   }
// }
// void main() {
//   String myName = 'Kala Chand Bauri';
//   var k = myName.split(' ');
//   String firstName = k.first[0].toUpperCase();
//   String lastName = k.last[0].toUpperCase();
//
//   k.length > 1 ? print('${firstName}.${lastName}') : print(firstName);
// }

///  A company decided to give bonus of 5% to employee if his/her year of service is more than 5 years.
/// Ask user for their salary and year of service and print the net bonus amount.

// void main() {

// Map<String, Map<int, int>> employeeDetails = {
//   'Subrata': {2: 20000},
//   'Sujit': {7: 30000},
//   'Kala': {6: 25000},
//   'Joydeb Da': {4: 50000},
//   'Sumanta': {3: 40000},
// };
// print('${employeeDetails.entries.map((e) => e.value.keys).toList()}');

//
//   List<EmployeeModel> employeeList = [
//     EmployeeModel(name: 'subrata', jobYear: 2, salary: 20000),
//     EmployeeModel(name: 'sujit', jobYear: 7, salary: 30000),
//     EmployeeModel(name: 'kala', jobYear: 6, salary: 25000),
//     EmployeeModel(name: 'joydeb Da', jobYear: 4, salary: 50000),
//     EmployeeModel(name: 'sumanta', jobYear: 9, salary: 40000),
//     EmployeeModel(name: 'prosen', jobYear: 2, salary: 10000),
//   ];
//
//   for (var i = 0; i < employeeList.length; i++) {
//     if (employeeList[i].jobYear > 5) {
//       var presentSalary = employeeList[i].salary+(employeeList[i].salary * 5 / 100);
//       String name = employeeList[i].name;
//       print('$name : $presentSalary');
//     }
//   }
// }
//
// class EmployeeModel {
//   String name;
//   int jobYear;
//   double salary;
//
//   EmployeeModel(
//       {required this.name, required this.jobYear, required this.salary});
// }

/// A school has following rules for grading system:
// a. Below 25 - F
// b. 25 to 45 - E
// c. 45 to 50 - D
// d. 50 to 60 - C
// e. 60 to 80 - B
// f. Above 80 - A
// Ask user to enter marks and print the corresponding grade.

// void main() {
//   List<Student> studentList = [
//     Student(name: 'Subrata Ghosh', totalMarks: 500, marksObtained: 260),
//     Student(name: 'Sumanta Pal', totalMarks: 500, marksObtained: 437),
//     Student(name: 'JoyDeb Singha', totalMarks: 500, marksObtained: 340),
//     Student(name: 'Bisu Pandit', totalMarks: 500, marksObtained: 223),
//     Student(name: 'Mukto Ghosh', totalMarks: 500, marksObtained: 120),
//     Student(name: 'SatyaSadhan Mondal', totalMarks: 500, marksObtained: 380),
//   ];
//
//   for (int i = 0; i < studentList.length; i++) {
//     double percentage() {
//       double result =
//           (studentList[i].marksObtained / studentList[i].totalMarks) * 100;
//       return result;
//     }
//
//     double percent = percentage();
//
//     if (percent > 80) {
//       print('A');
//     } else if (percent > 60 && percent < 80) {
//       print('B');
//     } else if (percent > 50 && percent < 60) {
//       print("C");
//     } else if (percent > 45 && percent < 50) {
//       print('D');
//     } else if (percent > 25 && percent < 45) {
//       print('E');
//     } else {
//       print('Fail');
//     }
//
//     var name=studentList[i].name;
//     var totalM=studentList[i].totalMarks;
//     var marksO=studentList[i].marksObtained;
//
//
//
//     print(
//         'Name : $name, Total Marks : $totalM, Marks Obtained : $marksO, Percentage : $percent');   // print(percentage());
//   }
//
// }
//
// class Student {
//   String name;
//   int totalMarks;
//   int marksObtained;
//
//   Student({
//     required this.name,
//     required this.totalMarks,
//     required this.marksObtained,
//   });
// }

void main() {
  List<int> no = [3, 4, 5, 6,8];
  int sum = 0;
  no.forEach((element) {
    sum += element;
  });

  print(sum);
}
