// void main(){
//
//
// var obj=Human();
// print(obj.age);
// obj.human1(20,'Subrat');
// obj.nam='jhg';
// obj.human1(20, 'sdkjhdv');
//
// var obj2=Human();
// obj2.human1(2000, 'amit');
//
//
// }
//
// class Human{
//   int age=20;
//   late String nam;
//
//
//
//
//   human1(int age, nam ){
//
//     // print(age);
//     // print(name);
//     print('hello    ' +    nam);
//
//
//   }
//
// }

// void main() {
//   var obj1 = Class1('Subrata');
//   obj1.fun1();
//
//   var obj2 = Class1('Amit');
//   obj2.fun1();
// }
//
// class Class1 {
//
//   late String name;
//
//   Class1(nam) {
//     this.name = nam;
//   }
//
//   fun1() {
//     print('I am $name');
//   }
//
//
// }

// void main() {
// var stu1= Student('Subrata', 2, 20);
//   print(stu1.myFun());
//
//   var stu2=Student('Sumanta pal', 3, 29);
//
//   print(stu2.myFun());
//
//
//   var address1=StuAddress(vill: 'NAnoor', mobNo: 2354858, ps: "Barsfs");
//   print(address1.addressss());
//
// }
//
// class Student {
//   late String name;
//   late int rollNo;
//   late int age;
// Student(this.name,this.rollNo,this.age);
//
//   myFun() {
//     print('I Am $name , me age is $age , my RollNo is $rollNo');
//   }
//
//
//
// }
//
// class StuAddress{
//   String vill;
//   String ps;
//   int mobNo;
//
//   StuAddress({required this.vill, required this.mobNo, required this.ps});
//
// addressss(){
//   print('my village name is $vill, my Mobile no is $mobNo, My ps is $ps');
// }
//
// }

// import 'function.dart';
//
// void main(){
//   Car myCar=Car(drive: fastDrive);
//   myCar.drive();
//   myCar.drive=slowDrive;
//   myCar.drive();
//
//
// }
// class Car{
//   Function drive;
//
//   Car({ required this.drive});
//
//   void slowDrive(){
//      print('Drive Slowly pls');
//
//   }
//   void fastDrive(){
//     print('Drive Super Fast');
//   }
//
//
// }

// import 'function.dart';
//
// main() {
//   Car mycar = Car(drive: fastDrive);
//   mycar.drive();
//   mycar=Car(drive: slowDrive);
//   mycar.drive();
//
//
// }
//
// class Car {
//   Car({required this.drive});
//
//   Function drive;
// }
//
// void slowDrive() {
//   print('Please Drive Slow');
// }
//
// void fastDrive() {
//   print('Drive Super Fast');
// }

void main() {
  //  Human subrata = Human(height: 150, age: 20, gender: Gender.female);
  // // print(subrata.age);
  //  subrata.whatToSay(whattosay: 'Sumanta is a good Boy');
  // // subrata.gender == Gender.male ? print('true') : print('false');
  // subrata.canBuyAlcoholl();

  Human sumanta = Human(height: 100, age: 99, gender: Gender.male);
  sumanta.canBuyAlcoholl();
  sumanta.whatToSay(whattosay: 'whattosay : Priyanka is my Girlfriend');
  sumanta.girlFrind();
}

class Human {
  double height;
  int age;
  Gender gender;

  Human({required this.height, required this.age, required this.gender});

  void whatToSay({required String whattosay}) {
    print(whattosay);
  }

  void canBuyAlcoholl() {
    if (age > 21) {
      print('Kinte Paro');
    } else {
      print('kena jabe na');
    }
  }
  void girlFrind(){
    if(age>30){
      print('Priyanka is my girlFriend');
    }else{
      print('No GirlFriend');
    }
  }
}

enum Gender {
  male,
  female,
}
