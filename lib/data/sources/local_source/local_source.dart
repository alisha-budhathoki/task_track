import 'package:realm/realm.dart';

abstract class LocalSource<T extends RealmObject> {
  Future<void> saveData(T object);
  Future<T?> getData();
  Future<void> clearData();
}
