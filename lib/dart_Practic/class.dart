import 'dart:io';

void main(){

  print('Subrata');

var man=Human(finger: 10, nose: 1, hand: 2);
print(man.hand);


}

class Human{
  int hand;
  int nose;
  int finger;


  Human({required this.finger,required this.nose,required this.hand});
}