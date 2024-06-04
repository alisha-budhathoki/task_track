import 'package:realm/realm.dart';
import 'package:task_track/data/models/local_models/tasks/task_model.dart';

abstract class TaskService {
  Future<void> createTask({
    required String title,
    required String definition,
    String status = 'Not Started',
    DateTime? startTime,
    DateTime? endTime,
    int duration = 0,
  });

  Future<Task?> getLastTask();

  Future<void> clearAllTasks();

  Future<List<Task>> getAllTasks();

  Future<Task?> getTaskById(String id);

  Future<void> updateTask(Task task);

  Future<void> deleteTask(Task task);

  Future<void> startTask(String taskId);

  Future<void> completeTask(String taskId);

  Future<List<Task>> getTasksByStatus(String status);

  Stream<RealmResultsChanges<Task>> watchAllTasks();

  Stream<Task?> watchTask(String taskId);

  void dispose();
}
