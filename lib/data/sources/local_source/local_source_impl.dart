import 'package:realm/realm.dart';
import 'package:task_track/data/sources/local_source/local_source.dart';

class LocalSourceImpl<T extends RealmObject> implements LocalSource<T> {
  final Realm _realm;
  LocalSourceImpl(this._realm);

  @override
  Future<void> saveData(T object) async {
    await _realm.write(() {
      _realm.add(object);
    });
  }

  @override
  Future<T?> getData() async {
    final results = _realm.all<T>();
    return results.isNotEmpty ? results.first : null;
  }

  @override
  Future<void> clearData() async {
    _realm.write(() {
      _realm.deleteAll();
    });
  }
}
