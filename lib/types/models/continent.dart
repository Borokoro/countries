import 'package:countries/services/countries/countries_generator/countries_query.graphql.dart';
import 'package:equatable/equatable.dart';

class Continent extends Equatable {
  final String name;

  const Continent({required this.name});

  factory Continent.fromJson(Map<String, dynamic> json) {
    return Continent(name: json["name"]);
  }

  factory Continent.fromGenerated(
      Query$FetchCountries$countries$continent continent,
      ) {
    return Continent(
      name: continent.name,
    );
  }

  @override
  List<Object?> get props => [name];
}
