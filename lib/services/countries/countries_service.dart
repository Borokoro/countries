import 'package:countries/graphql/graphql_service.dart';
import 'package:countries/services/countries/countries_queries.dart';
import 'package:countries/types/models/country.dart';
import 'package:graphql/client.dart';
import 'package:countries/services/countries/countries_generator/countries_query.graphql.dart';

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

  Future<List<Country>> fetchCountriesGenerated() async {
    try {
      final QueryResult result = await _service.getDataFromGeneratedQuery(document: documentNodeQueryFetchCountries);

      if (result.hasException) {
        print({
          'graphql': result.exception?.graphqlErrors.toString(),
          'link': result.exception?.linkException.toString(),
        });

        throw Exception('Unknown error');
      }
      final Query$FetchCountries countries = Query$FetchCountries.fromJson(result.data!["countries"]);

      return List<Country>.from(countries.countries!.map((Query$FetchCountries$countries? country) => Country.fromGenerated(country!))).toList();
    } catch (ex) {
      print('Exception: $ex');
      throw Exception('Unknown error');
    }
  }
}
