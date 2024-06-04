part of 'project_cubit.dart';

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState({
    required ProjectVM projectVM,
    @Default(ProjectAddStatus.initial()) ProjectAddStatus projectAddStatus,
    @Default(ProjectUpdateStatus.initial())
    ProjectUpdateStatus projectUpdateStatus,
    @Default(ProjectLoadStatus.initial()) ProjectLoadStatus projectLoadStatus,
  }) = _ProjectState;
  const ProjectState._();
}

@freezed
class ProjectAddStatus with _$ProjectAddStatus {
  const factory ProjectAddStatus.initial() = ProjectInitial;
  const factory ProjectAddStatus.adding() = ProjectAdding;
  const factory ProjectAddStatus.added() = ProjectAdded;
  const factory ProjectAddStatus.error(String message) = ProjectAddError;
}

@freezed
class ProjectUpdateStatus with _$ProjectUpdateStatus {
  const factory ProjectUpdateStatus.initial() = ProjectUpdateInitial;
  const factory ProjectUpdateStatus.updating() = ProjectUpdating;
  const factory ProjectUpdateStatus.updated() = ProjectUpdated;
  const factory ProjectUpdateStatus.error(String message) = ProjectUpdateError;
}

@freezed
class ProjectLoadStatus with _$ProjectLoadStatus {
  const factory ProjectLoadStatus.initial() = ProjectLoadInitial;
  const factory ProjectLoadStatus.loading() = ProjectLoading;
  const factory ProjectLoadStatus.loaded() = ProjectLoaded;
  const factory ProjectLoadStatus.error(String message) = ProjectLoadError;
}
