
main(List<String> arguments) {

  // Error is a program to capture failures
  // Exemption can be handled

  try {
    int age;
    int dogYears = 10;

    // Custom exceptions
    if (dogYears != 7 ) throw new Exception("Dog year must be 7");

    // Throwning a exceptions
    if (age == null) throw new NullThrownError();
    print(age * dogYears);
  }
  on NullThrownError {
    print("Some of the value is null");
  }
  on NoSuchMethodError {
    print("Sorry that going to happen");
  }
  catch(e) {
    print("Unknown error: ${e.toString()}");
  }
  finally {
    print("Main method execution completed");
  }

}
