import 'package:graphql/client.dart';

class GraphqlService {
  final HttpLink _httpLink = HttpLink('https://countries.trevorblades.com/');

  late GraphQLClient _client;


  GraphqlService() {
    _client = GraphQLClient(link: _httpLink, cache: GraphQLCache());
  }

  Future<QueryResult> performQuery({required String query, Map<String, dynamic>? variables}) async {
    QueryOptions options = QueryOptions(document: gql(query), variables: variables ?? {});

    final QueryResult result = await _client.query(options);
    return result;
  }
}
