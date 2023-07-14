import 'package:currency_converter/app/models/currencies_enum.dart';

enum Conversions {
  real(currency: Currencies.real, conversionList: {
    Currencies.real: 1.0,
    Currencies.dolar: 0.2085,
    Currencies.euro: 0.1858,
    Currencies.libra: 0.1588
  }),
  dolar(currency: Currencies.dolar, conversionList: {
    Currencies.real: 4.7966,
    Currencies.dolar: 1.0,
    Currencies.euro: 0.8909,
    Currencies.libra: 0.7616
  }),
  euro(currency: Currencies.dolar, conversionList: {
    Currencies.real: 5.3834,
    Currencies.dolar: 1.1224,
    Currencies.euro: 1.0,
    Currencies.libra: 0.8548
  }),
  libra(currency: Currencies.dolar, conversionList: {
    Currencies.real: 6.2971,
    Currencies.dolar: 1.3129,
    Currencies.euro: 1.1698,
    Currencies.libra: 1.0
  });

  const Conversions({required this.currency, required this.conversionList});

  final Currencies currency;
  final Map<Currencies, double> conversionList;
}
