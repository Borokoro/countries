import 'package:gql/ast.dart';

class Query$FetchCountries {
  Query$FetchCountries({this.countries, this.$__typename = 'Query'});

  factory Query$FetchCountries.fromJson(Map<String, dynamic> json) {
    final l$countries = json['countries'];
    final l$$__typename = json['__typename'];
    return Query$FetchCountries(
      countries: (l$countries as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$FetchCountries$countries.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchCountries$countries?>? countries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countries = countries;
    _resultData['countries'] = l$countries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countries = countries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$countries == null ? null : Object.hashAll(l$countries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchCountries || runtimeType != other.runtimeType) {
      return false;
    }
    final l$countries = countries;
    final lOther$countries = other.countries;
    if (l$countries != null && lOther$countries != null) {
      if (l$countries.length != lOther$countries.length) {
        return false;
      }
      for (int i = 0; i < l$countries.length; i++) {
        final l$countries$entry = l$countries[i];
        final lOther$countries$entry = lOther$countries[i];
        if (l$countries$entry != lOther$countries$entry) {
          return false;
        }
      }
    } else if (l$countries != lOther$countries) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchCountries on Query$FetchCountries {
  CopyWith$Query$FetchCountries<Query$FetchCountries> get copyWith =>
      CopyWith$Query$FetchCountries(this, (i) => i);
}

abstract class CopyWith$Query$FetchCountries<TRes> {
  factory CopyWith$Query$FetchCountries(
    Query$FetchCountries instance,
    TRes Function(Query$FetchCountries) then,
  ) = _CopyWithImpl$Query$FetchCountries;

  factory CopyWith$Query$FetchCountries.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCountries;

  TRes call({
    List<Query$FetchCountries$countries?>? countries,
    String? $__typename,
  });
  TRes countries(
    Iterable<Query$FetchCountries$countries?>? Function(
      Iterable<
        CopyWith$Query$FetchCountries$countries<Query$FetchCountries$countries>?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$FetchCountries<TRes>
    implements CopyWith$Query$FetchCountries<TRes> {
  _CopyWithImpl$Query$FetchCountries(this._instance, this._then);

  final Query$FetchCountries _instance;

  final TRes Function(Query$FetchCountries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countries = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$FetchCountries(
      countries: countries == _undefined
          ? _instance.countries
          : (countries as List<Query$FetchCountries$countries?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes countries(
    Iterable<Query$FetchCountries$countries?>? Function(
      Iterable<
        CopyWith$Query$FetchCountries$countries<Query$FetchCountries$countries>?
      >?,
    )
    _fn,
  ) => call(
    countries: _fn(
      _instance.countries?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$FetchCountries$countries(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$FetchCountries<TRes>
    implements CopyWith$Query$FetchCountries<TRes> {
  _CopyWithStubImpl$Query$FetchCountries(this._res);

  TRes _res;

  call({
    List<Query$FetchCountries$countries?>? countries,
    String? $__typename,
  }) => _res;

  countries(_fn) => _res;
}

const documentNodeQueryFetchCountries = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchCountries'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'countries'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'native'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'awsRegion'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'capital'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'continent'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'currencies'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'currency'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'emoji'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'emojiU'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'languages'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'native'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'phone'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'states'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);

class Query$FetchCountries$countries {
  Query$FetchCountries$countries({
    required this.name,
    required this.native,
    required this.awsRegion,
    required this.capital,
    required this.continent,
    required this.currencies,
    this.currency,
    required this.emoji,
    required this.emojiU,
    required this.languages,
    required this.phone,
    required this.states,
    this.$__typename = 'Country',
  });

  factory Query$FetchCountries$countries.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$native = json['native'];
    final l$awsRegion = json['awsRegion'];
    final l$capital = json['capital'];
    final l$continent = json['continent'];
    final l$currencies = json['currencies'];
    final l$currency = json['currency'];
    final l$emoji = json['emoji'];
    final l$emojiU = json['emojiU'];
    final l$languages = json['languages'];
    final l$phone = json['phone'];
    final l$states = json['states'];
    final l$$__typename = json['__typename'];
    return Query$FetchCountries$countries(
      name: (l$name as String),
      native: (l$native as String),
      awsRegion: (l$awsRegion as String),
      capital: (l$capital as String),
      continent: Query$FetchCountries$countries$continent.fromJson(
        (l$continent as Map<String, dynamic>),
      ),
      currencies: (l$currencies as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      currency: (l$currency as String?),
      emoji: (l$emoji as String),
      emojiU: (l$emojiU as String),
      languages: (l$languages as List<dynamic>)
          .map(
            (e) => Query$FetchCountries$countries$languages.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      phone: (l$phone as String),
      states: (l$states as List<dynamic>)
          .map(
            (e) => Query$FetchCountries$countries$states.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String native;

  final String awsRegion;

  final String capital;

  final Query$FetchCountries$countries$continent continent;

  final List<String> currencies;

  final String? currency;

  final String emoji;

  final String emojiU;

  final List<Query$FetchCountries$countries$languages> languages;

  final String phone;

  final List<Query$FetchCountries$countries$states> states;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$awsRegion = awsRegion;
    _resultData['awsRegion'] = l$awsRegion;
    final l$capital = capital;
    _resultData['capital'] = l$capital;
    final l$continent = continent;
    _resultData['continent'] = l$continent.toJson();
    final l$currencies = currencies;
    _resultData['currencies'] = l$currencies.map((e) => e).toList();
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$emoji = emoji;
    _resultData['emoji'] = l$emoji;
    final l$emojiU = emojiU;
    _resultData['emojiU'] = l$emojiU;
    final l$languages = languages;
    _resultData['languages'] = l$languages.map((e) => e.toJson()).toList();
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$states = states;
    _resultData['states'] = l$states.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$native = native;
    final l$awsRegion = awsRegion;
    final l$capital = capital;
    final l$continent = continent;
    final l$currencies = currencies;
    final l$currency = currency;
    final l$emoji = emoji;
    final l$emojiU = emojiU;
    final l$languages = languages;
    final l$phone = phone;
    final l$states = states;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$native,
      l$awsRegion,
      l$capital,
      l$continent,
      Object.hashAll(l$currencies.map((v) => v)),
      l$currency,
      l$emoji,
      l$emojiU,
      Object.hashAll(l$languages.map((v) => v)),
      l$phone,
      Object.hashAll(l$states.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchCountries$countries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) {
      return false;
    }
    final l$awsRegion = awsRegion;
    final lOther$awsRegion = other.awsRegion;
    if (l$awsRegion != lOther$awsRegion) {
      return false;
    }
    final l$capital = capital;
    final lOther$capital = other.capital;
    if (l$capital != lOther$capital) {
      return false;
    }
    final l$continent = continent;
    final lOther$continent = other.continent;
    if (l$continent != lOther$continent) {
      return false;
    }
    final l$currencies = currencies;
    final lOther$currencies = other.currencies;
    if (l$currencies.length != lOther$currencies.length) {
      return false;
    }
    for (int i = 0; i < l$currencies.length; i++) {
      final l$currencies$entry = l$currencies[i];
      final lOther$currencies$entry = lOther$currencies[i];
      if (l$currencies$entry != lOther$currencies$entry) {
        return false;
      }
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$emoji = emoji;
    final lOther$emoji = other.emoji;
    if (l$emoji != lOther$emoji) {
      return false;
    }
    final l$emojiU = emojiU;
    final lOther$emojiU = other.emojiU;
    if (l$emojiU != lOther$emojiU) {
      return false;
    }
    final l$languages = languages;
    final lOther$languages = other.languages;
    if (l$languages.length != lOther$languages.length) {
      return false;
    }
    for (int i = 0; i < l$languages.length; i++) {
      final l$languages$entry = l$languages[i];
      final lOther$languages$entry = lOther$languages[i];
      if (l$languages$entry != lOther$languages$entry) {
        return false;
      }
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$states = states;
    final lOther$states = other.states;
    if (l$states.length != lOther$states.length) {
      return false;
    }
    for (int i = 0; i < l$states.length; i++) {
      final l$states$entry = l$states[i];
      final lOther$states$entry = lOther$states[i];
      if (l$states$entry != lOther$states$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchCountries$countries
    on Query$FetchCountries$countries {
  CopyWith$Query$FetchCountries$countries<Query$FetchCountries$countries>
  get copyWith => CopyWith$Query$FetchCountries$countries(this, (i) => i);
}

abstract class CopyWith$Query$FetchCountries$countries<TRes> {
  factory CopyWith$Query$FetchCountries$countries(
    Query$FetchCountries$countries instance,
    TRes Function(Query$FetchCountries$countries) then,
  ) = _CopyWithImpl$Query$FetchCountries$countries;

  factory CopyWith$Query$FetchCountries$countries.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCountries$countries;

  TRes call({
    String? name,
    String? native,
    String? awsRegion,
    String? capital,
    Query$FetchCountries$countries$continent? continent,
    List<String>? currencies,
    String? currency,
    String? emoji,
    String? emojiU,
    List<Query$FetchCountries$countries$languages>? languages,
    String? phone,
    List<Query$FetchCountries$countries$states>? states,
    String? $__typename,
  });
  CopyWith$Query$FetchCountries$countries$continent<TRes> get continent;
  TRes languages(
    Iterable<Query$FetchCountries$countries$languages> Function(
      Iterable<
        CopyWith$Query$FetchCountries$countries$languages<
          Query$FetchCountries$countries$languages
        >
      >,
    )
    _fn,
  );
  TRes states(
    Iterable<Query$FetchCountries$countries$states> Function(
      Iterable<
        CopyWith$Query$FetchCountries$countries$states<
          Query$FetchCountries$countries$states
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$FetchCountries$countries<TRes>
    implements CopyWith$Query$FetchCountries$countries<TRes> {
  _CopyWithImpl$Query$FetchCountries$countries(this._instance, this._then);

  final Query$FetchCountries$countries _instance;

  final TRes Function(Query$FetchCountries$countries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? native = _undefined,
    Object? awsRegion = _undefined,
    Object? capital = _undefined,
    Object? continent = _undefined,
    Object? currencies = _undefined,
    Object? currency = _undefined,
    Object? emoji = _undefined,
    Object? emojiU = _undefined,
    Object? languages = _undefined,
    Object? phone = _undefined,
    Object? states = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$FetchCountries$countries(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      native: native == _undefined || native == null
          ? _instance.native
          : (native as String),
      awsRegion: awsRegion == _undefined || awsRegion == null
          ? _instance.awsRegion
          : (awsRegion as String),
      capital: capital == _undefined || capital == null
          ? _instance.capital
          : (capital as String),
      continent: continent == _undefined || continent == null
          ? _instance.continent
          : (continent as Query$FetchCountries$countries$continent),
      currencies: currencies == _undefined || currencies == null
          ? _instance.currencies
          : (currencies as List<String>),
      currency: currency == _undefined
          ? _instance.currency
          : (currency as String?),
      emoji: emoji == _undefined || emoji == null
          ? _instance.emoji
          : (emoji as String),
      emojiU: emojiU == _undefined || emojiU == null
          ? _instance.emojiU
          : (emojiU as String),
      languages: languages == _undefined || languages == null
          ? _instance.languages
          : (languages as List<Query$FetchCountries$countries$languages>),
      phone: phone == _undefined || phone == null
          ? _instance.phone
          : (phone as String),
      states: states == _undefined || states == null
          ? _instance.states
          : (states as List<Query$FetchCountries$countries$states>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$FetchCountries$countries$continent<TRes> get continent {
    final local$continent = _instance.continent;
    return CopyWith$Query$FetchCountries$countries$continent(
      local$continent,
      (e) => call(continent: e),
    );
  }

  TRes languages(
    Iterable<Query$FetchCountries$countries$languages> Function(
      Iterable<
        CopyWith$Query$FetchCountries$countries$languages<
          Query$FetchCountries$countries$languages
        >
      >,
    )
    _fn,
  ) => call(
    languages: _fn(
      _instance.languages.map(
        (e) => CopyWith$Query$FetchCountries$countries$languages(e, (i) => i),
      ),
    ).toList(),
  );

  TRes states(
    Iterable<Query$FetchCountries$countries$states> Function(
      Iterable<
        CopyWith$Query$FetchCountries$countries$states<
          Query$FetchCountries$countries$states
        >
      >,
    )
    _fn,
  ) => call(
    states: _fn(
      _instance.states.map(
        (e) => CopyWith$Query$FetchCountries$countries$states(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$FetchCountries$countries<TRes>
    implements CopyWith$Query$FetchCountries$countries<TRes> {
  _CopyWithStubImpl$Query$FetchCountries$countries(this._res);

  TRes _res;

  call({
    String? name,
    String? native,
    String? awsRegion,
    String? capital,
    Query$FetchCountries$countries$continent? continent,
    List<String>? currencies,
    String? currency,
    String? emoji,
    String? emojiU,
    List<Query$FetchCountries$countries$languages>? languages,
    String? phone,
    List<Query$FetchCountries$countries$states>? states,
    String? $__typename,
  }) => _res;

  CopyWith$Query$FetchCountries$countries$continent<TRes> get continent =>
      CopyWith$Query$FetchCountries$countries$continent.stub(_res);

  languages(_fn) => _res;

  states(_fn) => _res;
}

class Query$FetchCountries$countries$continent {
  Query$FetchCountries$countries$continent({
    required this.name,
    this.$__typename = 'Continent',
  });

  factory Query$FetchCountries$countries$continent.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FetchCountries$countries$continent(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchCountries$countries$continent ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchCountries$countries$continent
    on Query$FetchCountries$countries$continent {
  CopyWith$Query$FetchCountries$countries$continent<
    Query$FetchCountries$countries$continent
  >
  get copyWith =>
      CopyWith$Query$FetchCountries$countries$continent(this, (i) => i);
}

abstract class CopyWith$Query$FetchCountries$countries$continent<TRes> {
  factory CopyWith$Query$FetchCountries$countries$continent(
    Query$FetchCountries$countries$continent instance,
    TRes Function(Query$FetchCountries$countries$continent) then,
  ) = _CopyWithImpl$Query$FetchCountries$countries$continent;

  factory CopyWith$Query$FetchCountries$countries$continent.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCountries$countries$continent;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Query$FetchCountries$countries$continent<TRes>
    implements CopyWith$Query$FetchCountries$countries$continent<TRes> {
  _CopyWithImpl$Query$FetchCountries$countries$continent(
    this._instance,
    this._then,
  );

  final Query$FetchCountries$countries$continent _instance;

  final TRes Function(Query$FetchCountries$countries$continent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$FetchCountries$countries$continent(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$FetchCountries$countries$continent<TRes>
    implements CopyWith$Query$FetchCountries$countries$continent<TRes> {
  _CopyWithStubImpl$Query$FetchCountries$countries$continent(this._res);

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Query$FetchCountries$countries$languages {
  Query$FetchCountries$countries$languages({
    required this.name,
    required this.native,
    this.$__typename = 'Language',
  });

  factory Query$FetchCountries$countries$languages.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return Query$FetchCountries$countries$languages(
      name: (l$name as String),
      native: (l$native as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String native;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$native = native;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$native, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchCountries$countries$languages ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchCountries$countries$languages
    on Query$FetchCountries$countries$languages {
  CopyWith$Query$FetchCountries$countries$languages<
    Query$FetchCountries$countries$languages
  >
  get copyWith =>
      CopyWith$Query$FetchCountries$countries$languages(this, (i) => i);
}

abstract class CopyWith$Query$FetchCountries$countries$languages<TRes> {
  factory CopyWith$Query$FetchCountries$countries$languages(
    Query$FetchCountries$countries$languages instance,
    TRes Function(Query$FetchCountries$countries$languages) then,
  ) = _CopyWithImpl$Query$FetchCountries$countries$languages;

  factory CopyWith$Query$FetchCountries$countries$languages.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCountries$countries$languages;

  TRes call({String? name, String? native, String? $__typename});
}

class _CopyWithImpl$Query$FetchCountries$countries$languages<TRes>
    implements CopyWith$Query$FetchCountries$countries$languages<TRes> {
  _CopyWithImpl$Query$FetchCountries$countries$languages(
    this._instance,
    this._then,
  );

  final Query$FetchCountries$countries$languages _instance;

  final TRes Function(Query$FetchCountries$countries$languages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$FetchCountries$countries$languages(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      native: native == _undefined || native == null
          ? _instance.native
          : (native as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$FetchCountries$countries$languages<TRes>
    implements CopyWith$Query$FetchCountries$countries$languages<TRes> {
  _CopyWithStubImpl$Query$FetchCountries$countries$languages(this._res);

  TRes _res;

  call({String? name, String? native, String? $__typename}) => _res;
}

class Query$FetchCountries$countries$states {
  Query$FetchCountries$countries$states({
    required this.name,
    this.$__typename = 'State',
  });

  factory Query$FetchCountries$countries$states.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FetchCountries$countries$states(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchCountries$countries$states ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchCountries$countries$states
    on Query$FetchCountries$countries$states {
  CopyWith$Query$FetchCountries$countries$states<
    Query$FetchCountries$countries$states
  >
  get copyWith =>
      CopyWith$Query$FetchCountries$countries$states(this, (i) => i);
}

abstract class CopyWith$Query$FetchCountries$countries$states<TRes> {
  factory CopyWith$Query$FetchCountries$countries$states(
    Query$FetchCountries$countries$states instance,
    TRes Function(Query$FetchCountries$countries$states) then,
  ) = _CopyWithImpl$Query$FetchCountries$countries$states;

  factory CopyWith$Query$FetchCountries$countries$states.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCountries$countries$states;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Query$FetchCountries$countries$states<TRes>
    implements CopyWith$Query$FetchCountries$countries$states<TRes> {
  _CopyWithImpl$Query$FetchCountries$countries$states(
    this._instance,
    this._then,
  );

  final Query$FetchCountries$countries$states _instance;

  final TRes Function(Query$FetchCountries$countries$states) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$FetchCountries$countries$states(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$FetchCountries$countries$states<TRes>
    implements CopyWith$Query$FetchCountries$countries$states<TRes> {
  _CopyWithStubImpl$Query$FetchCountries$countries$states(this._res);

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
