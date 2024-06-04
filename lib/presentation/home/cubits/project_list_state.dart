part of 'project_list_cubit.dart';

@freezed
class ProjectistState with _$ProjectistState {
  const factory ProjectistState({
    required List<ProjectCubit> projects,
    required ProjectListStatus status,
  }) = _ProjectistState;
}

@freezed
class ProjectListStatus with _$ProjectListStatus {
  const factory ProjectListStatus.empty() = Empty;
  const factory ProjectListStatus.initial() = Initial;
  const factory ProjectListStatus.loading() = Loading;
  const factory ProjectListStatus.loaded({
    required List<ProjectCubit> projects,
  }) = Loaded;
  const factory ProjectListStatus.error() = Error;
}
