import 'package:imc_calc_dart/imc_calc_dart.dart';
import 'package:test/test.dart';

void main() {
  group('calculo imc', () {
    final valuesToTest = {
      {'peso': 100, 'altura': 1.3}: 59.17,
      {'peso': 80, 'altura': 1.9}: 22.16,
      {'peso': 35, 'altura': 1.5}: 15.56,
    };

    valuesToTest.forEach((values, expected) {
      test('$values: $expected', () {
        expect(
            calculateIMC(
              double.parse(values["peso"].toString()),
              double.parse(values["altura"].toString()),
          ),
          equals(expected),);
      });
    });
  });

}
