import 'package:currency_converter/app/controllers/currency_controller.dart';
import 'package:currency_converter/app/models/currencies_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  CurrencyController controller = CurrencyController(
      fromCurrencyText: TextEditingController(text: ""),
      toCurrencyText: TextEditingController(text: ""));

  test("ensure convert from REAL to DOLAR in controller", () {
    controller.fromCurrency = Currencies.real;
    controller.fromCurrencyText.text = "1.0";
    controller.toCurrency = Currencies.dolar;
    controller.convert();
    expect(controller.toCurrencyText.text, "0.2");
  });

  test("ensure convert from DOLAR to REAL in controller", () {
    controller.fromCurrency = Currencies.dolar;
    controller.fromCurrencyText.text = "1.0";
    controller.toCurrency = Currencies.real;
    controller.convert();
    expect(controller.toCurrencyText.text, "5.0");
  });

  test("ensure convert from DOLAR to REAL using comma", () {
    controller.fromCurrency = Currencies.dolar;
    controller.fromCurrencyText.text = "1,0";
    controller.toCurrency = Currencies.real;
    controller.convert();
    expect(controller.toCurrencyText.text, "5.0");
  });
}
