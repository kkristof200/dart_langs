class Currency {
  final String name;
  final String nameLocal;
  final String code;
  final String symbol;
  final int numeric;
  final int subunitValue;
  final String subunitName;

  Currency({
    required this.name,
    required this.nameLocal,
    required this.code,
    required this.symbol,
    required this.numeric,
    required this.subunitValue,
    required this.subunitName,
  });

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      name: json['name'],
      nameLocal: json['name_local'],
      code: json['code'],
      symbol: json['symbol'],
      numeric: json['numeric'],
      subunitValue: json['subunit_value'],
      subunitName: json['subunit_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'name_local': nameLocal,
      'code': code,
      'symbol': symbol,
      'numeric': numeric,
      'subunit_value': subunitValue,
      'subunit_name': subunitName,
    };
  }
}
