///Exercise 4
///Create a program that asks the user for a number and then prints out a list of all the divisors of that number.

void main() {
  // int divisor = 4560;
  // int dividend = 34;
  //
  // int quotient = (divisor / dividend).round();
  // print('Quotient : $quotient');
  //
  // int reminder = divisor - (dividend * quotient);
  //
  // print('reminder : $reminder ');

  CalculateReminder cal = CalculateReminder(divisor: 121, dividend: 11);

  if (cal.reminder() == 0) {
    print('No Reminder');
  } else {
    print('Reminder is : ${cal.reminder()}');
  }
}

class CalculateReminder {
  int divisor;
  int dividend;

  CalculateReminder({required this.divisor, required this.dividend});

  int quotient() {
    return divisor ~/ dividend;
  }

  int reminder() {
    return divisor - (dividend * quotient());
  }
}
