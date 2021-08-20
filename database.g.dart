// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Entry extends DataClass implements Insertable<Entry> {
  final int systolic;
  final int diastolic;
  final int pulse;
  final DateTime timestamp;
  Entry(
      {required this.systolic,
      required this.diastolic,
      required this.pulse,
      required this.timestamp});
  factory Entry.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Entry(
      systolic: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}systolic'])!,
      diastolic: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}diastolic'])!,
      pulse: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pulse'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
    );
  }

  get id => null;
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['systolic'] = Variable<int>(systolic);
    map['diastolic'] = Variable<int>(diastolic);
    map['pulse'] = Variable<int>(pulse);
    map['timestamp'] = Variable<DateTime>(timestamp);
    return map;
  }

  EntriesCompanion toCompanion(bool nullToAbsent) {
    return EntriesCompanion(
      systolic: Value(systolic),
      diastolic: Value(diastolic),
      pulse: Value(pulse),
      timestamp: Value(timestamp),
    );
  }

  factory Entry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Entry(
      systolic: serializer.fromJson<int>(json['systolic']),
      diastolic: serializer.fromJson<int>(json['diastolic']),
      pulse: serializer.fromJson<int>(json['pulse']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'systolic': serializer.toJson<int>(systolic),
      'diastolic': serializer.toJson<int>(diastolic),
      'pulse': serializer.toJson<int>(pulse),
      'timestamp': serializer.toJson<DateTime>(timestamp),
    };
  }

  Entry copyWith(
          {int? systolic, int? diastolic, int? pulse, DateTime? timestamp}) =>
      Entry(
        systolic: systolic ?? this.systolic,
        diastolic: diastolic ?? this.diastolic,
        pulse: pulse ?? this.pulse,
        timestamp: timestamp ?? this.timestamp,
      );
  @override
  String toString() {
    return (StringBuffer('Entry(')
          ..write('systolic: $systolic, ')
          ..write('diastolic: $diastolic, ')
          ..write('pulse: $pulse, ')
          ..write('timestamp: $timestamp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(systolic.hashCode,
      $mrjc(diastolic.hashCode, $mrjc(pulse.hashCode, timestamp.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Entry &&
          other.systolic == this.systolic &&
          other.diastolic == this.diastolic &&
          other.pulse == this.pulse &&
          other.timestamp == this.timestamp);
}

class EntriesCompanion extends UpdateCompanion<Entry> {
  final Value<int> systolic;
  final Value<int> diastolic;
  final Value<int> pulse;
  final Value<DateTime> timestamp;
  const EntriesCompanion({
    this.systolic = const Value.absent(),
    this.diastolic = const Value.absent(),
    this.pulse = const Value.absent(),
    this.timestamp = const Value.absent(),
  });
  EntriesCompanion.insert({
    required int systolic,
    required int diastolic,
    required int pulse,
    required DateTime timestamp,
  })  : systolic = Value(systolic),
        diastolic = Value(diastolic),
        pulse = Value(pulse),
        timestamp = Value(timestamp);
  static Insertable<Entry> custom({
    Expression<int>? systolic,
    Expression<int>? diastolic,
    Expression<int>? pulse,
    Expression<DateTime>? timestamp,
  }) {
    return RawValuesInsertable({
      if (systolic != null) 'systolic': systolic,
      if (diastolic != null) 'diastolic': diastolic,
      if (pulse != null) 'pulse': pulse,
      if (timestamp != null) 'timestamp': timestamp,
    });
  }

  EntriesCompanion copyWith(
      {Value<int>? systolic,
      Value<int>? diastolic,
      Value<int>? pulse,
      Value<DateTime>? timestamp}) {
    return EntriesCompanion(
      systolic: systolic ?? this.systolic,
      diastolic: diastolic ?? this.diastolic,
      pulse: pulse ?? this.pulse,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (systolic.present) {
      map['systolic'] = Variable<int>(systolic.value);
    }
    if (diastolic.present) {
      map['diastolic'] = Variable<int>(diastolic.value);
    }
    if (pulse.present) {
      map['pulse'] = Variable<int>(pulse.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EntriesCompanion(')
          ..write('systolic: $systolic, ')
          ..write('diastolic: $diastolic, ')
          ..write('pulse: $pulse, ')
          ..write('timestamp: $timestamp')
          ..write(')'))
        .toString();
  }
}

class $EntriesTable extends Entries with TableInfo<$EntriesTable, Entry> {
  final GeneratedDatabase _db;
  final String? _alias;
  $EntriesTable(this._db, [this._alias]);
  final VerificationMeta _systolicMeta = const VerificationMeta('systolic');
  late final GeneratedColumn<int?> systolic = GeneratedColumn<int?>(
      'systolic', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _diastolicMeta = const VerificationMeta('diastolic');
  late final GeneratedColumn<int?> diastolic = GeneratedColumn<int?>(
      'diastolic', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _pulseMeta = const VerificationMeta('pulse');
  late final GeneratedColumn<int?> pulse = GeneratedColumn<int?>(
      'pulse', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [systolic, diastolic, pulse, timestamp];
  @override
  String get aliasedName => _alias ?? 'entries';
  @override
  String get actualTableName => 'entries';
  @override
  VerificationContext validateIntegrity(Insertable<Entry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('systolic')) {
      context.handle(_systolicMeta,
          systolic.isAcceptableOrUnknown(data['systolic']!, _systolicMeta));
    } else if (isInserting) {
      context.missing(_systolicMeta);
    }
    if (data.containsKey('diastolic')) {
      context.handle(_diastolicMeta,
          diastolic.isAcceptableOrUnknown(data['diastolic']!, _diastolicMeta));
    } else if (isInserting) {
      context.missing(_diastolicMeta);
    }
    if (data.containsKey('pulse')) {
      context.handle(
          _pulseMeta, pulse.isAcceptableOrUnknown(data['pulse']!, _pulseMeta));
    } else if (isInserting) {
      context.missing(_pulseMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Entry map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Entry.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $EntriesTable createAlias(String alias) {
    return $EntriesTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $EntriesTable entries = $EntriesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [entries];
}
