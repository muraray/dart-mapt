
main(List<String> arguments) {

  // Assertions
  print("Starting");
  int age = 21;
  //assert(age == 33); // similar to throwing an error
  print("Finished");

  // If else
  if(age == 34) print("You are 34 years old");
  if(age != 34) print("You are not 34 years old");

  if(age < 18) {
    print("You are a minor");
    if(age < 13) {
      print("You not even a teenager");
    }
  }

  if(age > 65) {
    print("You are a senior");
    if(age > 102) {
      print("Yo are lucky to be alive");
    }
  }

  if (age == 21) {
    print("This is your special year");
  } else {
    print("This is just a normal year");
  }

  // Scopes
  age = 42;
  bool hasBalls = false;
  if(age > 21) {
    hasBalls = true;
    print("You are ${age} years old and has balls ${hasBalls}");
  } else {
    print("You are not ${age} years old and has balls ${hasBalls}");
  }

  // Switches
  // really work very well with enum

  String room = '5L';
  switch(room) {
    case '1L': 
      print("You are in Peral meeting room");
      break;
    case '2L':
      print("You are in Opal meeting room");
      break;
    case '3L':
      print("You are in Crystal meeting room");
      break;
    default:
      print("You are in bathroom");
      break;
  }

  // Loops
  int value;
  int init = 1;
  int max = 5;

  // do while loop, always evalvate at last
  value = init;
  do {
    print(value);
    value++;
  } while (value <= max);
  print("Done with the do loop");

  // while loop,  always evalvate at first
  // always recommend
  value = init;
  while (value <= max) {
    print(value);
    value++;
  }
  print("Done with the while loop");

  // Inifinite loop
  value = init;
  do {
    print("Value is ${value}");
    value++;

    if(value == 5) {
      print("Value is ${value}, will jump to skip another 20 blocks");
      value = value + 2;
      continue;
    }

    if(value == 10) {
      print("Value is ${value}, break  the loop from here!");
      break;
    }
  } while(true);

  // For loop, not to worry about the inifinite loop problem
  List l_peoples = ['Murali', 'Hari', 'Anantha'];
  print(l_peoples);

  for(int idx = 0; idx < l_peoples.length; idx++) {
    print("<List> Person at ${idx} is ${l_peoples[idx]}");
  }

  Set<String> s_peoples = Set.from(l_peoples);
  // much easier way if the object supports the collection or enumeration
  s_peoples.forEach((people) {
    print("<Set> Person: ${people}");
  });

}
