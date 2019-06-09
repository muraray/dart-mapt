import "package:polymorphism_04/monster.dart";
import 'package:polymorphism_04/manager.dart';
import 'package:polymorphism_04/racecar.dart';

main(List<String> arguments) {

  // multiple inheritance with Mixins
  Monster monty = new Monster();
  monty.grow();
  monty.fly();

  // Interface is a contact between 2 classes
  Manager bob = new Manager();
  bob.location();

  // Abstract class
  RaceCar meclaren = new RaceCar();
  meclaren.honk();
}
