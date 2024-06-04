part of 'task_cubit.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;
  const factory TaskState.empty() = _Empty;
  const factory TaskState.loading() = _Loading;
  const factory TaskState.success(List<Task> task) = _Success;
  const factory TaskState.error(String message) = _Error;
}
