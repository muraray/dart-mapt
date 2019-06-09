class Animal {
  String _name = '';

  /*Animal() {
    print("Constructed");
  }*/

  Animal(String name) {
    _name = name;
  }
  
  void sayHello() {
    if(_name.isEmpty) {
      print("Hello");
    } else {
      print("Hello, ${_name} nice to meet you!");
    }
  }

}

class Dog {
  int age = 2;
  String name = "fidddo";

  Dog(int age, String name) {
    this.age = age; // pointer to the Dog class age property
    this.name = name;  // pointer to the Dog class name property
  }

  int ageInDogYears() => age * 7;
}