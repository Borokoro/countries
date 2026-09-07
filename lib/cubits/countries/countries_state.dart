part of 'countries_cubit.dart';

abstract class CountriesState extends Equatable {}

final class CountriesInitial extends CountriesState {
  @override
  List<Object?> get props => [];
}

final class CountriesLoading extends CountriesState {
  @override
  List<Object?> get props => [];
}

final class CountriesError extends CountriesState {
  final String error;

  CountriesError({required this.error});
  @override
  List<Object?> get props => [
    error,
  ];
}

final class CountriesLoaded extends CountriesState {
  final List<Country> countries;

  CountriesLoaded({required this.countries});
  @override
  List<Object?> get props => [countries];
}
