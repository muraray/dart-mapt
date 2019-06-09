import "animal.dart";

class Mamal extends Animal {
  bool hasHair = true;
  bool hasBackbone = true;
  bool warmBlood = true;

  void walk() => print("walking");

  void grow() {
    print("growing as a mamal");
  }
}