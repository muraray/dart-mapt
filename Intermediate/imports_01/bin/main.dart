import 'package:imports_01/imports_01.dart' as myCode;
import 'dart:convert';
import 'package:http/http.dart' as http;

main(List<String> arguments) {
  print('Hello world: ${myCode.calculate()}!');

  // Encoding - not encrypting
  // encoding is weak compared to encrypting is stronger

  String value = "@#@SERF#423#VE";
  List ebytes = Utf8Codec().encode(value);

  // Base 64 encoding
  String encoded = Base64Codec().encode(ebytes);
  
  print("Encoded bytes ${encoded} from the string ${value}");

  // Base 64 decoding
  List dbytes = Base64Codec().decode(encoded);
  String decoded = Utf8Codec().decode(dbytes);

  print("Decoded string ${decoded} from the encoded bytes ${encoded}");

  // Importing more packages from the global lib
  // import a http package
  var url = "http://www.voidrealms.com";
  http.get(url).then((response) {
    print("Response status ${response.statusCode}");
    print("Response body ${response.body}");
  });

}