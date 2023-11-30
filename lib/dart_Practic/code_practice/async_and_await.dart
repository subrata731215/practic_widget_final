/*Future<void> main() async {
  print('Data 1');

  await Future.delayed(Duration(seconds: 4),(){
    print('object 1');
  });
  print('Data 2');
  await Future.delayed(Duration(seconds: 3));

  print('Data 3');
  await Data2();
}
Future Data2()async{
  Future.delayed(Duration(seconds: 4),(){
    print('object2 ') ;
  });

}*/

// void main() {
//   Test test = Test();
//
//   test.namePrint(age: 20,name: 'kala');
// }
//
// class Test {
//   void namePrint({required String name,required int age}) async {
//     print('Subrata 1');
//     await Future.delayed(const Duration(seconds: 3), () {
//       print(name);
//       print(age);
//     });
//   }
// }

void main() {
  asyncAwait();
}

asyncAwait() async {
  Future.delayed(Duration(seconds: 4), () {
    print('Subrata');
  });
}
