class Language {
  String name;
  String nameLocal;
  String iso6391;
  String iso6392;
  String iso6393;
  Set<String> locales;
  Set<String> tags;
  String mainCountryCode;
  String mainLocale;

  Language({
    required this.name,
    required this.nameLocal,
    required this.iso6391,
    required this.iso6392,
    required this.iso6393,
    required this.locales,
    required this.tags,
    required this.mainCountryCode,
    required this.mainLocale,
  });

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(
      name: json['name'],
      nameLocal: json['name_local'],
      iso6391: json['iso_639_1'],
      iso6392: json['iso_639_2'],
      iso6393: json['iso_639_3'],
      locales: List<String>.from(json['locales']).toSet(),
      tags: List<String>.from(json['tags']).map((tag) => tag.toLowerCase()).toSet(),
      mainCountryCode: json['main_country_code'],
      mainLocale: json['main_locale'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'name_local': nameLocal,
      'iso_639_1': iso6391,
      'iso_639_2': iso6392,
      'iso_639_3': iso6393,
      'locales': locales.toList(),
      'tags': tags.toList(),
      'main_country_code': mainCountryCode,
      'main_locale': mainLocale,
    };
  }
}
