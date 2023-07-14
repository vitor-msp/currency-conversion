import 'package:currency_converter/app/models/currencies_enum.dart';
import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('ensure convert from REAL to DOLAR', () {
    final double result =
        Currency(Currencies.real).convertValue(1.0).to(Currencies.dolar);
    expect(result, 0.2);
  });

  test('ensure convert from DOLAR to REAL', () {
    final double result =
        Currency(Currencies.dolar).convertValue(1.0).to(Currencies.real);
    expect(result, 5);
  });
}
