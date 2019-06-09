import 'dart:io';
import 'dart:async';

int counter = 0;
main(List<String> arguments) async {

  /*
  // Sync programming
  // Timers and callbacks
  Duration duration = new Duration(seconds: 1);
  Timer timer = new Timer.periodic(duration, timeout);
  print('Started ${getTime()}');

  // Async with futures
  String path = Directory.current.path + "/async.txt";
  print('Appending to ${path}');

  File file = new File(path);
  // working with future (just like a promise in javascript
  Future<RandomAccessFile> f = file.open(mode: FileMode.append);

  f.then((RandomAccessFile raf) {
    print("File has been opened!");

    raf.writeString("Hello robot").then((value) {
      print("file has been appended");
    }).catchError(()  => print("error spotted")).whenComplete(() => raf.close());
  });

  print('**** the future end.');
  */
  // pure Async
  File awaitfile = await appendFile();
  print('Appended to file ${awaitfile.path}');
  print('**** the awaitfile end');

}

Future<File> appendFile() {
  File file = new File(Directory.current.path + "/pure_async.txt");
  DateTime now = new DateTime.now();

  // return a future for the writing a file content
  return file.writeAsString(now.toString() + "\r\n", mode: FileMode.append);
}

void timeout(Timer timer) {
  print("Timeout: ${getTime()}");

  counter++;
  if(counter >= 5) timer.cancel();
}

String getTime() {
  DateTime dt = new DateTime.now();
  return dt.toString();
}
