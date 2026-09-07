import 'package:countries/cubits/countries/countries_cubit.dart';
import 'package:countries/service_locator.dart';
import 'package:countries/services/countries/countries_service.dart';
import 'package:countries/types/models/country.dart';
import 'package:countries/types/models/language.dart';
import 'package:countries/utils/elements_spacing_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider<CountriesCubit>(
          create: (_) => _createCountriesCubit(),
          child: BlocBuilder<CountriesCubit, CountriesState>(builder: _mapStateToWidget),
        ),
      ),
    );
  }

  CountriesCubit _createCountriesCubit() {
    return CountriesCubit(serviceLocator.get<CountriesService>())..fetchCountries();
  }

  Widget _mapStateToWidget(BuildContext context, CountriesState state) {
    if (state is CountriesLoading || state is CountriesInitial) {
      return _getCountriesLoadingWidget();
    } else if (state is CountriesLoaded) {
      return _getCountriesLoadedWidget(context, state);
    } else {
      return _getCountriesErrorWidget();
    }
  }

  Widget _getCountriesLoadingWidget() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _getCountriesErrorWidget() {
    return Center(child: Text('Something went wrong'));
  }

  Widget _getCountriesLoadedWidget(BuildContext context, CountriesLoaded state) {
    return Padding(padding: EdgeInsets.all(12.0), child: _countriesListWidget(context, state));
  }

  Widget _countriesListWidget(BuildContext context, CountriesLoaded state) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8),
      shrinkWrap: true,
      itemCount: state.countries.length,
      itemBuilder: (context, index) => _getCountryRowWidget(context, state.countries[index], index),
    );
  }

  Widget _getCountryRowWidget(BuildContext context, Country country, int index) {
    return Container(
      color: index%2==0 ? Colors.green : Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getCountryName(country.name),
          _getCountryLanguages(country.languages),
        ].withHorizontalElementsSpacing(20),
      ),
    );
  }

  Widget _getCountryName(String countryName) {
    return Text(countryName);
  }

  Widget _getCountryLanguages(List<Language> countryLanguages) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int index = 0; index < countryLanguages.length; index++) ...{
          _getCountryLanguageName(countryLanguages[index].name),
        },
      ].withVerticalElementsSpacing(4),
    );
  }

  Widget _getCountryLanguageName(String name) {
    return Text(name);
  }
}
