import 'package:countries/graphql/graphql_service.dart';
import 'package:countries/services/countries/countries_service.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.instance;

void _initializeServices() {
  serviceLocator.registerSingleton<GraphqlService>(GraphqlService());
  serviceLocator.registerSingleton<CountriesService>(CountriesService(serviceLocator()));
}

void setupDependencies() {
  _initializeServices();
}