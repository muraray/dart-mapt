import 'dart:io';

main(List<String> arguments) {
  String path = "/";
  Directory dir = new Directory(path);

  if(dir.existsSync()) {
    print("Directory exists");
  } else {
    print("Directory does not exists");
  }

  // create temp directory
  //  using a static method  "systemTemp"
  /*Directory temp = Directory.systemTemp.createTempSync();
  print(temp.path);

  if(temp.existsSync()) {
    print("Removing the directory ${temp.path}");
    temp.deleteSync();
  } else {
    print('Could not find ${temp.path}');
  }*/

  // Listing the items in the directory
  /* Directory list = Directory.current;
  print(list.path);
  
  List<FileSystemEntity> files = list.listSync(recursive: true);
  print("Files in the current directory: ${files.length}");
  
  files.forEach((FileSystemEntity value) {
    FileStat stat = value.statSync();
    print("File path: ${value.path}");
    print("Changed: ${stat.changed}");
    print("Modified: ${stat.modified}");
    print("Accessed: ${stat.accessed}");
    print("Mode: ${stat.mode}");
    print("Size: ${stat.size}");
    print("");
  }); */

  // Creating you own files
  Directory read = Directory.current;
  print(read.path);

  File dFile = new File(read.path + "/myfile.txt");
  writeFile(dFile);
  readFile(dFile);

}

void writeFile(File file) {
   // Append or Write the file (FileMode.write completely erase the file)
  // Random access file
  RandomAccessFile raf = file.openSync(mode: FileMode.write);
  raf.writeStringSync('Hello Robot!\r\nHow are you today?\n');
  raf.flushSync();
  raf.closeSync();
}

void readFile(File file) {

  if(!file.existsSync()) {
    print('File not found');
    return;
  }

  // read as string
  print("Reading string from the file...");
  print(file.readAsStringSync());

  // read as bytes
  print("Reading bytes...");
  List values = file.readAsBytesSync();
  values.forEach((value) {
    print(value);
  });
}