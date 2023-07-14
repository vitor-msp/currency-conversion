import 'package:currency_converter/app/controllers/currency_controller.dart';
import 'package:currency_converter/app/widgets/currency_dropdown_widget.dart';
import 'package:flutter/material.dart';

class CurrencyBoxWidget extends StatelessWidget {
  const CurrencyBoxWidget(
      {super.key, required this.controller, required this.isCurrencyFrom});

  final CurrencyController controller;
  final bool isCurrencyFrom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CurrencyDropdownWidget(
              controller: controller, isCurrencyFrom: isCurrencyFrom),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: 150,
              child: TextField(
                controller: isCurrencyFrom
                    ? controller.fromCurrencyText
                    : controller.toCurrencyText,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Example: 1.99',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
