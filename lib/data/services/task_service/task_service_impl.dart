import 'package:realm/realm.dart';
import 'package:task_track/data/models/local_models/tasks/task_model.dart';
import 'package:task_track/data/sources/local_source/local_source_impl.dart';

class TaskServiceImpl {
  final LocalSourceImpl<Task> _localSource;
  final Realm _realm;

  TaskServiceImpl(Realm realm)
      : _realm = realm,
        _localSource = LocalSourceImpl<Task>(realm);

  Future<void> createTask({
    required String title,
    required String definition,
    String status = 'Not Started',
    DateTime? startTime,
    DateTime? endTime,
    int duration = 0,
  }) async {
    final task = Task(
      title,
      definition,
      status,
      startTime: startTime,
      endTime: endTime,
      duration: duration,
    );
    await _localSource.saveData(task);
  }

  Future<Task?> getLastTask() async {
    return _localSource.getData();
  }

  Future<void> clearAllTasks() async {
    await _localSource.clearData();
  }

  Future<List<Task>> getAllTasks() async {
    return _realm.all<Task>().toList();
  }

  Future<Task?> getTaskById(String id) async {
    try {
      final objectId = ObjectId.fromHexString(id);
      return _realm.find<Task>(objectId);
    } catch (e) {
      print('Invalid task ID: $id');
      return null;
    }
  }

  Future<void> updateTask(Task task) async {
    await _realm.write(() {
      _realm.add(task, update: true);
    });
  }

  Future<void> deleteTask(Task task) async {
    await _realm.write(() {
      _realm.delete(task);
    });
  }

  Future<void> startTask(String taskId) async {
    final task = await getTaskById(taskId);
    if (task != null) {
      await _realm.write(() {
        task.status = 'In Progress';
        task.startTime = DateTime.now();
      });
    }
  }

  Future<void> completeTask(String taskId) async {
    final task = await getTaskById(taskId);
    if (task != null) {
      await _realm.write(() {
        task.status = 'Completed';
        task.endTime = DateTime.now();
        if (task.startTime != null) {
          task.duration = task.endTime!.difference(task.startTime!).inMinutes;
        }
      });
    }
  }

  Future<List<Task>> getTasksByStatus(String status) async {
    return _realm.query<Task>('status == \$0', [status]).toList();
  }

  Stream<RealmResultsChanges<Task>> watchAllTasks() {
    return _realm.all<Task>().changes;
  }

  Stream<Task?> watchTask(String taskId) {
    try {
      final objectId = ObjectId.fromHexString(taskId);
      final task = _realm.find<Task>(objectId);
      return task != null
          ? task.changes.map((event) => event.object)
          : Stream.empty();
    } catch (e) {
      print('Invalid task ID: $taskId');
      return Stream.empty();
    }
  }

  void dispose() {
    _realm.close();
  }
}
