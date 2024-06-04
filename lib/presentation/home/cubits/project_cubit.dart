import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_track/core/core_index.dart';
import 'package:task_track/data/services/project_service/project_service.dart';
import 'package:task_track/presentation/home/view_models/project_vm.dart';

part 'project_cubit.freezed.dart';
part 'project_state.dart';

class ProjectCubit extends Cubit<ProjectState> {
  late ProjectVM initialProjecttVM;

  final ProjectService projectService;

  ProjectCubit({
    required this.projectService,
    ProjectVM? projectVM,
  }) : super(ProjectState(projectVM: projectVM ?? ProjectVM.empty())) {
    initialProjecttVM = projectVM ?? ProjectVM.empty();
  }

  Future<void> addProject({
    required String projectName,
  }) async {
    try {
      emit(state.copyWith(projectAddStatus: const ProjectAddStatus.adding()));

      await projectService.createNewProject(projectName: projectName);

      emit(state.copyWith(projectAddStatus: const ProjectAddStatus.added()));
    } on ApiException catch (e) {
      emit(
        state.copyWith(
          projectAddStatus: ProjectAddStatus.error(e.toString()),
        ),
      );
    }
  }
}
