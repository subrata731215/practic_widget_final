void main() {
  /* int age = 35;
  bool isAdult = false;

   if (age < 20) {
    print('Joydeb');
  }  else if(age<30){
    print('25_30');
  }

  if(isAdult==false && age <20){
    print('true');
  }else(print('new'));*/

  String someValue = 'Subrata';
  int age=20;
  String value = someValue.endsWith('S') ? '90' : '80';
  print(value);

  switch (someValue) {
    case 'Subrata' when age>20:
      print('ki re');
      break;

    case 'Hi':
      print('Hello');
      break;
      default: print('Ami kala');

  }
}
