/// Write a program to print full name of a from first name and last name using user input.

// void main() {
//   print(fullName('Subrata', 'Ghosh'));
// }
//
// String fullName(String firstNAme, String lastName) {
//   // return firstNAme + lastName;
//   return '$firstNAme $lastName';
// }

/// Write a Dart program which accepts the user's first and last name
/// and print them in reverse order with a space between them.
void main() {
  print(nameReversed('Subrata', ' Ghosh'));
  print(nameReversed('Kalachand', ' Bauri'));
}

String nameReversed(String firstName, String lastName) {
  var myName = firstName + lastName;
  return myName.split('').reversed.join();
}
