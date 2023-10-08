/// Exercise 1
/// Create a program that asks the user to enter their name and their age.
/// Print out a message that tells how many years they have to be 100 years old.


void main() {
  Person p1 = Person('Subrata', 30);
  Person p2 = Person('Kala', 27);
  print(
      'My Name is ${p1.name} and My Age is ${p1.age} .  ${p1.name} will be Hundred Years after ${p1.toBe100()} years Later.');
  print(
      'My Name is ${p2.name} and My Age is ${p2.age} .  ${p2.name} will be Hundred years ${p2.toBe100()} years Later.');
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  int toBe100() {
    int a=100-age;
    return a;
  }
}
