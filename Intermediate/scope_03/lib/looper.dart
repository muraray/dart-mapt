
class Looper {
  static int _counter = 0;

  Looper() {
    _counter++;
    print("There are ${_counter} of us");
  }

  static void run() {
    print("Looping the paradox");
  }

  static void breaker() {
    print("Breaking to run");
    run();
  }
}