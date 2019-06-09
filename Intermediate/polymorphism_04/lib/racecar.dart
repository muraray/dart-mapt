import 'car.dart';

class RaceCar extends Car {

  RaceCar () {
    this.hasHorn = true;
    this.hasWeels = true;
  }

  @override
  void honk() {
    print('beep beep from the raceCar');
    super.honk();
  }
}