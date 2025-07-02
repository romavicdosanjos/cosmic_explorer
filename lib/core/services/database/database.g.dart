// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $PlanetsTable extends Planets with TableInfo<$PlanetsTable, Planet> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlanetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _englishNameMeta = const VerificationMeta(
    'englishName',
  );
  @override
  late final GeneratedColumn<String> englishName = GeneratedColumn<String>(
    'english_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _densityMeta = const VerificationMeta(
    'density',
  );
  @override
  late final GeneratedColumn<double> density = GeneratedColumn<double>(
    'density',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _gravityMeta = const VerificationMeta(
    'gravity',
  );
  @override
  late final GeneratedColumn<double> gravity = GeneratedColumn<double>(
    'gravity',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _discoveredByMeta = const VerificationMeta(
    'discoveredBy',
  );
  @override
  late final GeneratedColumn<String> discoveredBy = GeneratedColumn<String>(
    'discovered_by',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _discoveryDateMeta = const VerificationMeta(
    'discoveryDate',
  );
  @override
  late final GeneratedColumn<String> discoveryDate = GeneratedColumn<String>(
    'discovery_date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
    'image',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    englishName,
    density,
    gravity,
    discoveredBy,
    discoveryDate,
    image,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'planets';
  @override
  VerificationContext validateIntegrity(
    Insertable<Planet> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('english_name')) {
      context.handle(
        _englishNameMeta,
        englishName.isAcceptableOrUnknown(
          data['english_name']!,
          _englishNameMeta,
        ),
      );
    }
    if (data.containsKey('density')) {
      context.handle(
        _densityMeta,
        density.isAcceptableOrUnknown(data['density']!, _densityMeta),
      );
    }
    if (data.containsKey('gravity')) {
      context.handle(
        _gravityMeta,
        gravity.isAcceptableOrUnknown(data['gravity']!, _gravityMeta),
      );
    }
    if (data.containsKey('discovered_by')) {
      context.handle(
        _discoveredByMeta,
        discoveredBy.isAcceptableOrUnknown(
          data['discovered_by']!,
          _discoveredByMeta,
        ),
      );
    }
    if (data.containsKey('discovery_date')) {
      context.handle(
        _discoveryDateMeta,
        discoveryDate.isAcceptableOrUnknown(
          data['discovery_date']!,
          _discoveryDateMeta,
        ),
      );
    }
    if (data.containsKey('image')) {
      context.handle(
        _imageMeta,
        image.isAcceptableOrUnknown(data['image']!, _imageMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Planet map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Planet(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      englishName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}english_name'],
      ),
      density: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}density'],
      ),
      gravity: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}gravity'],
      ),
      discoveredBy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}discovered_by'],
      ),
      discoveryDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}discovery_date'],
      ),
      image: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image'],
      ),
    );
  }

  @override
  $PlanetsTable createAlias(String alias) {
    return $PlanetsTable(attachedDatabase, alias);
  }
}

class Planet extends DataClass implements Insertable<Planet> {
  final String id;
  final String? englishName;
  final double? density;
  final double? gravity;
  final String? discoveredBy;
  final String? discoveryDate;
  final String? image;
  const Planet({
    required this.id,
    this.englishName,
    this.density,
    this.gravity,
    this.discoveredBy,
    this.discoveryDate,
    this.image,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || englishName != null) {
      map['english_name'] = Variable<String>(englishName);
    }
    if (!nullToAbsent || density != null) {
      map['density'] = Variable<double>(density);
    }
    if (!nullToAbsent || gravity != null) {
      map['gravity'] = Variable<double>(gravity);
    }
    if (!nullToAbsent || discoveredBy != null) {
      map['discovered_by'] = Variable<String>(discoveredBy);
    }
    if (!nullToAbsent || discoveryDate != null) {
      map['discovery_date'] = Variable<String>(discoveryDate);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    return map;
  }

  PlanetsCompanion toCompanion(bool nullToAbsent) {
    return PlanetsCompanion(
      id: Value(id),
      englishName: englishName == null && nullToAbsent
          ? const Value.absent()
          : Value(englishName),
      density: density == null && nullToAbsent
          ? const Value.absent()
          : Value(density),
      gravity: gravity == null && nullToAbsent
          ? const Value.absent()
          : Value(gravity),
      discoveredBy: discoveredBy == null && nullToAbsent
          ? const Value.absent()
          : Value(discoveredBy),
      discoveryDate: discoveryDate == null && nullToAbsent
          ? const Value.absent()
          : Value(discoveryDate),
      image: image == null && nullToAbsent
          ? const Value.absent()
          : Value(image),
    );
  }

  factory Planet.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Planet(
      id: serializer.fromJson<String>(json['id']),
      englishName: serializer.fromJson<String?>(json['englishName']),
      density: serializer.fromJson<double?>(json['density']),
      gravity: serializer.fromJson<double?>(json['gravity']),
      discoveredBy: serializer.fromJson<String?>(json['discoveredBy']),
      discoveryDate: serializer.fromJson<String?>(json['discoveryDate']),
      image: serializer.fromJson<String?>(json['image']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'englishName': serializer.toJson<String?>(englishName),
      'density': serializer.toJson<double?>(density),
      'gravity': serializer.toJson<double?>(gravity),
      'discoveredBy': serializer.toJson<String?>(discoveredBy),
      'discoveryDate': serializer.toJson<String?>(discoveryDate),
      'image': serializer.toJson<String?>(image),
    };
  }

  Planet copyWith({
    String? id,
    Value<String?> englishName = const Value.absent(),
    Value<double?> density = const Value.absent(),
    Value<double?> gravity = const Value.absent(),
    Value<String?> discoveredBy = const Value.absent(),
    Value<String?> discoveryDate = const Value.absent(),
    Value<String?> image = const Value.absent(),
  }) => Planet(
    id: id ?? this.id,
    englishName: englishName.present ? englishName.value : this.englishName,
    density: density.present ? density.value : this.density,
    gravity: gravity.present ? gravity.value : this.gravity,
    discoveredBy: discoveredBy.present ? discoveredBy.value : this.discoveredBy,
    discoveryDate: discoveryDate.present
        ? discoveryDate.value
        : this.discoveryDate,
    image: image.present ? image.value : this.image,
  );
  Planet copyWithCompanion(PlanetsCompanion data) {
    return Planet(
      id: data.id.present ? data.id.value : this.id,
      englishName: data.englishName.present
          ? data.englishName.value
          : this.englishName,
      density: data.density.present ? data.density.value : this.density,
      gravity: data.gravity.present ? data.gravity.value : this.gravity,
      discoveredBy: data.discoveredBy.present
          ? data.discoveredBy.value
          : this.discoveredBy,
      discoveryDate: data.discoveryDate.present
          ? data.discoveryDate.value
          : this.discoveryDate,
      image: data.image.present ? data.image.value : this.image,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Planet(')
          ..write('id: $id, ')
          ..write('englishName: $englishName, ')
          ..write('density: $density, ')
          ..write('gravity: $gravity, ')
          ..write('discoveredBy: $discoveredBy, ')
          ..write('discoveryDate: $discoveryDate, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    englishName,
    density,
    gravity,
    discoveredBy,
    discoveryDate,
    image,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Planet &&
          other.id == this.id &&
          other.englishName == this.englishName &&
          other.density == this.density &&
          other.gravity == this.gravity &&
          other.discoveredBy == this.discoveredBy &&
          other.discoveryDate == this.discoveryDate &&
          other.image == this.image);
}

class PlanetsCompanion extends UpdateCompanion<Planet> {
  final Value<String> id;
  final Value<String?> englishName;
  final Value<double?> density;
  final Value<double?> gravity;
  final Value<String?> discoveredBy;
  final Value<String?> discoveryDate;
  final Value<String?> image;
  final Value<int> rowid;
  const PlanetsCompanion({
    this.id = const Value.absent(),
    this.englishName = const Value.absent(),
    this.density = const Value.absent(),
    this.gravity = const Value.absent(),
    this.discoveredBy = const Value.absent(),
    this.discoveryDate = const Value.absent(),
    this.image = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PlanetsCompanion.insert({
    required String id,
    this.englishName = const Value.absent(),
    this.density = const Value.absent(),
    this.gravity = const Value.absent(),
    this.discoveredBy = const Value.absent(),
    this.discoveryDate = const Value.absent(),
    this.image = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Planet> custom({
    Expression<String>? id,
    Expression<String>? englishName,
    Expression<double>? density,
    Expression<double>? gravity,
    Expression<String>? discoveredBy,
    Expression<String>? discoveryDate,
    Expression<String>? image,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (englishName != null) 'english_name': englishName,
      if (density != null) 'density': density,
      if (gravity != null) 'gravity': gravity,
      if (discoveredBy != null) 'discovered_by': discoveredBy,
      if (discoveryDate != null) 'discovery_date': discoveryDate,
      if (image != null) 'image': image,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PlanetsCompanion copyWith({
    Value<String>? id,
    Value<String?>? englishName,
    Value<double?>? density,
    Value<double?>? gravity,
    Value<String?>? discoveredBy,
    Value<String?>? discoveryDate,
    Value<String?>? image,
    Value<int>? rowid,
  }) {
    return PlanetsCompanion(
      id: id ?? this.id,
      englishName: englishName ?? this.englishName,
      density: density ?? this.density,
      gravity: gravity ?? this.gravity,
      discoveredBy: discoveredBy ?? this.discoveredBy,
      discoveryDate: discoveryDate ?? this.discoveryDate,
      image: image ?? this.image,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (englishName.present) {
      map['english_name'] = Variable<String>(englishName.value);
    }
    if (density.present) {
      map['density'] = Variable<double>(density.value);
    }
    if (gravity.present) {
      map['gravity'] = Variable<double>(gravity.value);
    }
    if (discoveredBy.present) {
      map['discovered_by'] = Variable<String>(discoveredBy.value);
    }
    if (discoveryDate.present) {
      map['discovery_date'] = Variable<String>(discoveryDate.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlanetsCompanion(')
          ..write('id: $id, ')
          ..write('englishName: $englishName, ')
          ..write('density: $density, ')
          ..write('gravity: $gravity, ')
          ..write('discoveredBy: $discoveredBy, ')
          ..write('discoveryDate: $discoveryDate, ')
          ..write('image: $image, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $PlanetsTable planets = $PlanetsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [planets];
}

typedef $$PlanetsTableCreateCompanionBuilder =
    PlanetsCompanion Function({
      required String id,
      Value<String?> englishName,
      Value<double?> density,
      Value<double?> gravity,
      Value<String?> discoveredBy,
      Value<String?> discoveryDate,
      Value<String?> image,
      Value<int> rowid,
    });
typedef $$PlanetsTableUpdateCompanionBuilder =
    PlanetsCompanion Function({
      Value<String> id,
      Value<String?> englishName,
      Value<double?> density,
      Value<double?> gravity,
      Value<String?> discoveredBy,
      Value<String?> discoveryDate,
      Value<String?> image,
      Value<int> rowid,
    });

class $$PlanetsTableFilterComposer extends Composer<_$Database, $PlanetsTable> {
  $$PlanetsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get englishName => $composableBuilder(
    column: $table.englishName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get density => $composableBuilder(
    column: $table.density,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get gravity => $composableBuilder(
    column: $table.gravity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get discoveredBy => $composableBuilder(
    column: $table.discoveredBy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get discoveryDate => $composableBuilder(
    column: $table.discoveryDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PlanetsTableOrderingComposer
    extends Composer<_$Database, $PlanetsTable> {
  $$PlanetsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get englishName => $composableBuilder(
    column: $table.englishName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get density => $composableBuilder(
    column: $table.density,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get gravity => $composableBuilder(
    column: $table.gravity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get discoveredBy => $composableBuilder(
    column: $table.discoveredBy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get discoveryDate => $composableBuilder(
    column: $table.discoveryDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PlanetsTableAnnotationComposer
    extends Composer<_$Database, $PlanetsTable> {
  $$PlanetsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get englishName => $composableBuilder(
    column: $table.englishName,
    builder: (column) => column,
  );

  GeneratedColumn<double> get density =>
      $composableBuilder(column: $table.density, builder: (column) => column);

  GeneratedColumn<double> get gravity =>
      $composableBuilder(column: $table.gravity, builder: (column) => column);

  GeneratedColumn<String> get discoveredBy => $composableBuilder(
    column: $table.discoveredBy,
    builder: (column) => column,
  );

  GeneratedColumn<String> get discoveryDate => $composableBuilder(
    column: $table.discoveryDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);
}

class $$PlanetsTableTableManager
    extends
        RootTableManager<
          _$Database,
          $PlanetsTable,
          Planet,
          $$PlanetsTableFilterComposer,
          $$PlanetsTableOrderingComposer,
          $$PlanetsTableAnnotationComposer,
          $$PlanetsTableCreateCompanionBuilder,
          $$PlanetsTableUpdateCompanionBuilder,
          (Planet, BaseReferences<_$Database, $PlanetsTable, Planet>),
          Planet,
          PrefetchHooks Function()
        > {
  $$PlanetsTableTableManager(_$Database db, $PlanetsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PlanetsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PlanetsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PlanetsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String?> englishName = const Value.absent(),
                Value<double?> density = const Value.absent(),
                Value<double?> gravity = const Value.absent(),
                Value<String?> discoveredBy = const Value.absent(),
                Value<String?> discoveryDate = const Value.absent(),
                Value<String?> image = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PlanetsCompanion(
                id: id,
                englishName: englishName,
                density: density,
                gravity: gravity,
                discoveredBy: discoveredBy,
                discoveryDate: discoveryDate,
                image: image,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<String?> englishName = const Value.absent(),
                Value<double?> density = const Value.absent(),
                Value<double?> gravity = const Value.absent(),
                Value<String?> discoveredBy = const Value.absent(),
                Value<String?> discoveryDate = const Value.absent(),
                Value<String?> image = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PlanetsCompanion.insert(
                id: id,
                englishName: englishName,
                density: density,
                gravity: gravity,
                discoveredBy: discoveredBy,
                discoveryDate: discoveryDate,
                image: image,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PlanetsTableProcessedTableManager =
    ProcessedTableManager<
      _$Database,
      $PlanetsTable,
      Planet,
      $$PlanetsTableFilterComposer,
      $$PlanetsTableOrderingComposer,
      $$PlanetsTableAnnotationComposer,
      $$PlanetsTableCreateCompanionBuilder,
      $$PlanetsTableUpdateCompanionBuilder,
      (Planet, BaseReferences<_$Database, $PlanetsTable, Planet>),
      Planet,
      PrefetchHooks Function()
    >;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$PlanetsTableTableManager get planets =>
      $$PlanetsTableTableManager(_db, _db.planets);
}
