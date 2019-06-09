import 'mamal.dart';

class Feline extends Mamal {
  var hasClaws = true;
  void growl() => print("grrrrrrrr");

  @override
  void grow() {
    print("growing as a feline");
    super.grow();
  }
}