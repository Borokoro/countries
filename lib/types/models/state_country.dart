import 'package:countries/services/countries/countries_generator/countries_query.graphql.dart';
import 'package:equatable/equatable.dart';

class StateCountry extends Equatable {
  final String name;

  const StateCountry({required this.name});

  factory StateCountry.fromJson(Map<String, dynamic> json) {
    return StateCountry(name: json["name"]);
  }

  factory StateCountry.fromGenerated(
      Query$FetchCountries$countries$states state,
      ) {
    return StateCountry(
      name: state.name,
    );
  }

  @override
  List<Object?> get props => [name];
}
