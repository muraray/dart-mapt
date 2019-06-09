class Animal {
  String _name = "";
  int _age = 0;
  String breed = "";

  Animal(String name, int age, String breed) {
    _name = name;
    _age = age;
    this.breed = breed;
  }

  void whoAmI() {
    var  message ="Hello my name is ${_name}, am ${_age} years old, and am belong to ${breed} family breed.";
    _display(message);
  }

  void _display(String message) {
    print(message);
  }

}
