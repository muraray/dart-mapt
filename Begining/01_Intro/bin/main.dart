import 'dart:io';
import 'dart:async';

// main entry point
main(List<String> arguments) {

  // Comment
  // this is a single line comment

  /* this is a block comment
      parsed over multi line
   */

  // Boolean Type
  // create a variable
  var isOn;
  bool isDog = false;

  isOn = true;
  print('isOn = ${isOn}');

  isOn = false;
  print('isOn = ${isOn}');

  print("isOn is a ${isOn.runtimeType}");

  // Number Type
  num age = 34;
  print('age = ${age}');

  // Int
  num people = 6.5;
  print('people = ${people}');

  // Double
  double temp = 36.96;
  print('temp = ${temp}');

  // Parsing an Int
  num test = num.parse("20.5");
  print('test = ${test}');

  int err = int.parse("12.09", onError:  (source) => null);
  print('err = ${err}');

  // basic math - assignment
  int dog_years = 7;
  int dog_age = age * dog_years;
  print('your age in dog years = ${dog_age}');

  // String Type
  String hello = 'hello world';
  String name = "Murali Ramakrishnan";
  print('Hello, ${name}');

  // Get a substring
  String firstname = name.substring(0, 6);
  print("First name: ${firstname}");

  // Get a index of a string as a pattern
  int index = name.indexOf(' ');
  String lastname = name.substring(index).trim();
  print("Last name: ${lastname}");

  // Length of a string
  print("${name.length} characters count are present in my name ${name}");

  // Contains
  print("Does my name has this # character ? : ${name.contains('#')}");

  // Create a list from the part of the string using split
  List parts = name.split(' ');
  print("${parts} parts of words are present in my name");
  print(parts[0]);
  print(parts[1]);

  // Constants
  String artist = 'Printy';
  const String location = 'town';
  // location = 'palani';
  print("Flaging a const (never change): ${artist} ${location}");

  // Capturing input from the user
  stdout.write('What is your name? \r\n');
  name = stdin.readLineSync();
  name.isEmpty ? stderr.write("Should need to enter your name!") : stdout.write("You entered this text as your name: ${name}");

}