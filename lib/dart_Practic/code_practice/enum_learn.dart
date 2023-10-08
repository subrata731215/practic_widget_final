void main() {
  Car myCar = Car(carStle: CarType.hero);
  print(myCar.carStle);
}

enum CarType {
  suv,
  bularo,
  hero;
}

class Car {
  Car({required this.carStle});

  CarType carStle;
}
