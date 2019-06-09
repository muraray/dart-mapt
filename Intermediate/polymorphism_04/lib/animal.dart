class Animal {
  bool isAlive = true;
  void breath() => (isAlive) ? print("breathing") : print("dead");
}