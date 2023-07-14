import 'package:currency_converter/app/controllers/currency_controller.dart';
import 'package:currency_converter/app/views/conversion_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Currency Conversion",
      theme: ThemeData.light(),
      home: ConversionView(
        controller: CurrencyController(
          fromCurrencyText: TextEditingController(),
          toCurrencyText: TextEditingController(),
        ),
      ),
    );
  }
}
