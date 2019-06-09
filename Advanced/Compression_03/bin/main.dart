import 'dart:io';
import 'dart:convert';
import 'package:archive/archive.dart';
import 'package:path/path.dart' as p;

main(List<String> arguments) {

  // Encoding and compression with GZIP

  /*String data = '';
  for(int i = 0; i < 100; i++) {
    data = data + "Hello, Robot\r\n";
  }

  // Original data
  List original = Utf8Codec().encode(data);

  // Compressed data
  List compressed  = GZipCodec().encode(original);

  // Decompressed data
  List decompressed = GZipCodec().decode(compressed);

  print('Original data ${original.length} bytes');
  print('Compressed data ${compressed.length} bytes');
  print('Decompressed data ${decompressed.length} bytes');

  String decoded = Utf8Codec().decode(original);
  assert(data == decoded);

  //print('Decoded ${decoded}');
  */

  /*
  // Encoding and compression with ZLIB
  // check the differences in the compression size for ZLIB
  int zlib = codecCompress(ZLibCodec());
  int gzip = codecCompress(GZipCodec());

  print('zlib compression length ${zlib}');
  print('gzip compression length ${gzip}');

 */

  // Compression with ZIP using a archive pub
  List<String> files = new List();
  print(Directory.current.path);

  // .listSync(recursive: true)
  Directory.current.listSync().forEach((FileSystemEntity fse) {
    if(fse.statSync().type == FileSystemEntityType.file) {
      files.add(fse.path);
    }
  });

  String zFile = "D:/Others/Samples/Dart/Mapt/Advanced/Compr.zip";
  zipFile(files, zFile);

  unZipFile(zFile, "D:/Others/Samples/Dart/Mapt/Advanced/unCompr");
}

void zipFile(List<String> files, String file) {
  Archive archive = new Archive();

  files.forEach((String path) {
    File file = new File(path);
    ArchiveFile archiveFile = new ArchiveFile(p.basename(path), file.lengthSync(), file.readAsBytesSync());
    archive.addFile(archiveFile);
  });

  ZipEncoder encoder = new ZipEncoder();
  File f = new File(file);
  f.writeAsBytesSync(encoder.encode(archive, level: Deflate.BEST_COMPRESSION));
  print('Zip file compressed');
}

void unZipFile(String zip, String path) {
  File file = new File(path);
  Archive archive = new ZipDecoder().decodeBytes(file.readAsBytesSync());
  archive.forEach((ArchiveFile archiveFile) {
    File file = new File(path + "/" + archiveFile.name);
    file.createSync(recursive: true);
    file.writeAsBytesSync(archiveFile.content);
  });
  print("Unzipped the commpressed file");
}

String generateData() {
  String data = '';
  for (int i = 0; i < 1000; i++) {
    data = data + 'Hello Robot' + '\r\n';
  }
  return data;
}

int codecCompress(var codec) {
  String data = generateData();

  List original = Utf8Codec().encode(data);

  List compressed = codec.encode(original);
  List decompressed = codec.decode(compressed);

  print('Testing ${codec.toString()}');
  print('Original ${original.length} bytes');
  print('Compressed data ${compressed.length} bytes');
  print('Decompressed data ${decompressed.length} bytes');

  print('');

  String decoded = Utf8Codec().decode(original);
  assert(data == decoded);

  return compressed.length;
}