import 'dart:io';
import 'dart:convert';

void createJSON () {
  var path = Directory.current.path;
  print(path); //console o/p
  path = path.replaceAll("\\", '/');
  print(path); //console o/p
  var file1 = '$path/file1.json';
  var file = File(file1);
  var sink = file.openWrite();
  sink.write('{"name" : "hehehe"}');
  sink.close();
  print('done'); //console o/p
}

void main() {
  createJSON();
}