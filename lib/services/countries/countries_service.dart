import 'package:countries/graphql/graphql_service.dart';
import 'package:countries/services/countries/countries_queries.dart';
import 'package:countries/types/models/country.dart';
import 'package:graphql/client.dart';

class CountriesService {
  final GraphqlService _service;

  CountriesService(this._service);

  Future<List<Country>> fetchCountries() async {
    try {
      final QueryResult result = await _service.performQuery(query: CountriesQueries.getAllCountries);
      if (result.hasException) {
        print({
          'graphql': result.exception?.graphqlErrors.toString(),
          'link': result.exception?.linkException.toString(),
        });
        throw Exception("unknown error");
      } else {
        return List<Country>.from(result.data!["countries"].map((country) => Country.fromJson(country))).toList();
      }
    } catch (ex) {
      print('Exception: $ex');
      throw Exception("unknown error");
    }
  }
}
