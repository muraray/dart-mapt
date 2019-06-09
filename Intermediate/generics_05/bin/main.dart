import 'dart:core';
import 'package:generics_05/counter.dart';

main(List<String> arguments) {

  // code can handle different types
  List<int> numbers = new List<int>();
  numbers.addAll([1, 3, 5, 7, 9, 11]);
  print(numbers);

  List<String> strings = new List<String>();
  strings.addAll(['M', 'U', 'R', 'A', 'L', 'I']);
  print(strings);

  List <String> logTypes = new List <String>();
  logTypes.add(1.toString());
  logTypes.add("WARNING");

  // iterating across list
  for (String type in logTypes) {
    print(type);
  }

  Map <String, String> mur = { 'name': 'Murali', 'age': '34' };
  print("Employee : ${mur}");

  // Generics
  addNum<int>(23, 45);
  addNum<double>(23.343, 45.4545);
  //addNum<String>('Murali', "Rama");

  // List by default is generic
  List<int> values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(add(0, values));

  // Using a generic class
  Counter<double> dobules = new Counter<double>();
  dobules.addAll([1.0, 2.0, 3.0]);
  dobules.total();

}

// little more complex generic
void addNum<T extends num>(T a, T b) {
  print(a + b);
}

// more complex generics
T add<T extends num>(T value, List<T> items) {
  T ret = value;
  items.forEach((value) {
    ret = ret + value;
  });
  return ret;
}