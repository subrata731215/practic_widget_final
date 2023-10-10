///Exercise 6
/// Ask the user for a string and print out whether this string is a palindrome or not.
//
void main() {
  checkPalindrome('ramakantakamar') ? print('Palindrome') : print('not palindrome');
}

bool checkPalindrome(String inputString) {
  return inputString == inputString.split("").reversed.join();
}

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
