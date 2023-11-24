void main() {
  Car myCar = Car(carStyle: CarType.hero);
  print(myCar.carStyle);
}

enum CarType {
  suv,
  bolero,
  hero;
}

class Car {
  Car({required this.carStyle});

  CarType carStyle;
}

