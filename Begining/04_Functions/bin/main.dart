
import 'dart:math' show pi;

main(List<String> arguments) {

  // Functions with scope
  String name = "Murali";

  callMe();
  greatUs("Robot");

  print("Your age in dog years is ${getYears(34)}");

  int wall1 = squareFeet(10, 10);
  int wall2 = squareFeet(10, 20);
  int wall3 = squareFeet(10, 10);
  int wall4 = squareFeet(20, 10);
  int celling = squareFeet(20, 20);
  double paint = paintNeeded(wall1, wall2, wall3, wall4, celling);
  print("You need ${paint} gallons of paint");

  // Optional parameters
  sayHello("Muraray");
  download("uploaded.xslx", true);

  // Named parameters
  double circlea = perimeter_circle( radius:  23.45);
  print("Perimeter of the circle with radii 23.45 is ${circlea}");
  
  download_with_port("eighty.file");
  download_with_port("niety.file", port: 90);

  // Functions as Objects
  var table_12 = multiplication;
  table_12(12, multiplier: 5); // multiplication table 12 for 15 times

  // Anonymous function
  {}{
    print("Hello, \n");
  };

  List names = ["Murali", "Rama", "Krishnan"];
  Set<String> peoples = Set.from(names);
  print("---------------");
  print("Set of peoples");
  print("---------------");
  peoples.forEach((String people) {
    print(people);
  });

  print("\n---------------");
  peoples.where((String people) {
    switch(people) {
      case 'Murali':
        return true;
        break;
      case 'Rama':
        return false;
        break;
      default:
        return true;
        break;
    }
  }).forEach(print);

}

// As Objects
int multiplication(int table, {int multiplier: 10}) {
  for(int counter = 1; counter <= multiplier; counter++) {
    int multiple = counter * table;
    print("${counter} * ${table} = ${multiple}");
  }
}

double perimeter_circle({double radius}) {
  return 2 * pi * radius;
}

void download_with_port(String file, {int port: 80}) {
  print("Downloading ${file} on port ${port}");
}

// username is optional here
// should be with in the brackets
// should come at the end of the function parameters
void sayHello([String username = '']) {
  if(username.isNotEmpty) username = "," + username.padLeft((username.length + 1));
  print("Hello${username}");
}

// optional better example
void download(String file, [bool open = false]) {
  print("Downloading ${file}");
  if(open) print("Opening ${file}");
}

void greatUs(String greeting) {
  print("Welcome, Mr. ${greeting}");
}

void callMe() {
  print("Calling callMe() another function from the main() scope");
}

int getYears(int age) {
  return age * 7;
}

int squareFeet(int width, int length) {
  return width * length;
}

double paintNeeded(int wall1, int wall2, int wall3, int wall4, int celling) {
  int footage = wall1 + wall2 + wall3 + wall4 + celling;
  return (footage / 26);
}