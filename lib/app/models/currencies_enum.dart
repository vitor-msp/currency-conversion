enum Currencies {
  real(name: "Real"),
  dolar(name: "Dolar"),
  euro(name: "Euro"),
  libra(name: "Libra");

  const Currencies({required this.name});

  final String name;
}
