import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track/data/models/projects/project_list.dart';
import 'package:task_track/presentation/home/view_models/project_vm.dart';

import 'package:task_track/data/services/project_service/project_service.dart';

part 'project_list_cubit.freezed.dart';
part 'project_list_state.dart';

class ProjectListCubit extends Cubit<ProjectistState> {
  ProjectListCubit({required this.projectService})
      : super(
          const ProjectistState(
            projectsVM: ProjectList(projectList: []),
            status: ProjectListStatus.initial(),
          ),
        );

  final ProjectService projectService;

  Future<void> fetchAllTasks() async {
    try {
      final projectList = projectService.getAllProjects();
      // if (projectList.) {
      //   emit(
      //     state.copyWith(
      //       projectsVM: const ProjectList(projectList: []),
      //       status: const ProjectListStatus.empty(),
      //     ),
      //   );
      // }

      emit(
        state.copyWith(
          projectsVM: const ProjectList(projectList: []),
          status: const ProjectListStatus.empty(),
        ),
      );
    } catch (e) {}
  }
}
