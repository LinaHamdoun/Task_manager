// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPhotoIsarModelCollection on Isar {
  IsarCollection<PhotoIsarModel> get photoIsarModels => this.collection();
}

const PhotoIsarModelSchema = CollectionSchema(
  name: r'PhotoIsarModel',
  id: -4971568649016144750,
  properties: {
    r'altDescription': PropertySchema(
      id: 0,
      name: r'altDescription',
      type: IsarType.string,
    ),
    r'cachedAt': PropertySchema(
      id: 1,
      name: r'cachedAt',
      type: IsarType.dateTime,
    ),
    r'idPhoto': PropertySchema(
      id: 2,
      name: r'idPhoto',
      type: IsarType.string,
    ),
    r'likes': PropertySchema(
      id: 3,
      name: r'likes',
      type: IsarType.long,
    ),
    r'page': PropertySchema(
      id: 4,
      name: r'page',
      type: IsarType.long,
    ),
    r'urls': PropertySchema(
      id: 5,
      name: r'urls',
      type: IsarType.object,
      target: r'UrlsIsarEmbed',
    ),
    r'user': PropertySchema(
      id: 6,
      name: r'user',
      type: IsarType.object,
      target: r'UserIsarEmbed',
    )
  },
  estimateSize: _photoIsarModelEstimateSize,
  serialize: _photoIsarModelSerialize,
  deserialize: _photoIsarModelDeserialize,
  deserializeProp: _photoIsarModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'idPhoto': IndexSchema(
      id: 2783273565679493156,
      name: r'idPhoto',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'idPhoto',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'page': IndexSchema(
      id: -1004952015509011454,
      name: r'page',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'page',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'cachedAt': IndexSchema(
      id: -699654806693614168,
      name: r'cachedAt',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'cachedAt',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'UrlsIsarEmbed': UrlsIsarEmbedSchema,
    r'UserIsarEmbed': UserIsarEmbedSchema,
    r'ProfileImageIsarEmbed': ProfileImageIsarEmbedSchema
  },
  getId: _photoIsarModelGetId,
  getLinks: _photoIsarModelGetLinks,
  attach: _photoIsarModelAttach,
  version: '3.1.0+1',
);

int _photoIsarModelEstimateSize(
  PhotoIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.altDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idPhoto;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.urls;
    if (value != null) {
      bytesCount += 3 +
          UrlsIsarEmbedSchema.estimateSize(
              value, allOffsets[UrlsIsarEmbed]!, allOffsets);
    }
  }
  {
    final value = object.user;
    if (value != null) {
      bytesCount += 3 +
          UserIsarEmbedSchema.estimateSize(
              value, allOffsets[UserIsarEmbed]!, allOffsets);
    }
  }
  return bytesCount;
}

void _photoIsarModelSerialize(
  PhotoIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.altDescription);
  writer.writeDateTime(offsets[1], object.cachedAt);
  writer.writeString(offsets[2], object.idPhoto);
  writer.writeLong(offsets[3], object.likes);
  writer.writeLong(offsets[4], object.page);
  writer.writeObject<UrlsIsarEmbed>(
    offsets[5],
    allOffsets,
    UrlsIsarEmbedSchema.serialize,
    object.urls,
  );
  writer.writeObject<UserIsarEmbed>(
    offsets[6],
    allOffsets,
    UserIsarEmbedSchema.serialize,
    object.user,
  );
}

PhotoIsarModel _photoIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PhotoIsarModel(
    altDescription: reader.readStringOrNull(offsets[0]),
    cachedAt: reader.readDateTimeOrNull(offsets[1]),
    idPhoto: reader.readStringOrNull(offsets[2]),
    likes: reader.readLongOrNull(offsets[3]),
    page: reader.readLongOrNull(offsets[4]),
    urls: reader.readObjectOrNull<UrlsIsarEmbed>(
      offsets[5],
      UrlsIsarEmbedSchema.deserialize,
      allOffsets,
    ),
    user: reader.readObjectOrNull<UserIsarEmbed>(
      offsets[6],
      UserIsarEmbedSchema.deserialize,
      allOffsets,
    ),
  );
  object.id = id;
  return object;
}

P _photoIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readObjectOrNull<UrlsIsarEmbed>(
        offset,
        UrlsIsarEmbedSchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readObjectOrNull<UserIsarEmbed>(
        offset,
        UserIsarEmbedSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _photoIsarModelGetId(PhotoIsarModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _photoIsarModelGetLinks(PhotoIsarModel object) {
  return [];
}

void _photoIsarModelAttach(
    IsarCollection<dynamic> col, Id id, PhotoIsarModel object) {
  object.id = id;
}

extension PhotoIsarModelByIndex on IsarCollection<PhotoIsarModel> {
  Future<PhotoIsarModel?> getByIdPhoto(String? idPhoto) {
    return getByIndex(r'idPhoto', [idPhoto]);
  }

  PhotoIsarModel? getByIdPhotoSync(String? idPhoto) {
    return getByIndexSync(r'idPhoto', [idPhoto]);
  }

  Future<bool> deleteByIdPhoto(String? idPhoto) {
    return deleteByIndex(r'idPhoto', [idPhoto]);
  }

  bool deleteByIdPhotoSync(String? idPhoto) {
    return deleteByIndexSync(r'idPhoto', [idPhoto]);
  }

  Future<List<PhotoIsarModel?>> getAllByIdPhoto(List<String?> idPhotoValues) {
    final values = idPhotoValues.map((e) => [e]).toList();
    return getAllByIndex(r'idPhoto', values);
  }

  List<PhotoIsarModel?> getAllByIdPhotoSync(List<String?> idPhotoValues) {
    final values = idPhotoValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'idPhoto', values);
  }

  Future<int> deleteAllByIdPhoto(List<String?> idPhotoValues) {
    final values = idPhotoValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'idPhoto', values);
  }

  int deleteAllByIdPhotoSync(List<String?> idPhotoValues) {
    final values = idPhotoValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'idPhoto', values);
  }

  Future<Id> putByIdPhoto(PhotoIsarModel object) {
    return putByIndex(r'idPhoto', object);
  }

  Id putByIdPhotoSync(PhotoIsarModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'idPhoto', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByIdPhoto(List<PhotoIsarModel> objects) {
    return putAllByIndex(r'idPhoto', objects);
  }

  List<Id> putAllByIdPhotoSync(List<PhotoIsarModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'idPhoto', objects, saveLinks: saveLinks);
  }
}

extension PhotoIsarModelQueryWhereSort
    on QueryBuilder<PhotoIsarModel, PhotoIsarModel, QWhere> {
  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhere> anyPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'page'),
      );
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhere> anyCachedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'cachedAt'),
      );
    });
  }
}

extension PhotoIsarModelQueryWhere
    on QueryBuilder<PhotoIsarModel, PhotoIsarModel, QWhereClause> {
  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      idPhotoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'idPhoto',
        value: [null],
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      idPhotoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'idPhoto',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      idPhotoEqualTo(String? idPhoto) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'idPhoto',
        value: [idPhoto],
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      idPhotoNotEqualTo(String? idPhoto) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'idPhoto',
              lower: [],
              upper: [idPhoto],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'idPhoto',
              lower: [idPhoto],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'idPhoto',
              lower: [idPhoto],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'idPhoto',
              lower: [],
              upper: [idPhoto],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause> pageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'page',
        value: [null],
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      pageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'page',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause> pageEqualTo(
      int? page) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'page',
        value: [page],
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      pageNotEqualTo(int? page) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'page',
              lower: [],
              upper: [page],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'page',
              lower: [page],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'page',
              lower: [page],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'page',
              lower: [],
              upper: [page],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      pageGreaterThan(
    int? page, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'page',
        lower: [page],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause> pageLessThan(
    int? page, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'page',
        lower: [],
        upper: [page],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause> pageBetween(
    int? lowerPage,
    int? upperPage, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'page',
        lower: [lowerPage],
        includeLower: includeLower,
        upper: [upperPage],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      cachedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'cachedAt',
        value: [null],
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      cachedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cachedAt',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      cachedAtEqualTo(DateTime? cachedAt) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'cachedAt',
        value: [cachedAt],
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      cachedAtNotEqualTo(DateTime? cachedAt) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cachedAt',
              lower: [],
              upper: [cachedAt],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cachedAt',
              lower: [cachedAt],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cachedAt',
              lower: [cachedAt],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cachedAt',
              lower: [],
              upper: [cachedAt],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      cachedAtGreaterThan(
    DateTime? cachedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cachedAt',
        lower: [cachedAt],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      cachedAtLessThan(
    DateTime? cachedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cachedAt',
        lower: [],
        upper: [cachedAt],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterWhereClause>
      cachedAtBetween(
    DateTime? lowerCachedAt,
    DateTime? upperCachedAt, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cachedAt',
        lower: [lowerCachedAt],
        includeLower: includeLower,
        upper: [upperCachedAt],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PhotoIsarModelQueryFilter
    on QueryBuilder<PhotoIsarModel, PhotoIsarModel, QFilterCondition> {
  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      altDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'altDescription',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      altDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'altDescription',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      altDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'altDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      altDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'altDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      altDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'altDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      altDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'altDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      altDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'altDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      altDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'altDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      altDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'altDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      altDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'altDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      altDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'altDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      altDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'altDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      cachedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cachedAt',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      cachedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cachedAt',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      cachedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cachedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      cachedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cachedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      cachedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cachedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      cachedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cachedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
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

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
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

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      idPhotoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idPhoto',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      idPhotoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idPhoto',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      idPhotoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idPhoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      idPhotoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idPhoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      idPhotoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idPhoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      idPhotoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idPhoto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      idPhotoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idPhoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      idPhotoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idPhoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      idPhotoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idPhoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      idPhotoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idPhoto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      idPhotoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idPhoto',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      idPhotoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idPhoto',
        value: '',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      likesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'likes',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      likesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'likes',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      likesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'likes',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      likesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'likes',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      likesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'likes',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      likesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'likes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      pageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'page',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      pageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'page',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      pageEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      pageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      pageLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      pageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'page',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      urlsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'urls',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      urlsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'urls',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'user',
      ));
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition>
      userIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'user',
      ));
    });
  }
}

extension PhotoIsarModelQueryObject
    on QueryBuilder<PhotoIsarModel, PhotoIsarModel, QFilterCondition> {
  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition> urls(
      FilterQuery<UrlsIsarEmbed> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'urls');
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterFilterCondition> user(
      FilterQuery<UserIsarEmbed> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'user');
    });
  }
}

extension PhotoIsarModelQueryLinks
    on QueryBuilder<PhotoIsarModel, PhotoIsarModel, QFilterCondition> {}

extension PhotoIsarModelQuerySortBy
    on QueryBuilder<PhotoIsarModel, PhotoIsarModel, QSortBy> {
  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy>
      sortByAltDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'altDescription', Sort.asc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy>
      sortByAltDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'altDescription', Sort.desc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> sortByCachedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedAt', Sort.asc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy>
      sortByCachedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedAt', Sort.desc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> sortByIdPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPhoto', Sort.asc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy>
      sortByIdPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPhoto', Sort.desc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> sortByLikes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likes', Sort.asc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> sortByLikesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likes', Sort.desc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> sortByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.asc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> sortByPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.desc);
    });
  }
}

extension PhotoIsarModelQuerySortThenBy
    on QueryBuilder<PhotoIsarModel, PhotoIsarModel, QSortThenBy> {
  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy>
      thenByAltDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'altDescription', Sort.asc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy>
      thenByAltDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'altDescription', Sort.desc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> thenByCachedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedAt', Sort.asc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy>
      thenByCachedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedAt', Sort.desc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> thenByIdPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPhoto', Sort.asc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy>
      thenByIdPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPhoto', Sort.desc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> thenByLikes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likes', Sort.asc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> thenByLikesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likes', Sort.desc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> thenByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.asc);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QAfterSortBy> thenByPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.desc);
    });
  }
}

extension PhotoIsarModelQueryWhereDistinct
    on QueryBuilder<PhotoIsarModel, PhotoIsarModel, QDistinct> {
  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QDistinct>
      distinctByAltDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'altDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QDistinct> distinctByCachedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cachedAt');
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QDistinct> distinctByIdPhoto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idPhoto', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QDistinct> distinctByLikes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'likes');
    });
  }

  QueryBuilder<PhotoIsarModel, PhotoIsarModel, QDistinct> distinctByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'page');
    });
  }
}

extension PhotoIsarModelQueryProperty
    on QueryBuilder<PhotoIsarModel, PhotoIsarModel, QQueryProperty> {
  QueryBuilder<PhotoIsarModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PhotoIsarModel, String?, QQueryOperations>
      altDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'altDescription');
    });
  }

  QueryBuilder<PhotoIsarModel, DateTime?, QQueryOperations> cachedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cachedAt');
    });
  }

  QueryBuilder<PhotoIsarModel, String?, QQueryOperations> idPhotoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idPhoto');
    });
  }

  QueryBuilder<PhotoIsarModel, int?, QQueryOperations> likesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'likes');
    });
  }

  QueryBuilder<PhotoIsarModel, int?, QQueryOperations> pageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'page');
    });
  }

  QueryBuilder<PhotoIsarModel, UrlsIsarEmbed?, QQueryOperations>
      urlsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'urls');
    });
  }

  QueryBuilder<PhotoIsarModel, UserIsarEmbed?, QQueryOperations>
      userProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'user');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const UrlsIsarEmbedSchema = Schema(
  name: r'UrlsIsarEmbed',
  id: 4685110945774916494,
  properties: {
    r'full': PropertySchema(
      id: 0,
      name: r'full',
      type: IsarType.string,
    ),
    r'raw': PropertySchema(
      id: 1,
      name: r'raw',
      type: IsarType.string,
    ),
    r'regular': PropertySchema(
      id: 2,
      name: r'regular',
      type: IsarType.string,
    ),
    r'small': PropertySchema(
      id: 3,
      name: r'small',
      type: IsarType.string,
    ),
    r'thumb': PropertySchema(
      id: 4,
      name: r'thumb',
      type: IsarType.string,
    )
  },
  estimateSize: _urlsIsarEmbedEstimateSize,
  serialize: _urlsIsarEmbedSerialize,
  deserialize: _urlsIsarEmbedDeserialize,
  deserializeProp: _urlsIsarEmbedDeserializeProp,
);

int _urlsIsarEmbedEstimateSize(
  UrlsIsarEmbed object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.full;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.raw;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.regular;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.small;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.thumb;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _urlsIsarEmbedSerialize(
  UrlsIsarEmbed object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.full);
  writer.writeString(offsets[1], object.raw);
  writer.writeString(offsets[2], object.regular);
  writer.writeString(offsets[3], object.small);
  writer.writeString(offsets[4], object.thumb);
}

UrlsIsarEmbed _urlsIsarEmbedDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UrlsIsarEmbed();
  object.full = reader.readStringOrNull(offsets[0]);
  object.raw = reader.readStringOrNull(offsets[1]);
  object.regular = reader.readStringOrNull(offsets[2]);
  object.small = reader.readStringOrNull(offsets[3]);
  object.thumb = reader.readStringOrNull(offsets[4]);
  return object;
}

P _urlsIsarEmbedDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension UrlsIsarEmbedQueryFilter
    on QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QFilterCondition> {
  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      fullIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'full',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      fullIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'full',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition> fullEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'full',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      fullGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'full',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      fullLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'full',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition> fullBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'full',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      fullStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'full',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      fullEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'full',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      fullContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'full',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition> fullMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'full',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      fullIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'full',
        value: '',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      fullIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'full',
        value: '',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      rawIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'raw',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      rawIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'raw',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition> rawEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'raw',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      rawGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'raw',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition> rawLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'raw',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition> rawBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'raw',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      rawStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'raw',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition> rawEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'raw',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition> rawContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'raw',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition> rawMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'raw',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      rawIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'raw',
        value: '',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      rawIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'raw',
        value: '',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      regularIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'regular',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      regularIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'regular',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      regularEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      regularGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'regular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      regularLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'regular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      regularBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'regular',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      regularStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'regular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      regularEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'regular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      regularContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'regular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      regularMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'regular',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      regularIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regular',
        value: '',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      regularIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'regular',
        value: '',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      smallIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'small',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      smallIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'small',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      smallEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      smallGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      smallLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      smallBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'small',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      smallStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      smallEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      smallContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      smallMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'small',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      smallIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'small',
        value: '',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      smallIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'small',
        value: '',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      thumbIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'thumb',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      thumbIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'thumb',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      thumbEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      thumbGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thumb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      thumbLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thumb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      thumbBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thumb',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      thumbStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'thumb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      thumbEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'thumb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      thumbContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'thumb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      thumbMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'thumb',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      thumbIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumb',
        value: '',
      ));
    });
  }

  QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QAfterFilterCondition>
      thumbIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'thumb',
        value: '',
      ));
    });
  }
}

extension UrlsIsarEmbedQueryObject
    on QueryBuilder<UrlsIsarEmbed, UrlsIsarEmbed, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const UserIsarEmbedSchema = Schema(
  name: r'UserIsarEmbed',
  id: -3637389417416751630,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'profileImage': PropertySchema(
      id: 1,
      name: r'profileImage',
      type: IsarType.object,
      target: r'ProfileImageIsarEmbed',
    ),
    r'userId': PropertySchema(
      id: 2,
      name: r'userId',
      type: IsarType.string,
    ),
    r'username': PropertySchema(
      id: 3,
      name: r'username',
      type: IsarType.string,
    )
  },
  estimateSize: _userIsarEmbedEstimateSize,
  serialize: _userIsarEmbedSerialize,
  deserialize: _userIsarEmbedDeserialize,
  deserializeProp: _userIsarEmbedDeserializeProp,
);

int _userIsarEmbedEstimateSize(
  UserIsarEmbed object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.profileImage;
    if (value != null) {
      bytesCount += 3 +
          ProfileImageIsarEmbedSchema.estimateSize(
              value, allOffsets[ProfileImageIsarEmbed]!, allOffsets);
    }
  }
  {
    final value = object.userId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.username;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _userIsarEmbedSerialize(
  UserIsarEmbed object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeObject<ProfileImageIsarEmbed>(
    offsets[1],
    allOffsets,
    ProfileImageIsarEmbedSchema.serialize,
    object.profileImage,
  );
  writer.writeString(offsets[2], object.userId);
  writer.writeString(offsets[3], object.username);
}

UserIsarEmbed _userIsarEmbedDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserIsarEmbed();
  object.name = reader.readStringOrNull(offsets[0]);
  object.profileImage = reader.readObjectOrNull<ProfileImageIsarEmbed>(
    offsets[1],
    ProfileImageIsarEmbedSchema.deserialize,
    allOffsets,
  );
  object.userId = reader.readStringOrNull(offsets[2]);
  object.username = reader.readStringOrNull(offsets[3]);
  return object;
}

P _userIsarEmbedDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<ProfileImageIsarEmbed>(
        offset,
        ProfileImageIsarEmbedSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension UserIsarEmbedQueryFilter
    on QueryBuilder<UserIsarEmbed, UserIsarEmbed, QFilterCondition> {
  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      profileImageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'profileImage',
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      profileImageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'profileImage',
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      userIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      userIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      userIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      userIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      userIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      userIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      userIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      usernameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'username',
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      usernameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'username',
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      usernameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      usernameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      usernameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      usernameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'username',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      usernameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      usernameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'username',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: '',
      ));
    });
  }

  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'username',
        value: '',
      ));
    });
  }
}

extension UserIsarEmbedQueryObject
    on QueryBuilder<UserIsarEmbed, UserIsarEmbed, QFilterCondition> {
  QueryBuilder<UserIsarEmbed, UserIsarEmbed, QAfterFilterCondition>
      profileImage(FilterQuery<ProfileImageIsarEmbed> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'profileImage');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ProfileImageIsarEmbedSchema = Schema(
  name: r'ProfileImageIsarEmbed',
  id: -7479913344936973693,
  properties: {
    r'large': PropertySchema(
      id: 0,
      name: r'large',
      type: IsarType.string,
    ),
    r'medium': PropertySchema(
      id: 1,
      name: r'medium',
      type: IsarType.string,
    ),
    r'small': PropertySchema(
      id: 2,
      name: r'small',
      type: IsarType.string,
    )
  },
  estimateSize: _profileImageIsarEmbedEstimateSize,
  serialize: _profileImageIsarEmbedSerialize,
  deserialize: _profileImageIsarEmbedDeserialize,
  deserializeProp: _profileImageIsarEmbedDeserializeProp,
);

int _profileImageIsarEmbedEstimateSize(
  ProfileImageIsarEmbed object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.large;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.medium;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.small;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _profileImageIsarEmbedSerialize(
  ProfileImageIsarEmbed object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.large);
  writer.writeString(offsets[1], object.medium);
  writer.writeString(offsets[2], object.small);
}

ProfileImageIsarEmbed _profileImageIsarEmbedDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProfileImageIsarEmbed();
  object.large = reader.readStringOrNull(offsets[0]);
  object.medium = reader.readStringOrNull(offsets[1]);
  object.small = reader.readStringOrNull(offsets[2]);
  return object;
}

P _profileImageIsarEmbedDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ProfileImageIsarEmbedQueryFilter on QueryBuilder<
    ProfileImageIsarEmbed, ProfileImageIsarEmbed, QFilterCondition> {
  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> largeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'large',
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> largeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'large',
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> largeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'large',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> largeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'large',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> largeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'large',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> largeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'large',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> largeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'large',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> largeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'large',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
          QAfterFilterCondition>
      largeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'large',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
          QAfterFilterCondition>
      largeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'large',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> largeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'large',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> largeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'large',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> mediumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'medium',
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> mediumIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'medium',
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> mediumEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medium',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> mediumGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'medium',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> mediumLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'medium',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> mediumBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'medium',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> mediumStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'medium',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> mediumEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'medium',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
          QAfterFilterCondition>
      mediumContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'medium',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
          QAfterFilterCondition>
      mediumMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'medium',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> mediumIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medium',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> mediumIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'medium',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> smallIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'small',
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> smallIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'small',
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> smallEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> smallGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> smallLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> smallBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'small',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> smallStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> smallEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
          QAfterFilterCondition>
      smallContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'small',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
          QAfterFilterCondition>
      smallMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'small',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> smallIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'small',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImageIsarEmbed, ProfileImageIsarEmbed,
      QAfterFilterCondition> smallIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'small',
        value: '',
      ));
    });
  }
}

extension ProfileImageIsarEmbedQueryObject on QueryBuilder<
    ProfileImageIsarEmbed, ProfileImageIsarEmbed, QFilterCondition> {}
