import 'package:countries/services/countries/countries_service.dart';
import 'package:countries/types/models/country.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'countries_state.dart';

class CountriesCubit extends Cubit<CountriesState> {
  CountriesCubit(this._countriesService) : super(CountriesInitial());

  final CountriesService _countriesService;

  void fetchCountries() async {
    emit(CountriesLoading());
    try {
      final List<Country> countries = await _countriesService.fetchCountries();
      emit(CountriesLoaded(countries: countries));
    } catch (e) {
      emit(CountriesError(error: e.toString()));
    }
  }
}
