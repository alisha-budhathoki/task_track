import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track/data/models/projects/project_response.dart';
import 'package:task_track/presentation/home/cubits/project_cubit.dart';
import 'package:task_track/presentation/home/view_models/project_vm.dart';

import 'package:task_track/data/services/project_service/project_service.dart';

part 'project_list_cubit.freezed.dart';
part 'project_list_state.dart';

class ProjectListCubit extends Cubit<ProjectistState> {
  ProjectListCubit({required this.projectService})
      : super(
          const ProjectistState(
            projects: [],
            status: ProjectListStatus.initial(),
          ),
        );

  final ProjectService projectService;

  Future<void> fetchAllTasks() async {
    try {
      final projectList = await projectService.getAllProjects();
      final projectVMList =
          projectList.data.map(_mapProjectResponseToVM).toList();
      emit(
        state.copyWith(
          projects: projectVMList,
          status: projectVMList.isEmpty
              ? const ProjectListStatus.empty()
              : ProjectListStatus.loaded(projects: projectVMList),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: const ProjectListStatus.error(),
        ),
      );
    }
  }

  ProjectCubit _mapProjectResponseToVM(ProjectResponse project) {
    return ProjectCubit(
      projectService: projectService,
      projectVM: ProjectVM(
        id: project.id,
        order: project.order,
        color: project.color,
        name: project.name,
        commentCount: project.commentCount,
        isShared: project.isShared,
        isFavorite: project.isFavorite,
        isInboxProject: project.isInboxProject,
        isTeamInbox: project.isTeamInbox,
        url: project.url,
        viewStyle: project.viewStyle,
      ),
    );
  }
}
