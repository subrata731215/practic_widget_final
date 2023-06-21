// void main(){
//   int a = 100;
//   int b = 200;
//   if(a==400 || b>100){
//
//     print('block 1');
//   }else {
//     print('Block 2');
//   }
//
//
//   // if(a<200 && b>200){
//   //   print('block 1');
//   //
//   // } else if (a<=200 && b>50){
//   //   print('block 2');
//   // }
//
//
//
// }

import 'dart:math';

void main(){

  loveCalculator();
}

void loveCalculator(){
  int loveScore= Random().nextInt(100)+1;
  print(loveScore);

  if(loveScore>70){
    print('70+');
  }
  if(loveScore>50 && loveScore<70){
    print('50-70');
  }
  if(loveScore<50){
    print('50-');
  }


}









