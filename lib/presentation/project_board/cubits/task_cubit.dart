import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_track/data/models/local_models/tasks/task_model.dart';
import 'package:task_track/data/services/task_service/task_service_impl.dart';

part 'task_cubit.freezed.dart';
part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  final TaskServiceImpl _taskService;

  TaskCubit(this._taskService) : super(const TaskState.initial());

  Future<void> createTask({
    required String title,
    required String definition,
    String status = 'Not Started',
    DateTime? startTime,
    DateTime? endTime,
    int duration = 0,
  }) async {
    try {
      emit(const TaskState.loading());
      await _taskService.createTask(
        title: title,
        definition: definition,
        status: status,
        startTime: startTime,
        endTime: endTime,
        duration: duration,
      );
      final newTask = await _taskService.getLastTask();
      if (newTask != null) {
        emit(TaskState.success([newTask]));
      } else {
        emit(const TaskState.error('Failed to retrieve the created task'));
      }
    } catch (e) {
      emit(TaskState.error('Error creating task: $e'));
    }
  }

  Future<void> getAllTasks() async {
    try {
      emit(const TaskState.loading());
      final tasks = await _taskService.getAllTasks();
      if (tasks.isNotEmpty) {
        emit(
          TaskState.success(
            tasks,
          ),
        );
      } else {
        emit(const TaskState.error('No tasks found'));
      }
    } catch (e) {
      emit(TaskState.error('Error fetching tasks: $e'));
    }
  }

  Future<void> startTask(String taskId) async {
    try {
      emit(const TaskState.loading());
      await _taskService.startTask(taskId);
      final updatedTask = await _taskService.getTaskById(taskId);
      if (updatedTask != null) {
        // emit(TaskState.success(updatedTask));
      } else {
        emit(const TaskState.error('Task not found after starting'));
      }
    } catch (e) {
      emit(TaskState.error('Error starting task: $e'));
    }
  }

  Future<void> completeTask(String taskId) async {
    try {
      emit(const TaskState.loading());
      await _taskService.completeTask(taskId);
      final updatedTask = await _taskService.getTaskById(taskId);
      if (updatedTask != null) {
        emit(TaskState.success([updatedTask]));
      } else {
        emit(const TaskState.error('Task not found after completion'));
      }
    } catch (e) {
      emit(TaskState.error('Error completing task: $e'));
    }
  }

  Future<void> updateTask(Task task) async {
    try {
      emit(const TaskState.loading());
      await _taskService.updateTask(task);
      emit(TaskState.success([task]));
    } catch (e) {
      emit(TaskState.error('Error updating task: $e'));
    }
  }

  Future<void> deleteTask(Task task) async {
    try {
      emit(const TaskState.loading());
      await _taskService.deleteTask(task);
      emit(const TaskState.initial());
    } catch (e) {
      emit(TaskState.error('Error deleting task: $e'));
    }
  }
}
