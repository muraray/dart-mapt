import "feline.dart";
import 'dragon.dart';
import 'ghost.dart';

// multiple inheritance with Mixins
class Monster extends Feline with Dragon, Ghost {

  bool glowsInDark = true;

  @override
  void grow() {
    print("Growing as a monster");
    super.grow();
  }
}