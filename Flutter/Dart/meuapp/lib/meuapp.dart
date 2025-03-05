// Objetivo: Mostrar o uso de funções em Dart.
String getAprov(double nota1, double nota2) {
  if ((nota1 + nota2) / 2 >= 7){
    return "Aluno aprovado com média ${(nota1 + nota2) / 2}";
  } else if ((nota1 + nota2) / 2 >= 5){
    return "Aluno de recuperação com média ${(nota1 + nota2) / 2}";
  } else {
    return "Aluno reprovado com média ${(nota1 + nota2) / 2}";
  }
}

String getAprovNota1(double nota1) {
  var resultado = (nota1 >= 7) ? "Aluno aprovado na primeira prova com nota $nota1" : "Aluno reprovado na primeira prova com nota $nota1";
  return resultado;
}

String getAprovNota2(double nota2) {
  var resultado = (nota2 >= 7) ? "Aluno aprovado na segunda prova com nota $nota2" : "Aluno reprovado na segunda prova com nota $nota2";
  return resultado;
}
