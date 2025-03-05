// Objetivo: Mostrar o uso de funções em Dart.
String getAprov (nota1, nota2){
  if ((nota1 + nota2) / 2 >= 7){
    return "Aprovado";
  } else if ((nota1 + nota2) / 2 >= 5){
    return "Recuperação";
  } else {
    return "Reprovado";
  }
}