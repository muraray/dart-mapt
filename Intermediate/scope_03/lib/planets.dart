
import 'dart:math' show pow;

class Planets {

  String _name;
  double _distance = 0;

  Planets(String name, double distance) {
    _name = name;
    _distance = distance * (3 * pow(10, 8));
  }

  String get name => _name;
  void set name(String value) => _name = value;

  // getter and setter for distance property
  double get distance => _distance;
  void set distance(double value) => _distance = value * (3 * pow(10, 8));

  void info() {
    print("I'm a ${this.name} plant and ${distance} kilometers away from planet earth!");
  }

}