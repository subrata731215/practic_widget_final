void main() {
  print('Welcome To Dart');

  var myclass=Myclass();
  myclass.namePrint('habol');
  //
  //
  //
  //
  myclass.namePrint('kala');
  //
  //
  //
  //

  myclass.namePrint('Sumanta');
  //
  //
  //
  //

  myclass.namePrint('Satya');
  //
  //
  //
  //

  myclass.namePrint('mukto');

  print(myclass.add(23, 445));


  print(myclass.add(56, 67));

  print(myclass.multiply(3, 6, 8));


}
class Myclass{
  Myclass(){
    print('My class objecct created');
  }
  void namePrint(String name){
    print(name);
  }
  int add(int n1, int n2){

    int sum= n1+n2;
    return sum;


  }
  int multiply(int a,int b, int c){
    int mult=a*b*c;
    return mult;

  }

}