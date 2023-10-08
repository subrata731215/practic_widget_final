/// Write a program to find quotient and remainder of two integers.

void main() {
  print(Answer(no1: 24, no2: 5).finalAnswer());
}

class Answer {
  double no1;
  double no2;

  Answer({required this.no1, required this.no2});

  double quotient() {
    return no1 / no2;
  }

  double reminder() {
    double multiplyTwoNo = (no2 * quotient().truncate());
    return no1 - multiplyTwoNo;
  }

  String finalAnswer() {
    return 'Quotient is : ${quotient()} and  Reminder is : ${reminder()}';
  }
}
