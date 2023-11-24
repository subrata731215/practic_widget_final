/// 14. Polymorphism (Function Overloading)

void main() {
  var pl = Bowling();
  print(pl.playerName);
  print(Batter().playerName);
}

class Player {
  var playerName = 'Dhoni';
}

class Batter extends Player {
  var playerName = 'Sachin';

}

class Bowling extends Player {}
