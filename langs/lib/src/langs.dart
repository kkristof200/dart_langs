import 'package:langs/src/classes/country.dart';
import 'package:langs/src/classes/currency.dart';
import 'package:langs/src/classes/language.dart';

import 'package:langs/src/data/countries.dart';
import 'package:langs/src/data/currencies.dart';
import 'package:langs/src/data/languages.dart';

class Langs {
  final Map<String, Language> _languages;
  final Map<String, Country>  _countries;
  final Map<String, Currency> _currencies;

  Langs():
    _languages  = dataLanguages.map((key, json)  => MapEntry(key.toLowerCase(), Language.fromJson(json))),
    _countries  = dataCountries.map((key, json)  => MapEntry(key.toLowerCase(), Country.fromJson(json))),
    _currencies = dataCurrencies.map((key, json) => MapEntry(key.toLowerCase(), Currency.fromJson(json)))
  ;

  Language? parseMulti(List<String> langStrings) {
    for (final langString in langStrings) {
      final lang = parse(langString);

      if (lang != null) {
        return lang;
      }
    }

    return null;
  }

  Language? parse(String langString) {
    langString = langString.toLowerCase();
    Language? lang = _languages[langString];

    if (lang != null) {
      return lang;
    }

    for (final langData in _languages.values) {
      if (langData.tags.contains(langString)) {
        return langData;
      }
    }

    return null;
  }

  Country? language(String code) {
    return _languages[code.toLowerCase()];
  }
  Country? country(String code) {
    return _countries[code.toLowerCase()];
  }
  Currency? currency(String code) {
    return _currencies[code.toLowerCase()];
  }
}
