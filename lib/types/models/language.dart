import 'package:countries/services/countries/countries_generator/countries_query.graphql.dart';
import 'package:equatable/equatable.dart';

class Language extends Equatable {
  final String name;
  final String native;

  const Language({required this.name, required this.native});

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(name: json["name"], native: json["native"]);
  }

  factory Language.fromGenerated(
      Query$FetchCountries$countries$languages language,
      ) {
    return Language(
      name: language.name,
      native: language.native,
    );
  }

  @override
  List<Object?> get props => [name, native];
}
