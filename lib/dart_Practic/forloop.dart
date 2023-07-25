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

// main() {
//   for (int i = 99; i > 0; i--) {
//
//     print(
//         '$i ${i < 2 ? 'bottle' : 'bottles'} of beer on the wall, $i ${i < 2 ? 'bottle' : 'bottles'} of beer.'
//         'Take one down and pass it around, ${(i - 1==0? 'No More' : i-1)}  ${(i - 1) == 1 ? 'bottle' : 'bottles'} of beer on the wall.');
//   }
// }

// main() {
//   for (int i = 2; i <= 10; i = i + 2) {
//     // if (i % 2 == 0) {
//     //   stdout.write('${i}  ');
//     // }
//
//     print(i);
//   }
//   ;
// }
//
//
// void main(){
//   for(int i =0; i<10;i++){
//     if(i==5 || i==6){
//       continue;
//     }else{
//       print('Hello $i');
//     }
//       print('Hello ${i+1}');
//
//     }
//   }

///  Pattern Programme  1

// void main() {
//   for (int i = 0; i <= 9; i++) {
//    String number = '$i,' * i;
//     print(number);
//   }
// }

///  Pattern Programme  2

// void main(){
//   for(int i=9;i>=0;i--){
//    // String number='$i' * i;
//     print('$i' * i);
//   }
//
// }

///  Pattern Programme  3

// void main() {
//   for (int i = 0; i <= 9; i++) {
//     print('*' * i);
//   }
// }

///  Pattern Programme  4

// void main(){
//
//   for(int i=9; i>0;i--){
//     print('*' * i);
//
//   }
// }

///  Pattern Programme  5

// void main(){
//   for (int i=9;i>0;i--){
//     print('$i ' * i );
//   }
//
// }

///  Pattern Programme  6

// void main(){
//
//   for (int i =0; i<=9;i++){
//     print('$i ' * i);
//   }
// }

///  Pattern Programme  7
//
// void main(){
//   for(int i=5;i>0;i--){
//
//     print('${i} ' * i);
//
//   }
//
// }

///  Pattern Programme  8
// void main(){
//   for(int i=5;i>0;i--){
//     for(int k =i;k>0;k--){
//       print('$k' *k);
//     }
//
//
//   }
//
// }

///  Pattern Programme  9

// void main() {
//   var sum = 0;
//
//   for (int i = 0; i < 20; i++) {
//     sum += i;
//   }
//
//   print(sum);
// }
///  Pattern Programme  10

// void main() {
//   int i, j;
//   int table_no = 20;
//   int max_no = 10;
//   for (i = 1; i <= table_no; i++) {
//     // outer loop
//     for (j = 0; j <= max_no; j++) {
//       // inner loop
//       print("${i} * ${j} = ${i * j}");
//       //print("\n"); /* blank line between tables */
//     }
//   }
// }

///  Pattern Programme  11

// void main() {
//   int k, l;
//   int tableNo = 2;
//   int maxNo = 3;
//   for (k = 1; k <= tableNo; k++) {
//     for (l = 1; l <= maxNo; l++) {
//       print('$k' * l);
//     }
//   }
//   ;
// }

///  Pattern Programme  12 video practice

// void main() {
//   for (int i = 1; i <= 5; i++) {
//     for (int j = 1; j <= i; j++) {
//       print( '$j' '$j' );
//
//     }
//
//   }
// }

void main(){
  for(int i =1;i<=5;i++){
    {
      for(int j=5;j>=1;j--){
        print('$j' * i);
      }
    }

  }

}