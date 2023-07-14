import 'package:currency_converter/app/controllers/currency_controller.dart';
import 'package:currency_converter/app/models/currencies_enum.dart';
import 'package:flutter/material.dart';

class CurrencyDropdownWidget extends StatefulWidget {
  const CurrencyDropdownWidget(
      {super.key, required this.controller, required this.isCurrencyFrom});

  final CurrencyController controller;
  final bool isCurrencyFrom;

  @override
  State<CurrencyDropdownWidget> createState() =>
      CurrencyDropdownWidgetState(controller, isCurrencyFrom);
}

class CurrencyDropdownWidgetState extends State<CurrencyDropdownWidget> {
  CurrencyDropdownWidgetState(this.controller, this.isCurrencyFrom);

  final CurrencyController controller;
  final bool isCurrencyFrom;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Currencies>(
      value: isCurrencyFrom ? controller.fromCurrency : controller.toCurrency,
      items: Currencies.values
          .map(
            (c) => DropdownMenuItem<Currencies>(
              value: c,
              child: Text(c.name.toString()),
            ),
          )
          .toList(),
      onChanged: (value) {
        setState(() {
          if (isCurrencyFrom) {
            controller.fromCurrency = value ?? Currencies.real;
          } else {
            controller.toCurrency = value ?? Currencies.real;
          }
        });
      },
    );
  }
}
