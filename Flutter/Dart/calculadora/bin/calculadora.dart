import 'dart:io';
import 'package:calculadora/calculadora.dart' as calculadora;

void main(List<String> arguments) {
  print('Bem vindo a calculadora!');
  print('Digite o primeiro número:');
  var line = stdin.readLineSync();
  var num1 = double.parse(line ?? '0');
  print('Digite o segundo número:');
  line = stdin.readLineSync();
  var num2 = double.parse(line ?? '0');
  print('Digite a operação (+, -, *, /):');
  var operacao = stdin.readLineSync();
  var resultado = calculadora.calcular(num1, num2, operacao);
  print('O resultado é: $resultado');
}
