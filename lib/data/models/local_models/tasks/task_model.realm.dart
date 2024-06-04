// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Task extends _Task with RealmEntity, RealmObjectBase, RealmObject {
  Task(
    String title,
    String definition,
    String status, {
    DateTime? startTime,
    DateTime? endTime,
    int? duration,
  }) {
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'definition', definition);
    RealmObjectBase.set(this, 'status', status);
    RealmObjectBase.set(this, 'startTime', startTime);
    RealmObjectBase.set(this, 'endTime', endTime);
    RealmObjectBase.set(this, 'duration', duration);
  }

  Task._();

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  String get definition =>
      RealmObjectBase.get<String>(this, 'definition') as String;
  @override
  set definition(String value) =>
      RealmObjectBase.set(this, 'definition', value);

  @override
  String get status => RealmObjectBase.get<String>(this, 'status') as String;
  @override
  set status(String value) => RealmObjectBase.set(this, 'status', value);

  @override
  DateTime? get startTime =>
      RealmObjectBase.get<DateTime>(this, 'startTime') as DateTime?;
  @override
  set startTime(DateTime? value) =>
      RealmObjectBase.set(this, 'startTime', value);

  @override
  DateTime? get endTime =>
      RealmObjectBase.get<DateTime>(this, 'endTime') as DateTime?;
  @override
  set endTime(DateTime? value) => RealmObjectBase.set(this, 'endTime', value);

  @override
  int? get duration => RealmObjectBase.get<int>(this, 'duration') as int?;
  @override
  set duration(int? value) => RealmObjectBase.set(this, 'duration', value);

  @override
  Stream<RealmObjectChanges<Task>> get changes =>
      RealmObjectBase.getChanges<Task>(this);

  @override
  Stream<RealmObjectChanges<Task>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Task>(this, keyPaths);

  @override
  Task freeze() => RealmObjectBase.freezeObject<Task>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'title': title.toEJson(),
      'definition': definition.toEJson(),
      'status': status.toEJson(),
      'startTime': startTime.toEJson(),
      'endTime': endTime.toEJson(),
      'duration': duration.toEJson(),
    };
  }

  static EJsonValue _toEJson(Task value) => value.toEJson();
  static Task _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'title': EJsonValue title,
        'definition': EJsonValue definition,
        'status': EJsonValue status,
        'startTime': EJsonValue startTime,
        'endTime': EJsonValue endTime,
        'duration': EJsonValue duration,
      } =>
        Task(
          fromEJson(title),
          fromEJson(definition),
          fromEJson(status),
          startTime: fromEJson(startTime),
          endTime: fromEJson(endTime),
          duration: fromEJson(duration),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Task._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Task, 'Task', [
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('definition', RealmPropertyType.string),
      SchemaProperty('status', RealmPropertyType.string),
      SchemaProperty('startTime', RealmPropertyType.timestamp, optional: true),
      SchemaProperty('endTime', RealmPropertyType.timestamp, optional: true),
      SchemaProperty('duration', RealmPropertyType.int, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
