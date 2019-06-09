import 'package:class_02/class_02.dart' as math_class;
import 'package:class_02/myclass.dart';
import 'package:class_02/animal.dart';

main(List<String> arguments) {

  // Create a instance of the class
  MyClass mine = new MyClass();
  mine.sayHello("Murali Ramakrishnan");

  MyClass yours = new MyClass();
  yours.sayHello("Sowmiya Ramakrishnan");

  // Not really a class
  print('Hello world: ${math_class.calculate()}!');

  // Constructor
  print("\nWorking with Constructors");

  Animal cat = new Animal("Betty");
  cat.sayHello();

  Animal dog = new Animal("Frank");
  dog.sayHello();

  //  'this' Keyword
  print("\nWorking with 'this' Keyword");
  Dog doggy = new Dog(1, 'fiddo');
  print("${doggy.name} is ${doggy.ageInDogYears()} dog years old!");
  
}
