import 'dart:math';

/// Exercise 9
///Generate a random number between 1 and 100. Ask the user to guess the number,
///then tell them whether they guessed too low, too high, or exactly right.

void main() {
  matchNo(17);
}

void matchNo(int guessNo) {
  int ranNo = Random().nextInt(30) + 1;
  print('Random No is : $ranNo');
  print('Your No is : $guessNo');

  if (ranNo == guessNo) {
    print('Your prediction is 100 %');
  } else if (ranNo > guessNo - 1 && ranNo < guessNo + 1) {
    print('Your Prediction is 90 %');
  } else if (ranNo > guessNo - 5 && ranNo < guessNo + 5) {
    print('Your Prediction is 80 %');
  } else if (ranNo > guessNo - 10 && ranNo < guessNo + 10) {
    print('Your Prediction is 50 %');
  } else if (ranNo > guessNo - 20 && ranNo < guessNo + 20) {
    print('Your Prediction is 20 %');
  } else {
    print('your prediction is 0 %');
  }
}
