class Country {
  final String name;
  final Set<String> localNames;
  final String code;
  final String currencyCode;
  final String flag;

  Country({
    required this.name,
    required this.localNames,
    required this.code,
    required this.currencyCode,
    required this.flag,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name'],
      localNames: List<String>.from(json['local_names']).toSet(),
      code: json['code'],
      currencyCode: json['currency_code'],
      flag: json['flag'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'local_names': localNames.toList(),
      'code': code,
      'currency_code': currencyCode,
      'flag': flag,
    };
  }
}
