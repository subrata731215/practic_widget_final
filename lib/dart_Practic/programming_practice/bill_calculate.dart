/// Suppose, you often go to restaurant with friends and you have to split amount of bill.
/// Write a program to calculate split amount of bill. Formula= (total bill amount) / number of people.


void main(){

  print(calculateBill(2300, 3).toStringAsFixed(2));
  
}

double calculateBill(int totalBill,int noOfPeople){
  return totalBill/noOfPeople;

}
