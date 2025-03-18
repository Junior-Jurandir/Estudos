import 'dart:io';
import 'package:meuapp/meuapp.dart' as meuapp;

void main(List<String> arguments) {
  print("Informe a primeira nota: ");
  var line1 = stdin.readLineSync();
  var nota1 = double.parse(line1 ?? '0');
  print("Informe a segunda nota: ");
  var line2 = stdin.readLineSync();
  var nota2 = double.parse(line2 ?? '0');

  print(meuapp.getAprov(nota1, nota2));
  print(meuapp.getAprovNota1(nota1));
  print(meuapp.getAprovNota2(nota2));



}
