import 'package:equatable/equatable.dart';

import 'continent.dart';
import 'language.dart';
import 'state_country.dart';

class Country extends Equatable {
  final String name;
  final String native;
  final String awsRegion;
  final String capital;
  final Continent continent;
  final List<String> currencies;
  final String? currency;
  final String emoji;
  final String emojiU;
  final List<Language> languages;
  final String phone;
  final List<StateCountry> states;

  const Country({
    required this.name,
    required this.native,
    required this.awsRegion,
    required this.capital,
    required this.continent,
    required this.currencies,
    required this.currency,
    required this.emoji,
    required this.emojiU,
    required this.languages,
    required this.phone,
    required this.states,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json["name"] ?? "",
      native: json["native"] ?? "",
      awsRegion: json["awsRegion"] ?? "",
      capital: json["capital"] ?? "",
      continent: json["continent"] != null ? Continent.fromJson(json["continent"]) : const Continent(name: ""),
      currencies: List<String>.from(json["currencies"] ?? []),
      currency: json["currency"],
      emoji: json["emoji"] ?? "",
      emojiU: json["emojiU"] ?? "",
      languages: (json["languages"] ?? []).map<Language>((language) => Language.fromJson(language)).toList(),
      phone: json["phone"] ?? "",
      states: (json["states"] ?? []).map<StateCountry>((state) => StateCountry.fromJson(state)).toList(),
    );
  }

  @override
  List<Object?> get props => [
    name,
    native,
    awsRegion,
    capital,
    continent,
    currencies,
    currency,
    emoji,
    emojiU,
    languages,
    phone,
    states,
  ];
}
