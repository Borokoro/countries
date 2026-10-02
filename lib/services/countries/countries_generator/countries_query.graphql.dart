import 'package:gql/ast.dart';

class Query$FetchCountries {
  Query$FetchCountries({this.fetchCountries, this.$__typename = 'Query'});

  factory Query$FetchCountries.fromJson(Map<String, dynamic> json) {
    final l$fetchCountries = json['fetchCountries'];
    final l$$__typename = json['__typename'];
    return Query$FetchCountries(
      fetchCountries: (l$fetchCountries as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$FetchCountries$fetchCountries.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchCountries$fetchCountries?>? fetchCountries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fetchCountries = fetchCountries;
    _resultData['fetchCountries'] = l$fetchCountries
        ?.map((e) => e?.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fetchCountries = fetchCountries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fetchCountries == null
          ? null
          : Object.hashAll(l$fetchCountries.map((v) => v)),
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
    final l$fetchCountries = fetchCountries;
    final lOther$fetchCountries = other.fetchCountries;
    if (l$fetchCountries != null && lOther$fetchCountries != null) {
      if (l$fetchCountries.length != lOther$fetchCountries.length) {
        return false;
      }
      for (int i = 0; i < l$fetchCountries.length; i++) {
        final l$fetchCountries$entry = l$fetchCountries[i];
        final lOther$fetchCountries$entry = lOther$fetchCountries[i];
        if (l$fetchCountries$entry != lOther$fetchCountries$entry) {
          return false;
        }
      }
    } else if (l$fetchCountries != lOther$fetchCountries) {
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
    List<Query$FetchCountries$fetchCountries?>? fetchCountries,
    String? $__typename,
  });
  TRes fetchCountries(
    Iterable<Query$FetchCountries$fetchCountries?>? Function(
      Iterable<
        CopyWith$Query$FetchCountries$fetchCountries<
          Query$FetchCountries$fetchCountries
        >?
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
    Object? fetchCountries = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$FetchCountries(
      fetchCountries: fetchCountries == _undefined
          ? _instance.fetchCountries
          : (fetchCountries as List<Query$FetchCountries$fetchCountries?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes fetchCountries(
    Iterable<Query$FetchCountries$fetchCountries?>? Function(
      Iterable<
        CopyWith$Query$FetchCountries$fetchCountries<
          Query$FetchCountries$fetchCountries
        >?
      >?,
    )
    _fn,
  ) => call(
    fetchCountries: _fn(
      _instance.fetchCountries?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$FetchCountries$fetchCountries(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$FetchCountries<TRes>
    implements CopyWith$Query$FetchCountries<TRes> {
  _CopyWithStubImpl$Query$FetchCountries(this._res);

  TRes _res;

  call({
    List<Query$FetchCountries$fetchCountries?>? fetchCountries,
    String? $__typename,
  }) => _res;

  fetchCountries(_fn) => _res;
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
            name: NameNode(value: 'fetchCountries'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'name'),
                  alias: NameNode(value: 'name'),
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'native'),
                  alias: NameNode(value: 'native'),
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'awsRegion'),
                  alias: NameNode(value: 'awsRegion'),
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'capital'),
                  alias: NameNode(value: 'capital'),
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
                        alias: NameNode(value: 'name'),
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
                  alias: NameNode(value: 'currencies'),
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'currency'),
                  alias: NameNode(value: 'currency'),
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'emoji'),
                  alias: NameNode(value: 'emoji'),
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'emojiU'),
                  alias: NameNode(value: 'emojiU'),
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
                        alias: NameNode(value: 'name'),
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'native'),
                        alias: NameNode(value: 'native'),
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
                  alias: NameNode(value: 'phone'),
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
                        alias: NameNode(value: 'name'),
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

class Query$FetchCountries$fetchCountries {
  Query$FetchCountries$fetchCountries({
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

  factory Query$FetchCountries$fetchCountries.fromJson(
    Map<String, dynamic> json,
  ) {
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
    return Query$FetchCountries$fetchCountries(
      name: (l$name as String),
      native: (l$native as String),
      awsRegion: (l$awsRegion as String),
      capital: (l$capital as String),
      continent: Query$FetchCountries$fetchCountries$continent.fromJson(
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
            (e) => Query$FetchCountries$fetchCountries$languages.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      phone: (l$phone as String),
      states: (l$states as List<dynamic>)
          .map(
            (e) => Query$FetchCountries$fetchCountries$states.fromJson(
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

  final Query$FetchCountries$fetchCountries$continent continent;

  final List<String> currencies;

  final String? currency;

  final String emoji;

  final String emojiU;

  final List<Query$FetchCountries$fetchCountries$languages> languages;

  final String phone;

  final List<Query$FetchCountries$fetchCountries$states> states;

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
    if (other is! Query$FetchCountries$fetchCountries ||
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

extension UtilityExtension$Query$FetchCountries$fetchCountries
    on Query$FetchCountries$fetchCountries {
  CopyWith$Query$FetchCountries$fetchCountries<
    Query$FetchCountries$fetchCountries
  >
  get copyWith => CopyWith$Query$FetchCountries$fetchCountries(this, (i) => i);
}

abstract class CopyWith$Query$FetchCountries$fetchCountries<TRes> {
  factory CopyWith$Query$FetchCountries$fetchCountries(
    Query$FetchCountries$fetchCountries instance,
    TRes Function(Query$FetchCountries$fetchCountries) then,
  ) = _CopyWithImpl$Query$FetchCountries$fetchCountries;

  factory CopyWith$Query$FetchCountries$fetchCountries.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCountries$fetchCountries;

  TRes call({
    String? name,
    String? native,
    String? awsRegion,
    String? capital,
    Query$FetchCountries$fetchCountries$continent? continent,
    List<String>? currencies,
    String? currency,
    String? emoji,
    String? emojiU,
    List<Query$FetchCountries$fetchCountries$languages>? languages,
    String? phone,
    List<Query$FetchCountries$fetchCountries$states>? states,
    String? $__typename,
  });
  CopyWith$Query$FetchCountries$fetchCountries$continent<TRes> get continent;
  TRes languages(
    Iterable<Query$FetchCountries$fetchCountries$languages> Function(
      Iterable<
        CopyWith$Query$FetchCountries$fetchCountries$languages<
          Query$FetchCountries$fetchCountries$languages
        >
      >,
    )
    _fn,
  );
  TRes states(
    Iterable<Query$FetchCountries$fetchCountries$states> Function(
      Iterable<
        CopyWith$Query$FetchCountries$fetchCountries$states<
          Query$FetchCountries$fetchCountries$states
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$FetchCountries$fetchCountries<TRes>
    implements CopyWith$Query$FetchCountries$fetchCountries<TRes> {
  _CopyWithImpl$Query$FetchCountries$fetchCountries(this._instance, this._then);

  final Query$FetchCountries$fetchCountries _instance;

  final TRes Function(Query$FetchCountries$fetchCountries) _then;

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
    Query$FetchCountries$fetchCountries(
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
          : (continent as Query$FetchCountries$fetchCountries$continent),
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
          : (languages as List<Query$FetchCountries$fetchCountries$languages>),
      phone: phone == _undefined || phone == null
          ? _instance.phone
          : (phone as String),
      states: states == _undefined || states == null
          ? _instance.states
          : (states as List<Query$FetchCountries$fetchCountries$states>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$FetchCountries$fetchCountries$continent<TRes> get continent {
    final local$continent = _instance.continent;
    return CopyWith$Query$FetchCountries$fetchCountries$continent(
      local$continent,
      (e) => call(continent: e),
    );
  }

  TRes languages(
    Iterable<Query$FetchCountries$fetchCountries$languages> Function(
      Iterable<
        CopyWith$Query$FetchCountries$fetchCountries$languages<
          Query$FetchCountries$fetchCountries$languages
        >
      >,
    )
    _fn,
  ) => call(
    languages: _fn(
      _instance.languages.map(
        (e) =>
            CopyWith$Query$FetchCountries$fetchCountries$languages(e, (i) => i),
      ),
    ).toList(),
  );

  TRes states(
    Iterable<Query$FetchCountries$fetchCountries$states> Function(
      Iterable<
        CopyWith$Query$FetchCountries$fetchCountries$states<
          Query$FetchCountries$fetchCountries$states
        >
      >,
    )
    _fn,
  ) => call(
    states: _fn(
      _instance.states.map(
        (e) => CopyWith$Query$FetchCountries$fetchCountries$states(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$FetchCountries$fetchCountries<TRes>
    implements CopyWith$Query$FetchCountries$fetchCountries<TRes> {
  _CopyWithStubImpl$Query$FetchCountries$fetchCountries(this._res);

  TRes _res;

  call({
    String? name,
    String? native,
    String? awsRegion,
    String? capital,
    Query$FetchCountries$fetchCountries$continent? continent,
    List<String>? currencies,
    String? currency,
    String? emoji,
    String? emojiU,
    List<Query$FetchCountries$fetchCountries$languages>? languages,
    String? phone,
    List<Query$FetchCountries$fetchCountries$states>? states,
    String? $__typename,
  }) => _res;

  CopyWith$Query$FetchCountries$fetchCountries$continent<TRes> get continent =>
      CopyWith$Query$FetchCountries$fetchCountries$continent.stub(_res);

  languages(_fn) => _res;

  states(_fn) => _res;
}

class Query$FetchCountries$fetchCountries$continent {
  Query$FetchCountries$fetchCountries$continent({
    required this.name,
    this.$__typename = 'Continent',
  });

  factory Query$FetchCountries$fetchCountries$continent.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FetchCountries$fetchCountries$continent(
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
    if (other is! Query$FetchCountries$fetchCountries$continent ||
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

extension UtilityExtension$Query$FetchCountries$fetchCountries$continent
    on Query$FetchCountries$fetchCountries$continent {
  CopyWith$Query$FetchCountries$fetchCountries$continent<
    Query$FetchCountries$fetchCountries$continent
  >
  get copyWith =>
      CopyWith$Query$FetchCountries$fetchCountries$continent(this, (i) => i);
}

abstract class CopyWith$Query$FetchCountries$fetchCountries$continent<TRes> {
  factory CopyWith$Query$FetchCountries$fetchCountries$continent(
    Query$FetchCountries$fetchCountries$continent instance,
    TRes Function(Query$FetchCountries$fetchCountries$continent) then,
  ) = _CopyWithImpl$Query$FetchCountries$fetchCountries$continent;

  factory CopyWith$Query$FetchCountries$fetchCountries$continent.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$FetchCountries$fetchCountries$continent;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Query$FetchCountries$fetchCountries$continent<TRes>
    implements CopyWith$Query$FetchCountries$fetchCountries$continent<TRes> {
  _CopyWithImpl$Query$FetchCountries$fetchCountries$continent(
    this._instance,
    this._then,
  );

  final Query$FetchCountries$fetchCountries$continent _instance;

  final TRes Function(Query$FetchCountries$fetchCountries$continent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$FetchCountries$fetchCountries$continent(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$FetchCountries$fetchCountries$continent<TRes>
    implements CopyWith$Query$FetchCountries$fetchCountries$continent<TRes> {
  _CopyWithStubImpl$Query$FetchCountries$fetchCountries$continent(this._res);

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Query$FetchCountries$fetchCountries$languages {
  Query$FetchCountries$fetchCountries$languages({
    required this.name,
    required this.native,
    this.$__typename = 'Language',
  });

  factory Query$FetchCountries$fetchCountries$languages.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return Query$FetchCountries$fetchCountries$languages(
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
    if (other is! Query$FetchCountries$fetchCountries$languages ||
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

extension UtilityExtension$Query$FetchCountries$fetchCountries$languages
    on Query$FetchCountries$fetchCountries$languages {
  CopyWith$Query$FetchCountries$fetchCountries$languages<
    Query$FetchCountries$fetchCountries$languages
  >
  get copyWith =>
      CopyWith$Query$FetchCountries$fetchCountries$languages(this, (i) => i);
}

abstract class CopyWith$Query$FetchCountries$fetchCountries$languages<TRes> {
  factory CopyWith$Query$FetchCountries$fetchCountries$languages(
    Query$FetchCountries$fetchCountries$languages instance,
    TRes Function(Query$FetchCountries$fetchCountries$languages) then,
  ) = _CopyWithImpl$Query$FetchCountries$fetchCountries$languages;

  factory CopyWith$Query$FetchCountries$fetchCountries$languages.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$FetchCountries$fetchCountries$languages;

  TRes call({String? name, String? native, String? $__typename});
}

class _CopyWithImpl$Query$FetchCountries$fetchCountries$languages<TRes>
    implements CopyWith$Query$FetchCountries$fetchCountries$languages<TRes> {
  _CopyWithImpl$Query$FetchCountries$fetchCountries$languages(
    this._instance,
    this._then,
  );

  final Query$FetchCountries$fetchCountries$languages _instance;

  final TRes Function(Query$FetchCountries$fetchCountries$languages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$FetchCountries$fetchCountries$languages(
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

class _CopyWithStubImpl$Query$FetchCountries$fetchCountries$languages<TRes>
    implements CopyWith$Query$FetchCountries$fetchCountries$languages<TRes> {
  _CopyWithStubImpl$Query$FetchCountries$fetchCountries$languages(this._res);

  TRes _res;

  call({String? name, String? native, String? $__typename}) => _res;
}

class Query$FetchCountries$fetchCountries$states {
  Query$FetchCountries$fetchCountries$states({
    required this.name,
    this.$__typename = 'State',
  });

  factory Query$FetchCountries$fetchCountries$states.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FetchCountries$fetchCountries$states(
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
    if (other is! Query$FetchCountries$fetchCountries$states ||
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

extension UtilityExtension$Query$FetchCountries$fetchCountries$states
    on Query$FetchCountries$fetchCountries$states {
  CopyWith$Query$FetchCountries$fetchCountries$states<
    Query$FetchCountries$fetchCountries$states
  >
  get copyWith =>
      CopyWith$Query$FetchCountries$fetchCountries$states(this, (i) => i);
}

abstract class CopyWith$Query$FetchCountries$fetchCountries$states<TRes> {
  factory CopyWith$Query$FetchCountries$fetchCountries$states(
    Query$FetchCountries$fetchCountries$states instance,
    TRes Function(Query$FetchCountries$fetchCountries$states) then,
  ) = _CopyWithImpl$Query$FetchCountries$fetchCountries$states;

  factory CopyWith$Query$FetchCountries$fetchCountries$states.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCountries$fetchCountries$states;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Query$FetchCountries$fetchCountries$states<TRes>
    implements CopyWith$Query$FetchCountries$fetchCountries$states<TRes> {
  _CopyWithImpl$Query$FetchCountries$fetchCountries$states(
    this._instance,
    this._then,
  );

  final Query$FetchCountries$fetchCountries$states _instance;

  final TRes Function(Query$FetchCountries$fetchCountries$states) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$FetchCountries$fetchCountries$states(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$FetchCountries$fetchCountries$states<TRes>
    implements CopyWith$Query$FetchCountries$fetchCountries$states<TRes> {
  _CopyWithStubImpl$Query$FetchCountries$fetchCountries$states(this._res);

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
