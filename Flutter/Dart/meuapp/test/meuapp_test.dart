import 'package:meuapp/meuapp.dart';
import 'package:test/test.dart';

void main() {
  test('Test getAprov with average >= 7', () {
    expect(getAprov(8, 7), "Aprovado");
  });

  test('Test getAprov with average = 5', () {
    expect(getAprov(5, 5), "Recuperação");
  });

  test('Test getAprov with average < 5', () {
    expect(getAprov(4, 3), "Reprovado");
  });
}
