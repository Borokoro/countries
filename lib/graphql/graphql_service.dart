import 'package:graphql/client.dart';
import 'package:gql/ast.dart';

class GraphqlService {
  final HttpLink _httpLink = HttpLink('https://countries.trevorblades.com/');

  late final GraphQLClient _client;


  GraphqlService() {
    _client = GraphQLClient(link: _httpLink, cache: GraphQLCache());
  }

  Future<QueryResult> performQuery({required String query, Map<String, dynamic>? variables}) async {
    final QueryOptions options = QueryOptions(document: gql(query), variables: variables ?? {});

    final QueryResult result = await _client.query(options);
    return result;
  }

  Future<QueryResult> getDataFromGeneratedQuery({required DocumentNode document, Map<String, dynamic>? variables}) async{
    final QueryOptions options = QueryOptions(
      document: document,
      variables: variables ?? {},
    );

    final QueryResult result = await _client.query(
      options,
    );
    return result;
  }
}
