
import 'dart:collection';

// Enum
enum Colors {
  Red,
  Green,
  Blue
}

// Main entry for the Dart application
main(List<String> arguments) {
  // Enumerator
  print(Colors.values);
  print(Colors.Blue);

  // Dart doesn't have arrays
  // King collection is List
  List n = [1, 2, 3, 4];
  print("Length of n is ${n.length}");
  print("First item is ${n[0]}");

  // print(n[1232]);  // Proceeds an error

  List things = new List();
  things.add(1);
  things.add("Apples");
  things.add(true);
  print("What's there in the things list: ${things}");

  // Generics
  // Associating with generic of int data types
  List<int> l_num = new List<int>();
  l_num.add(34);
  l_num.add(45);
  l_num.add(56); // cannot supply any other datatypes other than int
  print(l_num);

  // Sets - are unordered and do not contain duplicates
  Set<int> s_num = new Set<int>();
  s_num.add(23);
  s_num.add(45);
  s_num.add(23); // will be ignored by the runtime complier
  s_num.add(67);
  print(s_num);

  // Queues - are ordered,
  // Is not part of the standard library we have import from collection library
  Queue mails = new Queue();
  mails.add(1);
  mails.add(3);
  mails.add(2);
  mails.removeFirst();
  mails.removeLast();
  print(mails); // always thing the queue in dart are referr to line in a bank

  // Maps - Key value pair

  Map family = {'dad': 'Anand', 'son': 'Vishnu', 'daughter': 'Vaishnavi'};
  print(family);
  print("Keys from the family object: ${family.keys}");
  print("Values from the family object: ${family.values}");
  print("Dad is ${family['dad']}");
  print(family);

  // Another way of creating a map using a generic key and value datatype
  Map <String, String> people = new Map<String, String>();
  people.putIfAbsent('dad', () => 'Ananthakrishnan');
  people.putIfAbsent('son', () => 'Vishnu Saai');
  people.putIfAbsent('daughter', () => 'Vaishnavi');

  print("Son is ${people['son']}");
  print(people);

}