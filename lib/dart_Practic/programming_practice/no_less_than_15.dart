///Take a list,
///and write a program that prints out all the elements of the list that are less than 15.

void main() {
  List<int> myNo = [2, 32, 34, 5, 6, 7, 12, 56, 76, 42, 89, 9, 11, 65, 13];

  /// one liner
   print([for(int i in myNo) if(i<10) i ]);
/// multi liner
  for (int number in myNo) {
    if (number < 10) {
      print(number);
    }
  }
}

// void main() {
//   List<String> myFriends = [
//     'Kala',
//     'Sumanta',
//     'Sujit',
//     'Mukto',
//     'joydeb da',
//     'Satya',
//     'Nirupam da',
//     'Bisu'
//   ];
//
//   for (String friend in myFriends) {
//     if (friend.startsWith('S')) {
//       print(friend);
//     }
//   }
// }
