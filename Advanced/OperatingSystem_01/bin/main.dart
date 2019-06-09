import 'dart:io';
import 'dart:convert';

main(List<String> arguments) {
  print('Operating System: ${Platform.operatingSystem} ${Platform.version}');
  
  if(Platform.isWindows) {
    print('Running on windows environment');
  } else {
    print('Running standard BSD environment');
  }

  print('Path: ${Platform.script.path}');
  print('Dart executables: ${Platform.executable}');

  /*print('Environment:');
  Platform.environment.keys.forEach((key) {
    print('Keys: ${key}\nValue: ${Platform.environment[key]} \n');
  }); */

  // Running a process
  // List all files in a directory - windows specific
  // ls -la for linux specific
  Process.run('dir', []).then((ProcessResult results) {
    print(results.stdout);

    // 0 is good , if any other number then some error
    // catch the error using stderr
    print('Exit code: ${results.exitCode}');
  });

  // Communicate with a process
  Process.start('notepad', ['']).then((Process process) {

    print('process pid: ${process.pid}');
    print('process stdout: ${process.stdout}');

    // transform the output by decoding
    process.stdout.transform(utf8.decoder).listen((data) {
      print('data: ${data}');
    });

    // send to the process
    process.stdin.writeln("Hello robot");

    // stop the process
    Process.killPid(process.pid);

    // exit code
    process.exitCode.then((int code) {
      print('Exit code: ${code}');

      //exit
      exit(0);
    });
  });

}


