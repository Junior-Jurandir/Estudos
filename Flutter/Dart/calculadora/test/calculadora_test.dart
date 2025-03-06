import 'package:calculadora/calculadora.dart';
import 'package:test/test.dart';

void main() {
  test('addition', () {
    expect(calcular(2, 3, '+'), 5);
  });

  test('subtraction', () {
    expect(calcular(5, 3, '-'), 2);
  });

  test('multiplication', () {
    expect(calcular(2, 3, '*'), 6);
  });

  test('division', () {
    expect(calcular(6, 3, '/'), 2);
  });

  test('unknown operation', () {
    expect(calcular(2, 3, '%'), 0);
  });
}
