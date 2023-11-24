
/// 13. Inherit Basic

// void main() {
//   var cl = Class3();
//   cl.fun();
//   print(cl.name);
// }
//
// class Class1 {
//   String name = 'Subrata';
//
//   fun() {
//     print('Class1 object');
//   }
// }
//
// class Class2 extends Class1 {}
//
// class Class3 extends Class2 {}

/// 13. Inherit Medium

void main() {
  var employee = Hr();
  print(employee.name);
  print(It().role());
  print(It().name);
}

class Emp {
  var name = 'Subrata';
  var age = 30;
  var designation = 'PO';
}

class It extends Emp {
  role() {
    print('Works all Networking');
  }
}

class Hr extends Emp {
  role() {
    print('works payment all employees');
  }
}