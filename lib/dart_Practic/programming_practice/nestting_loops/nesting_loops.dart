/// Time for some fake graphics! Let’s say we want to draw game boards that look like this:

//  --- --- ---
// |   |   |   |
//  --- --- ---
// |   |   |   |
//  --- --- ---
// |   |   |   |
//  --- --- ---
// This one is 3x3 (like in tic tac toe).
//
// Ask the user what size game board they want to draw, and draw it for them to the screen using Dart’s print statement.

void main() {
  int squareSize = 3;

  String rowLine = ' ---';
  String columnLine = '|   ';

  for (var i = 1; i <= squareSize; i++) {
    print(columnLine * (squareSize + 1));
    print(rowLine * squareSize);
  }
}
