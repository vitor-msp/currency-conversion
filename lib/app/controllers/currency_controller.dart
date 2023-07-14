import 'package:currency_converter/app/models/currencies_enum.dart';
import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyController {
  TextEditingController fromCurrencyText;
  TextEditingController toCurrencyText;
  Currencies fromCurrency = Currencies.values[0];
  Currencies toCurrency = Currencies.values[1];

  CurrencyController(
      {required this.fromCurrencyText, required this.toCurrencyText});

  double _getValue() {
    return double.parse(fromCurrencyText.text.replaceAll(",", "."));
  }

  void convert() {
    double result =
        Currency(fromCurrency).convertValue(_getValue()).to(toCurrency);
    toCurrencyText.text = result.toStringAsFixed(2);
  }
}
