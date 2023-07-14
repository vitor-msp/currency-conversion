import 'package:flutter/material.dart';

class CurrencyLogoWidget extends StatelessWidget {
  const CurrencyLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 4,
          color: Colors.blue,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Image.asset(
        "assets/images/currency.png",
        scale: 0.5,
      ),
    );
  }
}
