import 'package:currency_converter/app/controllers/currency_controller.dart';
import 'package:currency_converter/app/widgets/currency_box_widget.dart';
import 'package:currency_converter/app/widgets/currency_logo_widget.dart';
import 'package:flutter/material.dart';

class ConversionView extends StatelessWidget {
  const ConversionView({super.key, required this.controller});

  final CurrencyController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Currency Conversion")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CurrencyLogoWidget(),
            CurrencyBoxWidget(controller: controller, isCurrencyFrom: true),
            CurrencyBoxWidget(
              controller: controller,
              isCurrencyFrom: false,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  controller.convert();
                },
                style: ElevatedButton.styleFrom(minimumSize: const Size(100, 50)),
                child: const Text("Convert"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
