import 'package:scope_03/scope_03.dart' as scope_03;
import 'package:scope_03/animal.dart';
import 'package:scope_03/planets.dart';
import 'package:scope_03/looper.dart';

main(List<String> arguments) {
  print('Hello world: ${scope_03.calculate()}!');

  // Scoping
  for (int idx = 0; idx < 10; idx++) {
    print(idx);
    if (idx < 8) {
      //int idx = 5;
      if (idx > 4) {
        print("idx is <8 and >4");
      }
    }
  }

  // Encapsulation
  // define the public and private scoping
  Animal fluffy = new Animal("miffin", 8, "mixed");
  fluffy.breed = "short hair";

  // this will not work, because its a private variable with encapsulation
  // fluffy._name or fluffy.name = "fluffy";
  // fluffy._display()

  fluffy.whoAmI();

  // Getters and Setters
  Planets gliese = new Planets("Gliese",  0.029);
  gliese.info();

  gliese.name = "Gliese 581 e";
  gliese.distance= 0.03;

  gliese.info();

  // Static members
  Looper loopA = new Looper();
  Looper loopB = new Looper();
  Looper loopC = new Looper();

  Looper.breaker();

}
