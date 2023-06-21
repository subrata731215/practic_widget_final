// void main() {
//   var myC = MyClass();
//
//   /// Class Instance
//   myC.printName('Sumanta');
//   myC.printName('Mukta');           /// Function Calling
//
//   print(myC.add(20, 30));
//   print(myC.add(200, 300));
//
//   print(myC.subtract(300, 500));
//   print(myC.subtract(45, 30));
// }
//
// class MyClass {
//   void printName(String name)   {    /// Declaration
//     print(name);                     /// Definition
//   }
//
//   int add(int num1, int num2) {
//     int sum = num1 + num2;
//     return sum ;
//
//   }
//
//   int subtract (int no1, no2){
//     int subtract=no2-no1;
//     return subtract;
//
//   }
//
// }

// main(){
//
//   getNumber(23);
//   getMultiplication( a: 50, b: 30);
// }
//
// getNumber(int x){
//   print('number is $x');
// }
//
// getMultiplication({required int a, required int b}){
//   int multiply=a*b;
//
//   print(multiply);
// }


void main() {
  // for(int i = 20; i>0 ; i--){
  //
  //   print('You Must Buy $i Bottles Milk now Left ${i - 1} bottles Milk  ');
  // }

  getMilk(10);

  // greeting(name: 'Subrata', age: 54);

  // double result = myFunction();
  // print(result);

  // int result= getMilkChange(money: 200, bottles: 2);
  // print(result);

  // int result= calculator(10, 20, subtract);
  // print(result);

  // Car myCar = Car(drive: fastDrive);
  // myCar.drive();
}

getMilk(int bottles) {
  for (int i = 10; i > 0; i--) {
    double cost = 20;
    String r = i <= 1 ? 'Bottle' : 'Bottles';

    print(
        'Your Stock $i $r Milk now Pass 1 Bottle. Left ${i - 1} $r  Milk Which Price is ${(i - 1) * cost}');
  }
}

void greeting({required String name, required int age}) {
  print('hello $name  you age is $age');
}

double myFunction() {
  double pi = 3.14289;
  return pi * 2;
}

int getMilkChange({required int money, required int bottles}) {
  int cost = bottles * 30;
  int change = money - cost;
  return change;
}

int add(int n1, int n2) {
  return n1 + n2;
}

int multiply(int n1, int n2) {
  return n1 * n2;
}

int subtract(int n1, int n2) {
  return n2 - n1;
}

int calculator(int n1, int n2, Function calCulte) {
  return calCulte(n1, n2);
}

class Car {
  Car({required this.drive});

  Function drive;
}

void slowDrive() {
  print('Drive Slowly');
}

void fastDrive() {
  print('Drive Fast');
}




// void main() {
//   print('Welcome To Dart');
//
//   var myclass=Myclass();
//   myclass.namePrint('habol');
//   //
//   //
//   //
//   //
//   myclass.namePrint('kala');
//   //
//   //
//   //
//   //
//
//   myclass.namePrint('Sumanta');
//   //
//   //
//   //
//   //
//
//   myclass.namePrint('Satya');
//   //
//   //
//   //
//   //
//
//   myclass.namePrint('mukto');
//
//   print(myclass.add(23, 445));
//
//
//   print(myclass.add(56, 67));
//
//   print(myclass.multiply(3, 6, 8));
//
//
// }
// class Myclass{
//   Myclass(){
//     print('My class objecct created');
//   }
//   void namePrint(String name){
//     print(name);
//   }
//   int add(int n1, int n2){
//
//     int sum= n1+n2;
//     return sum;
//
//
//   }
//   int multiply(int a,int b, int c){
//     int mult=a*b*c;
//     return mult;
//
//   }
//
// }
