import 'employee.dart';

// when you implement a interface you have build from ground up.
class Manager implements Employee {
  @override
  String name = "Bob";

  @override
  void location() {
    print("Location found [Manager]");
    print(super.toString());
  }

}