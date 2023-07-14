import 'package:currency_converter/app/models/conversions_enum.dart';
import 'package:currency_converter/app/models/currencies_enum.dart';

class Currency {
  final Currencies fromCurrency;
  late double value;

  Currency(this.fromCurrency);

  Currency convertValue(double value) {
    this.value = value;
    return this;
  }

  double to(Currencies toCurrency) {
    final double conversionFactor = Conversions.values
            .where((c) => c.currency == fromCurrency)
            .first
            .conversionList[toCurrency] ??
        1.0;
    return value * conversionFactor;
  }
}
