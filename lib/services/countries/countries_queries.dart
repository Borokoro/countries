class CountriesQueries {
  static const String getAllCountries = r'''
    query CountriesQuery{
      countries{
        name
        native
        awsRegion
        capital
        continent {
          name
        }
        currencies
        currency
        emoji
        emojiU
        languages {
          name
          native
        }
        phone
        states {
          name
        }
      }
    }
  ''';
}
