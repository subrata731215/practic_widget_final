//main() {
// for(var i = 1 ; i<=20 ; i++){
//   print('hello World  ${i}');
// }

// for(var i =100; i>0; i--){
//   print ('hello ${i}');
// }

// for(int i=0; i<10; i++){
//
//   if(i==5){
//     break;
//   }
//   print(i);
//
//
// }

// int p= 20;
//
// for(int i =p ; i <50 ;i++ ){
//   print(i);
// }

//}

/// Try Angela Loop Example

// void main() {
//   for (var i = 100; i >= 1; i--) {
//     print('$i bottles  available');
//   }
// }

// void main() {
//   buyMilk(1);
// }

// void buyMilk(int days) {
//   for (int i = 100; i>= days; i--) {
//
//     print(
//         "$i bottles of beer on the wall, $i bottles of beer.Take one down and pass it around, ${i-1} bottles of beer on the wall.");
//   }
// }

main() {
  for (int i = 99; i > 0; i--) {

    print(
        '$i ${i < 2 ? 'bottle' : 'bottles'} of beer on the wall, $i ${i < 2 ? 'bottle' : 'bottles'} of beer.'
        'Take one down and pass it around, ${(i - 1==0? 'No More' : i-1)}  ${(i - 1) == 1 ? 'bottle' : 'bottles'} of beer on the wall.');
  }
}
