// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_trivia_mdl.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNumberTriviaMdlCollection on Isar {
  IsarCollection<NumberTriviaMdl> get numberTriviaMdls => this.collection();
}

const NumberTriviaMdlSchema = CollectionSchema(
  name: r'NumberTriviaMdl',
  id: -4316790173324349959,
  properties: {
    r'found': PropertySchema(
      id: 0,
      name: r'found',
      type: IsarType.bool,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'number': PropertySchema(
      id: 2,
      name: r'number',
      type: IsarType.long,
    ),
    r'stringify': PropertySchema(
      id: 3,
      name: r'stringify',
      type: IsarType.bool,
    ),
    r'text': PropertySchema(
      id: 4,
      name: r'text',
      type: IsarType.string,
    )
  },
  estimateSize: _numberTriviaMdlEstimateSize,
  serialize: _numberTriviaMdlSerialize,
  deserialize: _numberTriviaMdlDeserialize,
  deserializeProp: _numberTriviaMdlDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _numberTriviaMdlGetId,
  getLinks: _numberTriviaMdlGetLinks,
  attach: _numberTriviaMdlAttach,
  version: '3.1.0+1',
);

int _numberTriviaMdlEstimateSize(
  NumberTriviaMdl object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.text.length * 3;
  return bytesCount;
}

void _numberTriviaMdlSerialize(
  NumberTriviaMdl object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.found);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeLong(offsets[2], object.number);
  writer.writeBool(offsets[3], object.stringify);
  writer.writeString(offsets[4], object.text);
}

NumberTriviaMdl _numberTriviaMdlDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NumberTriviaMdl(
    number: reader.readLong(offsets[2]),
    text: reader.readString(offsets[4]),
  );
  return object;
}

P _numberTriviaMdlDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _numberTriviaMdlGetId(NumberTriviaMdl object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _numberTriviaMdlGetLinks(NumberTriviaMdl object) {
  return [];
}

void _numberTriviaMdlAttach(
    IsarCollection<dynamic> col, Id id, NumberTriviaMdl object) {}

extension NumberTriviaMdlQueryWhereSort
    on QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QWhere> {
  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NumberTriviaMdlQueryWhere
    on QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QWhereClause> {
  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NumberTriviaMdlQueryFilter
    on QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QFilterCondition> {
  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      foundEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'found',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      numberEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      numberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      numberLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      numberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      stringifyEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      textEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      textGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      textLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      textBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'text',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      textContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      textMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'text',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterFilterCondition>
      textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'text',
        value: '',
      ));
    });
  }
}

extension NumberTriviaMdlQueryObject
    on QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QFilterCondition> {}

extension NumberTriviaMdlQueryLinks
    on QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QFilterCondition> {}

extension NumberTriviaMdlQuerySortBy
    on QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QSortBy> {
  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy> sortByFound() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'found', Sort.asc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      sortByFoundDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'found', Sort.desc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy> sortByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      sortByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy> sortByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      sortByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }
}

extension NumberTriviaMdlQuerySortThenBy
    on QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QSortThenBy> {
  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy> thenByFound() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'found', Sort.asc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      thenByFoundDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'found', Sort.desc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy> thenByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      thenByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy> thenByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QAfterSortBy>
      thenByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }
}

extension NumberTriviaMdlQueryWhereDistinct
    on QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QDistinct> {
  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QDistinct> distinctByFound() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'found');
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QDistinct> distinctByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'number');
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QDistinct>
      distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }

  QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QDistinct> distinctByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'text', caseSensitive: caseSensitive);
    });
  }
}

extension NumberTriviaMdlQueryProperty
    on QueryBuilder<NumberTriviaMdl, NumberTriviaMdl, QQueryProperty> {
  QueryBuilder<NumberTriviaMdl, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NumberTriviaMdl, bool, QQueryOperations> foundProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'found');
    });
  }

  QueryBuilder<NumberTriviaMdl, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<NumberTriviaMdl, int, QQueryOperations> numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'number');
    });
  }

  QueryBuilder<NumberTriviaMdl, bool, QQueryOperations> stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }

  QueryBuilder<NumberTriviaMdl, String, QQueryOperations> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'text');
    });
  }
}
