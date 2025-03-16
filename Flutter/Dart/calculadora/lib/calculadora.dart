double calcular(double num1, double num2, operacao) {
  switch (operacao) {
    case '+':
      return somar(num1, num2);
    case '-':
      return subtrair(num1, num2);
    case '*':
      return multiplicar(num1, num2);
    case '/':
      return dividir(num1, num2);
    default:
      return 0;
  }
}

Sting lerConsole(String texto) {
  print(texto);
  return stdin.readLineSync() ?? '0';
}

double somar(double num1, double num2) {
  return num1 + num2;
}

double subtrair(double num1, double num2) {
  return num1 - num2;
}

double multiplicar(double num1, double num2) {
  return num1 * num2;
}

double dividir(double num1, double num2) {
  return num1 / num2;
}