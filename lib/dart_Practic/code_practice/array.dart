void main() {
  List<String> fruits = ['Orange', 'Banana', 'Watermelon', 'PineApple'];

  //fruits.forEach((fruit) => print(fruit));
  // var mappedFruits=fruits.map((fruit) => 'i like $fruit');
  // print(mappedFruits);

  List<Map<String, dynamic>> persons = [
    {'name': 'Subrata', 'age': 29},
    {'name': 'Sumanta', 'age': 28},
    {'name': 'Bisu', 'age': 21},
    {'name': 'Mukto', 'age': 20},
    {'name': 'JoydebDa', 'age': 32},
    {'name': 'Kala', 'age': 25},
    {'name': 'Sujit', 'age': 26},
    {'name': 'SatyaDa', 'age': 31},
  ];

  //var result=persons.every((person) => person['age']<= 20);
  // var result=persons.where((person) => person['age']<=40);
  //var result=persons.followedBy([{'name': 'Jaga','age' : 38}]);
  // print(result);
  // persons.forEach((person) => print(person['name']));
  // persons.forEach((person) => print(person['age']));

  List<int> numbers = [5, 10, 90, 60, 20, 50, 80];

 // numbers.sort((num1,num2)=>num1+num2);
  print(numbers);
 // print(numbers.reversed);
 // numbers.removeAt(2);
  numbers.add(0);
  print(numbers);
}
