import 'dart:io';
import 'package:calculadora/calculadora.dart' as calculadora;

void main(List<String> arguments) {
  var num1 = lerConsoleDouble('Digite o primeiro número:');
  
  var num2 = lerConsoleDouble('Digite o segundo número:');
  
  var operacao = lerConsole('Digite a operação (+, -, *, /):');
  
  var resultado = calculadora.calcular(num1, num2, operacao);
  print('O resultado é: $resultado');
}
